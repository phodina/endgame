(define-module (endgame packages shellharden)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-shellharden-4
  (package
    (name "rust-shellharden")
    (version "4.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "shellharden" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06hlzg4xkd13k8nrwqmir8azlkgm6k4bz7lr25nmk1f120ayird7"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/anordal/shellharden/")
    (synopsis "The corrective bash syntax highlighter")
    (description "The corrective bash syntax highlighter")
    (license license:mpl2.0)))
