(define-module (endgame packages dustcloud)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages embedded)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

; https://github.com/dgiese/dustcloud/blob/master/devices/xiaomi.vacuum/firmwarebuilder/imagebuilder.sh

(define-public dustcloud
(package
  (name "dustcloud")
  (version "0.3")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/dgiese/dustcloud")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0kchdkg9rrsawcf7bqvaa65zzh62hp89lybbnwcjyjkh9ci61wyh"))))
  (build-system cmake-build-system)
  (arguments
   `(#:configure-flags (list (string-append "-DARM_NONE_EABI_TOOLCHAIN_PATH=" (assoc-ref %build-inputs "arm-none-eabi-toolchain") "/bin"))))
  (native-inputs `(("pkg-config" ,pkg-config)
		   ("arm-none-eabi-toolchain" ,arm-none-eabi-toolchain-7-2018-q2-update)))
  (synopsis "Firmware for Xiaomi smart vacuum cleaner")
  (description "This package let's you build a firmware for your vaccum cleaner.")
  (home-page "https://github.com/InfiniTimeOrg/InfiniTime")
  (license license:lgpl3+)))
