(define-module (endgame packages difftastic)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-typed-arena-2
  (package
    (name "rust-typed-arena")
    (version "2.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "typed-arena" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1bnhphrksp9krxhsfhfimrxvkbah2pa6rf9ygmpw5lalbm6wi186"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/SimonSapin/rust-typed-arena")
    (synopsis
      "The arena, a fast but limited type of allocator")
    (description
      "The arena, a fast but limited type of allocator")
    (license license:expat)))

(define-public rust-spin-0.7
  (package
    (name "rust-spin")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "spin" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0qjips9f6fsvkyd7wj3a4gzaqknn2q4kkb19957pl86im56pna0k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lock-api" ,rust-lock-api-0.4))))
    (home-page
      "https://github.com/mvdnes/spin-rs.git")
    (synopsis
      "Spin-based synchronization primitives")
    (description
      "Spin-based synchronization primitives")
    (license license:expat)))

(define-public rust-tree-sitter-0.19
  (package
    (name "rust-tree-sitter")
    (version "0.19.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tree-sitter" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1h6adq5kqf4izzsklch5lfxx2aisxga463zz7w44rgwnck16wwmd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-spin" ,rust-spin-0.7))))
    (home-page
      "https://github.com/tree-sitter/tree-sitter")
    (synopsis
      "Rust bindings to the Tree-sitter parsing library")
    (description
      "Rust bindings to the Tree-sitter parsing library")
    (license license:expat)))

(define-public rust-ordered-float-0.5
  (package
    (name "rust-ordered-float")
    (version "0.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ordered-float" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "17b6ck0kvdwfch742ndixbbj9fivylnnn53s5hlkyp948fb2bdby"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-num-traits" ,rust-num-traits-0.1)
         ("rust-serde" ,rust-serde-1)
         ("rust-unreachable" ,rust-unreachable-1))))
    (home-page
      "https://github.com/reem/rust-ordered-float")
    (synopsis
      "Wrappers for total ordering on floats")
    (description
      "Wrappers for total ordering on floats")
    (license license:expat)))

(define-public rust-ieee754-0.2
  (package
    (name "rust-ieee754")
    (version "0.2.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ieee754" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1771d2kvw1wga65yrg9m7maky0fzsaq9hvhkv91n6gmxmjfdl1wh"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/huonw/ieee754")
    (synopsis
      "Low-level manipulations of IEEE754 floating-point numbers.
")
    (description
      "Low-level manipulations of IEEE754 floating-point numbers.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-radix-heap-0.3
  (package
    (name "rust-radix-heap")
    (version "0.3.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "radix-heap" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1ksjqmy743ipn43bhlc6y8qrycg57zwy55chs6zji92f9z1kg3g4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ieee754" ,rust-ieee754-0.2)
         ("rust-ordered-float" ,rust-ordered-float-0.5)
         ("rust-ordered-float" ,rust-ordered-float-1))))
    (home-page
      "https://github.com/noctune/radix-heap")
    (synopsis "Fast monotone priority queues")
    (description "Fast monotone priority queues")
    (license license:expat)))

(define-public rust-libmimalloc-sys-0.1
  (package
    (name "rust-libmimalloc-sys")
    (version "0.1.22")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libmimalloc-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "008wbcdcqk14kyblsl5xw2xspnqk5swm1z214y6ainwkqmwq86qx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-cty" ,rust-cty-0.2))))
    (home-page
      "https://github.com/purpleprotocol/mimalloc_rust/tree/master/libmimalloc-sys")
    (synopsis
      "Sys crate wrapping the mimalloc allocator")
    (description
      "Sys crate wrapping the mimalloc allocator")
    (license license:expat)))

(define-public rust-mimalloc-0.1
  (package
    (name "rust-mimalloc")
    (version "0.1.26")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mimalloc" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0c2i5q90jnknkhwmxil3a7kwdjr2b7y7c57xas8w9rh8wmy8jx7v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libmimalloc-sys"
          ,rust-libmimalloc-sys-0.1))))
    (home-page
      "https://github.com/purpleprotocol/mimalloc_rust")
    (synopsis
      "Performance and security oriented drop-in allocator")
    (description
      "Performance and security oriented drop-in allocator")
    (license license:expat)))

(define-public rust-difftastic-0.9
  (package
    (name "rust-difftastic")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "difftastic" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "07gv48kka22pdb5hl028qb03ibc45m9v4avgkwqx3p6qcyjqm6h3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-atty" ,rust-atty-0.2)
         ("rust-cc" ,rust-cc-1)
         ("rust-clap" ,rust-clap-2)
         ("rust-colored" ,rust-colored-2)
         ("rust-diff" ,rust-diff-0.1)
         ("rust-itertools" ,rust-itertools-0.8)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-mimalloc" ,rust-mimalloc-0.1)
         ("rust-pretty-env-logger"
          ,rust-pretty-env-logger-0.4)
         ("rust-radix-heap" ,rust-radix-heap-0.3)
         ("rust-regex" ,rust-regex-1)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-strsim" ,rust-strsim-0.10)
         ("rust-term-size" ,rust-term-size-0.3)
         ("rust-tree-sitter" ,rust-tree-sitter-0.19)
         ("rust-typed-arena" ,rust-typed-arena-2))
        #:cargo-development-inputs
        (("rust-pretty-assertions"
          ,rust-pretty-assertions-0.6))
	#:phases
	(modify-phases %standard-phases
		       (add-after 'unpack 'enable-unstable-features
				  (lambda _
				    (substitute* "src/lib.rs" (("//! Difftastic is a syntactic diff tool.") "#![feature(split_inclusive)]\n//! Difftastic is a syntactic diff tool."))
				    (setenv "RUSTC_BOOTSTRAP" "1"))))))
    (home-page
      "https://github.com/wilfred/difftastic")
    (synopsis "A syntactic diffing tool")
    (description
      "This package provides a syntactic diffing tool")
    (license license:expat)))

