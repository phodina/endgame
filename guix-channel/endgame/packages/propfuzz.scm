(define-module (endgame packages propfuzz)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-propfuzz-macro-0.0.1
  (package
    (name "rust-propfuzz-macro")
    (version "0.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "propfuzz-macro" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xizaahjxxvcz9n91pgpji3nd7b755qgq3m2kmmg53zwjwv9nnsx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/facebookincubator/propfuzz")
    (synopsis "Support macro for propfuzz.")
    (description "Support macro for propfuzz.")
    (license (list license:expat license:asl2.0))))

; TODO: tests fail
(define-public rust-propfuzz-0.0.1
  (package
    (name "rust-propfuzz")
    (version "0.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "propfuzz" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xadkjqsnnazfksaywxkdgv0fjkclj2p7x36r044jbj9g395nxyg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-propfuzz-macro" ,rust-propfuzz-macro-0.0.1)
         ("rust-proptest" ,rust-proptest-0.10))
        #:cargo-development-inputs
        (("rust-pretty-assertions" ,rust-pretty-assertions-0.6)
         ("rust-trybuild" ,rust-trybuild-1))))
    (home-page "https://github.com/facebookincubator/propfuzz")
    (synopsis "Combine property-based testing and fuzzing.")
    (description "Combine property-based testing and fuzzing.")
    (license (list license:expat license:asl2.0))))
