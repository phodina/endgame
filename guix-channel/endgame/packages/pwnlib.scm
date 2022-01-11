(define-module (endgame packages pwnlib)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-pwnlib
  (package
    (name "python-pwnlib")
    (version "1.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "pwnlib" version))
        (sha256
          (base32 "1ls7mm6w44v09l28f7xybxps48gs0zrcnjpwphiwwivkdm8pwxwj"))))
    (build-system python-build-system)
    (home-page "https://github.com/Gallopsled/pwntools")
    (synopsis "Pwnlib project")
    (description "Pwnlib project")
    (license #f)))
