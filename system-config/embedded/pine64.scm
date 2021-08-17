(define-module (system-config embedded pine64)
  #:use-module (guix packages)
  ;#:use-module (system-config system base-system)
  #:use-module (endgame utils)
  #:use-module (gnu bootloader u-boot)
  #:use-module (gnu system locale)
  #:use-module (gnu packages certs)
  #:use-module (gnu packages connman)
  #:use-module (gnu packages linux)
  #:use-module (gnu services linux)
  #:use-module (gnu services networking)
  #:use-module (gnu services ssh)
  #:use-module (srfi srfi-1)
  #:use-module (gnu))

(define os
 (operating-system
  ;(inherit base-operating-system)
  (host-name "pine64")
  (timezone "Europe/Prague")
  (locale "en_US.UTF-8")
  (locale-definitions
    (list (locale-definition (source "en_US")
                      (name "en_US.UTF-8"))))

  (bootloader (bootloader-configuration
                (bootloader u-boot-pine64-plus-bootloader)
                (target "/dev/mmcblk0")))   ; SD card/eMMC (SD priority) storage

  (initrd-modules '())
  ;; The board fails to boot with stock linux-libre
  (kernel linux-libre-arm64-generic)

  (swap-devices (list "/swapfile"))

  (file-systems (cons* (file-system
                         (device (file-system-label "root"))
                         (mount-point "/")
                         (type "ext4"))
                       %base-file-systems))

  (users (cons (user-account
                (name "cylon2p0")
                (group "users")
                (supplementary-groups '("wheel"
                                        "netdev" "kvm"))
                (home-directory "/home/cylon2p0"))
               %base-user-accounts))

  ;; This is where we specify system-wide packages.
  (packages (cons* nss-certs         ;for HTTPS access
                   btrfs-progs compsize
                   %base-packages))

  (services (cons* ;(service agetty-service-type
                   ;         (agetty-configuration
                   ;           (extra-options '("-L")) ; no carrier detect
                   ;           (baud-rate "115200")
                   ;           (term "vt100")
                   ;           (tty "ttyS0")))

                   (service openssh-service-type)

                   (service openntpd-service-type
                            (openntpd-configuration
                              (listen-on '("127.0.0.1" "::1"))
                              ;; Prevent moving to year 2116.
                              (constraints-from '("https://www.google.com/"))))

                   (service connman-service-type)
                   (service wpa-supplicant-service-type)

%base-services))

  ;; Allow resolution of '.local' host names with mDNS.
  (name-service-switch %mdns-host-lookup-nss)))

(print-licenses os)

os
