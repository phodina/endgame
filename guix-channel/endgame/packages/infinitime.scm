(define-module (endgame packages infinitime)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages embedded)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public infinitime
(package
  (name "infinitime")
  (version "1.6.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/InfiniTimeOrg/InfiniTime")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0b2f56jhjwr5bcd2x3ald4da51lqbywyy8skk5pz87f6bzsqyvmg"))))
  (build-system cmake-build-system)
  (arguments
   `(#:configure-flags (list (string-append "-DARM_NONE_EABI_TOOLCHAIN_PATH=" (assoc-ref %build-inputs "arm-none-eabi-toolchain") "/bin"))))
  (native-inputs `(("pkg-config" ,pkg-config)
		   ("arm-none-eabi-toolchain" ,arm-none-eabi-toolchain-7-2018-q2-update)))
  (synopsis "Firmware for Pinetime in C/C++ on FreeRTOS")
  (description "This package provides firmware for Pinetime:
@enumerate
@item Written in modern C/C++
@item Based on FreeRTOS 10.0.0
@item LittleVGL as UI library
@item NimBLE 1.3.0 as BLE stack
@end enumerate")
  (home-page "https://github.com/InfiniTimeOrg/InfiniTime")
  (license license:lgpl3+)))
