(define-module (endgame packages ropgadget)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages engineering)
  #:use-module (gnu packages package-management)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-ropgadget
  (package
    (name "python-ropgadget")
    (version "6.6")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "ROPGadget" version))
        (sha256
          (base32
            "08ms7x4af07970ij9899l75sghnxsa7xyx73gkn6gv0l05p1hqfw"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-capstone" ,python-capstone)))
    (home-page "https://github.com/JonathanSalwan/ROPgadget")
    (synopsis "Search binaries to facilitate ROP exploitation")
    (description "This tool lets you search your gadgets on binaries
to facilitate your ROP exploitation.")
    (license license:bsd-3)))
