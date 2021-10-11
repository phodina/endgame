(define-module (endgame packages magiclantern)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages python)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix hg-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public magic-lantern
  (package
    (name "magic-lantern")
    ; Tags for different cameras
    (version "70D_Beta2")
    (source (origin
              (method hg-fetch)
              (uri (hg-reference
                    (url "https://foss.heptapod.net/magic-lantern/magic-lantern")
                    (changeset version)))
              ;(file-name (hg-file-name name version))
              (sha256
               (base32
                "233szhi0xsfbnjw47xbvyidflxd8fp7pv78vk5wf9s5ch1hpnvxs"))))
    (build-system gnu-build-system)
    (native-inputs `(("linux-libre-headers" ,linux-libre-headers)
                     ("pkg-config" ,pkg-config)))
    (inputs `(("python" ,python)
              ("libusb" ,libusb)))
    (synopsis "Firmware add-on for Canon EOS cameras")
    (description "Magic Lantern provides a software enhancement that offers
increased functionality to the excellent Canon DSLR cameras.  This is
an independent program that runs alongside Canon's own software.")
    (home-page "http://www.magiclantern.fm/")
    (license license:gpl2+)))
