(define-module (endgame packages manjaro)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system copy)
  #:use-module ((guix licenses) #:prefix license:))

; https://github.com/manjaro-pinephone/arm-profiles/tree/master/devices
; https://gitlab.manjaro.org/manjaro-arm/applications/manjaro-arm-tools/-/tree/master/bin

; https://gitlab.manjaro.org/manjaro-arm/packages/community/ap6256-firmware
(define-public ap6256-firmware
  (let ((commit "910f0df6c215515fbf5c246d119ebc6f638a08fb")
        (revision "1"))
(package
  (name "ap6256-firmware")
  (version "")
  (source (origin
            (method git-fetch)
            (uri (git-reference
              (url "https://gitlab.manjaro.org/manjaro-arm/packages/community/ap6256-firmware")
              (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0ld686b5656v0q6va4l5jwyx9bryjzisl956vcmhxq49cq3450al"))))
  (build-system copy-build-system)
  (arguments
   `(#:install-plan
      `((,("BCM4345C5.hcd" "usr/lib/firmware/")
          ("BCM4345C5.hcd" "usr/lib/firmware/brcm/BCM.hcd")
          ("BCM4345C5.hcd" "usr/lib/firmware/brcm/")))))
  (synopsis "Firmware for the wifi/bt module AP6256")
  (description "This package provides Firmware for the wifi/bt module AP6256, found in Rock Pi 4 and others")
  (home-page "https://github.com/radxa/rk-rootfs-build")
  (license license:gpl2))))

(define-public linux-quartz64
  (let ((commit "3c25e431b4394e0fd69e774b99cdf3415365cc90")
        (revision "1"))
(package
  (inherit linux-libre)
  (name "linux-quartz64")
  (version "")
  (source (origin
            (method git-fetch)
            (uri (git-reference
              (url "https://gitlab.manjaro.org/manjaro-arm/packages/core/linux-quartz64")
              (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1z6dpwbikmiq5acpbji4kvmxqc7jw295rfk5703k5mvp5ps9a29q")))))))

(define-public u-boot-quartz64
  (let ((commit "4760d03d75a0ad7af548533af5a73405948210f5")
        (revision "1"))
(package
  (inherit u-boot)
  (name "u-boot-quartz64")
  (version "")
  (source (origin
            (method git-fetch)
            (uri (git-reference
              (url "https://gitlab.manjaro.org/manjaro-arm/packages/core/uboot-quartz64-bsp")
              (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0h36x5z1jnyvhxn48006mh6469ayl299480hq9fzxr0hddx9hyzl")))))))
