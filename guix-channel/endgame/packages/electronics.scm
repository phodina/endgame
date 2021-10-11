(define-module (endgame packages electronics)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (gnu packages bison)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages flex)
  #:use-module (gnu packages python)
  #:use-module (gnu packages texinfo)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public gputils
  (package
    (name "gputils")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                     "mirror://sourceforge/gputils/gputils/"
                     version "/gputils-" version ".tar.bz2"))
              (sha256
                (base32
                  "1xfvmvb6zyzs5bqycbvmc6hyl2vp2pv22aaq5974vip4rriklhf7"))))
    (build-system gnu-build-system)
    (home-page "https://gputils.sourceforge.io/")
    (synopsis "GNU PIC Utilities")
    (description "GPUTILS is a collection of tools for the Microchip (TM) PIC
microcontrollers.  It includes gpasm, gplink, and gplib.")
    (license license:gpl2+)))

(define-public sdcc-nonfree
  (package
    (name "sdcc-nonfree")
    (version "3.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://sourceforge/sdcc/sdcc"
                    "/" version "/sdcc-src-" version ".tar.bz2"))
              (sha256
               (base32
                "13llvx0j3v5qa7qd4fh7nix4j3alpd3ccprxvx163c4q8q4lfkc5"))))
    (build-system gnu-build-system)
    (inputs
      `(("gputils" ,gputils)))
    (native-inputs
     `(("bison" ,bison)
       ("boost" ,boost)
       ("flex" ,flex)
       ("python-2" ,python-2)
       ("texinfo" ,texinfo)))
    (arguments
     `(;; Allow non-free software for PIC microcontroller support
       #:configure-flags
       '("--enable-ucsim")
       #:phases
       (modify-phases %standard-phases
         (add-after 'unpack 'patch-makefile
           (lambda _
             (substitute* (find-files "." "(\\.mk$|\\.in$)")
               (("/bin/sh") (which "sh")))
             #t)))))
    (home-page "http://sdcc.sourceforge.net")
    (synopsis "Small devices C compiler")
    (description "SDCC is a retargetable, optimizing Standard C compiler suite
that targets the Intel MCS51-based microprocessors (8031, 8032, 8051, 8052, ...),
Maxim (formerly Dallas) DS80C390 variants, Freescale (formerly Motorola)
HC08-based (hc08, s08), Zilog Z80-based MCUs (z80, z180, gbz80, Rabbit
2000/3000, Rabbit 3000A, TLCS-90) and STMicroelectronics STM8.
Work is in progress on supporting the Microchip PIC16 and PIC18 targets.
It can be retargeted for other microprocessors.")
    (license license:gpl2+)))

