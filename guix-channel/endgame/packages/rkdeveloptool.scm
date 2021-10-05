(define-module (endgame packages rkdeveloptool)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rkdeveloptool-pine64
(package
  (name "rkdeveloptool-pine64")
  (version "1.0.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://gitlab.com/pine64-org/quartz-bsp/rkdeveloptool")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1qhb687x0djh8wb1famyjb81cllhq8crh7zwclws9ag872032ysc"))))
  (build-system meson-build-system)
  (arguments
    `(#:tests? #f ; no test suite
      #:phases
      (modify-phases %standard-phases
       ; attempts to place the file into the udev pkg read-only path
       (add-after 'unpack 'fix-udev-path
        (lambda* _
             (substitute* "meson.build"
               (("udev_rules_dir,")
                (string-append "'" %output "/lib/udev/rules.d',"))))))))
  (native-inputs `(("pkg-config" ,pkg-config)
                   ("cmake" ,cmake)))
  (inputs `(("eudev" ,eudev)
            ("libusb" ,libusb)))
  (synopsis "Read from and write to RockChicp devices over USB")
  (description "Rkdeveloptool is a fastboot-like CLI tool to read from and
write to RockChip devices over USB.  Supports PineNote and Quartz64 as well
as other Pine64 RK devices.")
  (home-page "https://gitlab.com/pine64-org/quartz-bsp/rkdeveloptool")
  (license license:gpl2+)))
