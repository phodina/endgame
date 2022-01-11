(define-module (endgame packages opendrop)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-web)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-fleep
  (package
    (name "python-fleep")
    (version "1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "fleep" version))
        (sha256
          (base32 "0k0h3pilc271s55a4q0a7zy21479g3rg7l8ydizlsdp5iqjjpxn8"))))
    (build-system python-build-system)
    (home-page "https://github.com/floyernick/fleep")
    (synopsis "File format determination library")
    (description "File format determination library")
    (license license:expat)))

(define-public python-opendrop
  (package
    (name "python-opendrop")
    (version "0.13.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "opendrop" version))
        (sha256
          (base32 "01sdbfnw0nd0h4vfajbgn8ws9nlv9yyqy6cghj0xh2zsj8d6hk8l"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-fleep" ,python-fleep)
        ("python-ifaddr" ,python-ifaddr)
        ("python-libarchive-c" ,python-libarchive-c)
        ("python-pillow" ,python-pillow)
        ("python-requests" ,python-requests)
        ("python-requests-toolbelt" ,python-requests-toolbelt)
        ("python-zeroconf" ,python-zeroconf)))
    (home-page "https://owlink.org")
    (synopsis "An open Apple AirDrop implementation")
    (description "An open Apple AirDrop implementation")
    (license license:gpl3)))
