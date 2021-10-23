(define-module (endgame packages meilisearch)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (gnu packages crates-io)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-arc-swap-1
  (package
    (name "rust-arc-swap")
    (version "1.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "arc-swap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0qzczn3grbwla2aax1jnmww39bqqy2wfr311wl63cc2qbkpmmpz6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-development-inputs
        (("rust-adaptive-barrier" ,rust-adaptive-barrier-0.1)
         ("rust-criterion" ,rust-criterion-0.3)
         ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
         ("rust-itertools" ,rust-itertools-0.9)
         ("rust-num-cpus" ,rust-num-cpus-1)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-proptest" ,rust-proptest-0.10))))
    (home-page "https://github.com/vorner/arc-swap")
    (synopsis "Atomically swappable Arc")
    (description "Atomically swappable Arc")
    (license (list license:asl2.0 license:expat))))

(define-public rust-pest-2
  (package
    (name "rust-pest")
    (version "2.1.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pest" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lry80bm90x47nq71wxq83kjrm9ashpz4kbm92p90ysdx4m8gx0h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-ucd-trie" ,rust-ucd-trie-0.1))))
    (home-page "https://pest-parser.github.io/")
    (synopsis "The Elegant Parser")
    (description "The Elegant Parser")
    (license (list license:expat license:asl2.0))))

; This is just a workspace, divide into error, http and lib
(define-public meilisearch
(package
  (name "meilisearch")
  (version "1.0.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
              (url "https://github.com/meilisearch/MeiliSearch")
              (commit (string-append "v" version "rc1"))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1my862sdcdb5i0lcwqx7crl8q0wiqsjilh90pw0f4x33yg7dh8w0"))))
  (build-system cargo-build-system)
  (arguments
    `(#:tests? #f
      #:cargo-inputs
       (("rust-pest" ,rust-pest-2)
        ("rust-arc-swap" ,rust-arc-swap-1))))
  (synopsis "Powerful, fast, and an easy to use search engine")
  (description "MeiliSearch is a powerful, fast, open-source, easy to use and deploy search engine. Both searching and indexing are highly customizable. Features such as typo-tolerance, filters, and synonyms are provided out-of-the-box")
  (home-page "https://www.meilisearch.com/")
  (license license:expat)))
