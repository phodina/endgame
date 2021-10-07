(define-module (endgame packages fp-core)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-fp-core-0.1
  (package
    (name "rust-fp-core")
    (version "0.1.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fp-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "02ydzgsw5rspsvhpy59ag5gbdawr9vd5i9rxz8yn0j3jdkmmz2ik"))))
    (build-system cargo-build-system)
    (arguments `(#:cargo-inputs (("rust-itertools" ,rust-itertools-0.8))))
    (home-page "")
    (synopsis "A library for functional programming in Rust")
    (description
      "This package provides a library for functional programming in Rust")
    (license license:expat)))
