(define-module (endgame packages openrazor)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages python)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Has to build kernel modules
(define-public openrazor
  (package
    (name "openrazor")
    (version "3.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/openrazer/openrazer")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "133szhi0xsfbnjw47xbvyidflxd8fp7pv78vk5wf9s5ch3hpnvxs"))))
    (build-system gnu-build-system)
    (arguments
     `(#:tests? #f                      ; no test suite
                                        ;#:make-flags (list (string-append "KERNELDIR=" (assoc-ref %build-inputs "linux-libre-headers") "/$(shell uname -r)/build"))
       #:make-flags (list (string-append "KERNELDIR=" %output "/$(shell uname -r)/build"))
       #:phases
       (modify-phases %standard-phases
         (delete 'configure))))
    (native-inputs `(("linux-libre-headers" ,linux-libre-headers)
                     ("pkg-config" ,pkg-config)))
    (inputs `(("python" ,python)
              ("libusb" ,libusb)))
    (synopsis "Driver and user-space daemon to control Razer")
    (description "This package provides a collection of Linux drivers for Razer
devices - providing kernel drivers, DBus services and Python bindings
to interact with the DBus interface.")
    (home-page "https://github.com/openrazer/openrazer")
    (license license:gpl2)))
