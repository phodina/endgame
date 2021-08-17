(define-module (system-config system base-system)
  #:use-module (guix derivations)
  #:use-module (guix store)
  #:use-module (gnu)
  #:use-module (srfi srfi-1)
  #:use-module (gnu system nss)
  #:use-module (gnu services admin)
  #:use-module (gnu services pm)
  #:use-module (gnu services dns)
  #:use-module (gnu services cups)
  #:use-module (gnu services mcron)
  #:use-module (gnu services desktop)
  #:use-module (gnu services docker)
  #:use-module (gnu services networking)
  #:use-module (gnu services virtualization)
  #:use-module (gnu services linux)
  #:use-module (gnu services vpn)
  #:use-module (gnu services sound)
  #:use-module (gnu services xorg)
  #:use-module (gnu packages android)
  #:use-module (gnu packages wm)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages cups)
  #:use-module (gnu packages vpn)
  #:use-module (gnu packages pdf)
  #:use-module (gnu packages chromium)
  #:use-module (gnu packages gnupg)
  #:use-module (gnu packages password-utils)
  #:use-module (gnu packages vim)
  #:use-module (gnu packages android)
  #:use-module (gnu packages tmux)
  #:use-module (gnu packages video)
  #:use-module (gnu packages suckless)
  #:use-module (gnu packages chromium)
  #:use-module (gnu packages terminals)
  #:use-module (gnu packages file-systems)
  #:use-module (gnu packages libreoffice)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages mtools)
  #:use-module (gnu packages linux)
  #:use-module (endgame packages librealsense)
  #:use-module (endgame utils)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages video)
  #:use-module (gnu packages pdf)
  #:use-module (gnu packages libreoffice)
  #:use-module (gnu packages gnuzilla)
  #:use-module (gnu packages pulseaudio)
  #:use-module (gnu packages web-browsers)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages version-control)
  #:use-module (guix derivations)
  #:use-module (guix gexp)
  #:use-module (guix store)
  #:use-module (endgame packages librealsense)
  #:use-module (endgame packages i3lock-blur)
  #:use-module (gnu services security-token)
  #:use-module (gnu packages package-management)
  #:use-module (nongnu packages linux)
  #:use-module (nongnu system linux-initrd)
  #:export (base-operating-system)
  #:export (wire-vpn))

(use-service-modules virtualization security-token)
(use-service-modules nix)
(use-service-modules desktop xorg)
(use-package-modules certs)
(use-package-modules shells)

;; https://github.com/Millak/guix-config/tree/master/config

(define %phodina-ssh-key
  (plain-file "id_rsa.pub"
              "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDg/3m4MUAmsXyDrFcCtAMmg90NZwRIKMhhlk59V+CxdQy3IrKi5Xp3bqXr1hm0Z7nAFdBKEenK5nXSeuwzf3On43QAZoRbsm0/8J/5BZ+4nfpQ0iCZaSsbDR1eb6Qvcxnth5EeGJDNEaMDDCriM0v6lnDHCzJpIpMKC1cZd+bE4nEBhKQPxKs+/1DFV76GuTG0IQqHrq2HTQmm03zcuH/tg7if5tMWbJW1FXrZNyvtHl8VwdpRo4n8bLiIK8x8mJvnm6USCxmbI/M7nBvX5jwEJ1BOSzBRs+r7LRZ4bGneaoWBSyKgTMFAB9xGp1q0BUx26k7Gh2Bocl1A14oJIjnQ3QRmz+ZMIjtfObLdLaC5WoP6N++ienDOLH4Uxc8AmaJaBso9jseeaieGh3+NnfpqZ5QCN5J024zal0YCkvdebib1Xpy5MTnDaU9TRIQmLyNfyzyu9oD7GmW2HRbCBKFUWFUw/pbHtzSTJmZoj2+uEAVXqXu2adPD5jG3SXWAdELEKOtFK/PsgqLUPR6Gg/WCBfdKdER4XYgDyo+23TZ7LnbkToQY1xh+aQ9eNcHd/ArM3VBUl7ONU2sn36qS+1ELCr65YDVKDkUQm8S+OR098/RqvnDHnj3MhRgr4WteId8f3CHckpj8JA+UTc3a5r95HYDhglknk+JvYR+8DiqVKw== cardno:000611077967"))

;; Allow members of the "video" group to change the screen brightness.
(define %backlight-udev-rule
  (udev-rule
   "90-backlight.rules"
   (string-append "ACTION==\"add\", SUBSYSTEM==\"backlight\", "
                  "RUN+=\"/run/current-system/profile/bin/chgrp video /sys/class/backlight/%k/brightness\""
                  "\n"
                  "ACTION==\"add\", SUBSYSTEM==\"backlight\", "
                  "RUN+=\"/run/current-system/profile/bin/chmod g+w /sys/class/backlight/%k/brightness\"")))

(define %librealsense-path      
 (let* ((librealsense-drv (with-store store
                    (run-with-store store (lower-object librealsense))))
       (librealsense-store-path (derivation->output-path librealsense-drv)))
   librealsense-store-path))

(define %my-desktop-services
  (modify-services %desktop-services
    (elogind-service-type config =>
      (elogind-configuration (inherit config)
       (handle-lid-switch-external-power 'suspend)))
    (udev-service-type config =>
      (udev-configuration (inherit config)
       (rules (append (list librealsense
        %backlight-udev-rule)
        (udev-configuration-rules config)))))
    (network-manager-service-type config =>
      (network-manager-configuration (inherit config)
       (dns "dnsmasq")
       (vpn-plugins
        (list
         network-manager-openconnect))))))

(define %xorg-intel-screen-tearing-fix
  "Section \"Device\"
      Identifier  \"Intel Graphics\"
      Driver      \"intel\"
      Option      \"AccelMethod\"  \"sna\"
   Option         \"TearFree\" \"true\"
   EndSection")

(define %xorg-enable-dri3
  "Section \"Device\"
      Identifier  \"Intel Graphics\"
      Driver      \"intel\"
      Option      \"DRI\"  \"3\"
   EndSection")

(define %xorg-libinput-config
  "Section \"InputClass\"
  Identifier \"Touchpads\"
  Driver \"libinput\"
  MatchDevicePath \"/dev/input/event*\"
  MatchIsTouchpad \"on\"

  Option \"Tapping\" \"on\"
  Option \"TappingDrag\" \"on\"
  Option \"DisableWhileTyping\" \"on\"
  Option \"MiddleEmulation\" \"on\"
  Option \"ScrollMethod\" \"twofinger\"
EndSection
Section \"InputClass\"
  Identifier \"Keyboards\"
  Driver \"libinput\"
  MatchDevicePath \"/dev/input/event*\"
  MatchIsKeyboard \"on\"
EndSection
")

(define %endgame-directory "/home/cylon2p0/endgame/")

(define %garbage-collector-job-system
  ;; Collect garbage 5 minutes after midnight every day.
  ;; The job's action is a shell command.
  #~(job "5 0 * * *"            ;Vixie cron syntax
         "guix system delete-generations 1w"))

(define-public base-operating-system
  (operating-system
    (timezone "Europe/Prague")
    (locale "en_US.utf8")
    (host-name "rocinante")
    ;; Use non-free Linux and firmware
    (kernel linux)
    ; NOTE: To get the offset run `sudo filefrag -v /swap/swapfile`
    ;(kernel-arguments '("mem_sleep_default=deep" "resume=/swap/swapfile" "resume_offset=xxxx" "quiet"))
    (firmware (list linux-firmware))
    (initrd microcode-initrd)

    ;; Choose US and CZ qwerty keyboard layout. Switch between"
    ;; layout using Win + Space keys. Swap Ctrl and Tab
    ;(keyboard-layout (keyboard-layout "us,cz" "qwerty,"
    ;      #:options '("grp:win_space_toggle" "ctrl:nocaps")))

    ;; Use the UEFI variant of GRUB with the EFI System
    ;; Partition mounted on /boot/efi
    (bootloader (bootloader-configuration
                 (bootloader grub-efi-bootloader)
                 (target "/boot/efi")))
                 ;(keyboard-layout keyboard-layout)))

    ;; Add a stub entry for filesystem.
    (file-systems (cons*
                   (file-system
                     (mount-point "/tmp")
                     (device "none")
                     (type "tmpfs")
                     (check? #f))
                   %base-file-systems))

    (users
      (cons
        (user-account
          (name "cylon2p0")
          (group "users")
          (home-directory "/home/cylon2p0")
          (supplementary-groups
           '("wheel"     ;; sudo
             "netdev"    ;; network devices
             "kvm"
             "tty"
             "input"
             "adbusers"   ;; Android tools
             "docker"
             "realtime"  ;; Enable realtime scheduling
             "lp"        ;; control bluetooth devices
             "audio"     ;; control audio devices
             "video")))  ;; control video devices
        %base-user-accounts))

    ;; Add the 'realtime' group
    (groups
      (cons
        (user-group
          (system? #t)
          (name "realtime"))
          %base-groups))

    ;; Install bare-minimum system packages
    (packages
      (append
        (list
          git
          tig
          openconnect
          wireguard-tools
          librealsense
          ntfs-3g
          exfat-utils
          fuse-exfat
          vim
          tmux
          emacs
          alacritty
          bluez
          bluez-alsa
          pulseaudio
          gnupg
          password-store
          pass-otp
          tlp
          xf86-input-libinput
          i3-gaps         ;; i3 desktop
          i3lock
          i3lock-blur
          i3status
          light
          dmenu
          ungoogled-chromium
          redshift
          libreoffice
          mpv
          zathura
          nss-certs     ;; for HTTPS access
          gvfs)         ;; for user mounts
        %base-packages))

    ;; Use the "desktop" services, which include the X11 log-in service,
    ;; networking with NetworkManager, and more
    (services
      (cons*
         (service slim-service-type
          (slim-configuration
           (xorg-configuration
            (xorg-configuration
             ;(keyboard-layout keyboard-layout)
             (extra-config
               (list %xorg-libinput-config
                     %xorg-enable-dri3
                     %xorg-intel-screen-tearing-fix))))))
         (screen-locker-service i3lock "i3lock")
         (service nftables-service-type
             (nftables-configuration
              (ruleset
               (local-file (string-append %endgame-directory "/conf/nftables.conf")))))
;         (service upower-service-type
;             (upower-configuration
;              (use-percentage-for-policy? #t)
;              (percentage-low 25)
;              (percentage-critical 10)
;              (percentage-action 5)
;              ;;(ignore-lid? #:t)
;              (watts-up-pro? #:f)
;              (poll-batteries? #:t)
;              (critical-power-action 'hybrid-sleep)))
         ;(service tlp-service-type
         ; (tlp-configuration
         ;  (cpu-boost-on-ac? #t)
         ;  (wifi-pwr-on-bat? #t)))
         (pam-limits-service
          (list
           (pam-limits-entry "@realtime" 'both 'rtprio 99)
           (pam-limits-entry "@realtime" 'both 'memlock 'unlimited)))
         (extra-special-file "/usr/bin/env"
          (file-append coreutils "/bin/env"))
         ;(service thermald-service-type)
         (simple-service 'os-release etc-service-type
           `(("os-release" ,%os-release-file)))
         (simple-service 'cron-jobs
                         mcron-service-type
                         (list %garbage-collector-job-system))
         ;; Add udev rules for MTP devices so that non-root users can access
         ;; them.
         (simple-service 'mtp udev-service-type (list libmtp))
         ;; Add udev rules for scanners.
         (service sane-service-type)
         ;; Add network-manager applet
         (simple-service 'network-manager-applet
                         profile-service-type
                         (list network-manager-applet))
         (service dnsmasq-service-type
          (dnsmasq-configuration
           (no-resolv? #t)
           (servers '("193.17.47.1" "185.43.135.1"))))

         (service docker-service-type)
         (service pcscd-service-type)
         (service earlyoom-service-type
          (earlyoom-configuration
           (prefer-regexp "chromium")))
         (service libvirt-service-type
          (libvirt-configuration
           (unix-sock-group "libvirt")
           (tls-port "16555")))
         (service qemu-binfmt-service-type
          (qemu-binfmt-configuration
           (platforms (lookup-qemu-platforms "arm" "aarch64"))))
         (service cups-service-type
          (cups-configuration
           (web-interface? #t)
           (extensions
            (list cups-filters))))
         ;; make guix system autoupgrade itself once a week!
         (service unattended-upgrade-service-type
          (unattended-upgrade-configuration
           (schedule "30 01 * * 0")
           (system-expiration (* 3 30 24 3600))))
         (service nix-service-type)
         (udev-rules-service 'android android-udev-rules #:groups '("adbusers"))
         (bluetooth-service #:auto-enable? #t)
         (remove (lambda (service)
          (eq? (service-kind service) gdm-service-type))
         %my-desktop-services)))

    ;; Allow resolution of '.local' host names with mDNS
    (name-service-switch %mdns-host-lookup-nss)))

;; NOTE: Private key must be manually place into the location
(define (wire-vpn public-key ipaddr)
 (service wireguard-service-type
  (wireguard-configuration
   (peers
    (list
     (wireguard-peer
      (name "dungeon")
      (endpoint "37.205.12.244:60990")
      (public-key public-key)
      (allowed-ips '("10.100.0.0/24")))))
   (addresses ipaddr)
   (private-key "/etc/wireguard/wg0-priv.key"))))
