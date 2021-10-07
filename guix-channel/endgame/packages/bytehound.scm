(define-module (endgame packages bytehound)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public bytehound
  (package
    (name "bythound")
    (version "0.7.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/koute/bytehound")
               (commit (string-append "v" version))))
        (file-name (string-append name "-" version))
        (sha256
          (base32
            "15mhszk9qy2q49dpab4p0d9d4aph61yshaxjf12mhdx07n9qpnmh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-clap" ,rust-clap-2)
         ("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://github.com/koute/bytehound")
    (synopsis "Memory profiler for Linux.")
    (description "Memory profiler for Linux")
    ; Apache 2.0 and MIT
    (license license:expat)))

