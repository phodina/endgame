(define-module (endgame packages rpi-kernel)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (guix utils)
  #:use-module (gnu packages linux)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rpi-kernel
  (package
    (inherit linux-libre)
    (name "rpi-kernel")
    (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/raspberrypi/linux")
             (commit version)))
            ;(file-name (git-file-name name version))
            (sha256
             (base32
              "0y6xqx4pbdsiis6pqms9b91sba6ah412flrmlhrsmq9058nil755"))))

    (native-inputs
     `(("kconfig" ,(local-file "E2140.config"))
      ,@(alist-delete "kconfig"
                      (package-native-inputs linux-libre))))))
