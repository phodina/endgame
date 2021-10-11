(define-module (endgame packages fex)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages jemalloc)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public fex
  (package
    (name "fex")
    (version "2109")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/FEX-Emu/FEX")
                    (commit (string-append "FEX-" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0dcbhjj7n1ngnwwl6kmvrpj6b7qd198rkbsi7q0nrdqj6i6pxhnc"))))
    (build-system cmake-build-system)
    (arguments
      `(#:configure-flags (append (list "-DENABLE_X86_HOST_DEBUG=True"))))
    (native-inputs `(("linux-libre-headers" ,linux-libre-headers)
                     ("pkg-config" ,pkg-config)))
    (inputs `(("jemalloc" ,jemalloc)))
    (synopsis "Fast x86 emulation frontend")
    (description "This packages allow you to run x86 and x86-64 binaries on
an AArch64host, similar to qemu-user and box86.  It supports rootfs overlay
so there is no nteed to chroot.  Also thunklibs forward things like GL to
the host.")
    (home-page "https://fex-emu.org/")
    (license license:expat)))
