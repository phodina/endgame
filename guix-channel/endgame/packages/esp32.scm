(define-module (endgame packages esp32)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages rust)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-slip-codec-0.2
  (package
    (name "rust-slip-codec")
    (version "0.2.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "slip-codec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hc21bncw4ycn6ddzgsniq546ss9y4wgzppsd5kgr6zq1sc434w7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytes" ,rust-bytes-1)
         ("rust-tokio-util" ,rust-tokio-util-0.6))))
    (home-page "https://github.com/jmaygarden/slip-codec")
    (synopsis "Serial Line Internet Protocol (SLIP) encoder/decoder")
    (description "Serial Line Internet Protocol (SLIP) encoder/decoder")
    (license license:expat)))

(define-public rust-serial-windows-0.4
  (package
    (name "rust-serial-windows")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serial-windows" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ql1vjy57g2jf218bhmgr98i41faq0v5vzdx3g9payi6fsvx7ihm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-serial-core" ,rust-serial-core-0.4))))
    (home-page "https://github.com/dcuddeback/serial-rs")
    (synopsis "Serial port implementation for Windows.")
    (description "Serial port implementation for Windows.")
    (license license:expat)))

(define-public rust-serial-0.4
  (package
    (name "rust-serial")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serial" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11iyvc1z123hn7zl6bk5xpf6xdlsb33qh6xa7g0pghqgayb7l8x1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serial-core" ,rust-serial-core-0.4)
         ("rust-serial-unix" ,rust-serial-unix-0.4)
         ("rust-serial-windows" ,rust-serial-windows-0.4))))
    (home-page "https://github.com/dcuddeback/serial-rs")
    (synopsis "Rust library for accessing serial ports.")
    (description "Rust library for accessing serial ports.")
    (license license:expat)))

(define-public rust-serde-plain-1
  (package
    (name "rust-serde-plain")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_plain" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0n1q2gdryp9jfmw89vixld68ldmydwiayw11wx921nps55z5wicm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://docs.rs/serde_plain")
    (synopsis "A restricted plain text serializer for serde")
    (description
      "This package provides a restricted plain text serializer for serde")
    (license (list license:expat license:asl2.0))))

(define-public rust-pico-args-0.4
  (package
    (name "rust-pico-args")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pico-args" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0s646i0pbcck300rqldb21m151zxp66m3mdskha063blrfbcv2yv"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/RazrFalcon/pico-args")
    (synopsis "An ultra simple CLI arguments parser.")
    (description "An ultra simple CLI arguments parser.")
    (license license:expat)))

(define-public rust-unicode-linebreak-0.1
  (package
    (name "rust-unicode-linebreak")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-linebreak" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0grq6bsn967q4vpifld53s7a140nlmpq5vy8ghgr73f4n2mdqlis"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
	#:rust ,rust-1.52
	#:cargo-inputs (("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/axelf4/unicode-linebreak")
    (synopsis "Implementation of the Unicode Line Breaking Algorithm")
    (description "Implementation of the Unicode Line Breaking Algorithm")
    (license license:asl2.0)))

(define-public rust-openblas-src-0.9
  (package
    (name "rust-openblas-src")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "openblas-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0syy38a5bgv5mj6mb1n1zk1d6l5gqqrswvbmwkwx6h4z9wfrsql4"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/blas-lapack-rs/openblas-src")
    (synopsis "The package provides a source of BLAS and LAPACK via OpenBLAS.")
    (description
      "The package provides a source of BLAS and LAPACK via OpenBLAS.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-netlib-src-0.8
  (package
    (name "rust-netlib-src")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "netlib-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04l2ggdaq0bjc64prsw2f8ddxn84m1rmpnkjb9nr0ijdpcv1zx1r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-cmake" ,rust-cmake-0.1))))
    (home-page "https://github.com/blas-lapack-rs/netlib-src")
    (synopsis "The package provides a source of BLAS and LAPACK via Netlib.")
    (description
      "The package provides a source of BLAS and LAPACK via Netlib.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-intel-mkl-tool-0.1
  (package
    (name "rust-intel-mkl-tool")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "intel-mkl-tool" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1myyrxvmyij4c60w9x15npwzhlbjm8y8c94lvfsnrl5pbyakz8md"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-curl" ,rust-curl-0.4)
         ("rust-dirs" ,rust-dirs-2)
         ("rust-env-logger" ,rust-env-logger-0.7)
         ("rust-failure" ,rust-failure-0.1)
         ("rust-glob" ,rust-glob-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-structopt" ,rust-structopt-0.3)
         ("rust-tar" ,rust-tar-0.4)
         ("rust-zstd" ,rust-zstd-0.5))))
    (home-page "https://github.com/rust-math/intel-mkl-src")
    (synopsis "CLI utility for redistributiing Intel(R) MKL")
    (description "CLI utility for redistributiing Intel(R) MKL")
    (license license:expat)))

(define-public rust-intel-mkl-src-0.5
  (package
    (name "rust-intel-mkl-src")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "intel-mkl-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "155q49a7nfbq1lllchsyx8jv2q2pijrjh1w08awvrbjyfcxb6q3j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-intel-mkl-tool" ,rust-intel-mkl-tool-0.1))))
    (home-page "https://github.com/rust-math/intel-mkl-src")
    (synopsis "Redistribution of Intel(R) MKL as a crate")
    (description "Redistribution of Intel(R) MKL as a crate")
    (license #f)))

(define-public rust-accelerate-src-0.3
  (package
    (name "rust-accelerate-src")
    (version "0.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "accelerate-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17fiqyq7f9k41pbsyrvk9pxyx9z6fw399wq036cvwkbmb14xcpj1"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/blas-lapack-rs/accelerate-src")
    (synopsis
      "The package provides a source of BLAS and LAPACK via the Accelerate framework.")
    (description
      "The package provides a source of BLAS and LAPACK via the Accelerate framework.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-blas-src-0.6
  (package
    (name "rust-blas-src")
    (version "0.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "blas-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0a134wadi4rslfqk4mafi6y7bbvacjh12x87621w4vyc3dni6px2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-accelerate-src" ,rust-accelerate-src-0.3)
         ("rust-intel-mkl-src" ,rust-intel-mkl-src-0.5)
         ("rust-netlib-src" ,rust-netlib-src-0.8)
         ("rust-openblas-src" ,rust-openblas-src-0.9))))
    (home-page "https://github.com/blas-lapack-rs/blas-src")
    (synopsis "The package provides a BLAS source of choice.")
    (description "The package provides a BLAS source of choice.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-ndarray-0.14
  (package
    (name "rust-ndarray")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ndarray" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "011wqzmrd9gpfcfvy1xfbskqfiahn96pmi2d0r9x34d682amq3bc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-approx" ,rust-approx-0.4)
         ("rust-blas-src" ,rust-blas-src-0.6)
         ("rust-cblas-sys" ,rust-cblas-sys-0.1)
         ("rust-matrixmultiply" ,rust-matrixmultiply-0.2)
         ("rust-num-complex" ,rust-num-complex-0.3)
         ("rust-num-integer" ,rust-num-integer-0.1)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rawpointer" ,rust-rawpointer-0.2)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/rust-ndarray/ndarray")
    (synopsis
      "An n-dimensional array for general elements and for numerics. Lightweight array views and slicing; views support chunking and splitting.")
    (description
      "An n-dimensional array for general elements and for numerics.  Lightweight array views and slicing; views support chunking and splitting.")
    (license (list license:expat license:asl2.0))))

(define-public rust-smawk-0.3
  (package
    (name "rust-smawk")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smawk" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hv0q1mw1r1brk7v3g4a80j162p7g1dri4bdidykrakzfqjd4ypn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-ndarray" ,rust-ndarray-0.14))))
    (home-page "https://github.com/mgeisler/smawk")
    (synopsis "Functions for finding row-minima in a totally monotone matrix.")
    (description
      "This package provides functions for finding row-minima in a totally monotone matrix.")
    (license license:expat)))

(define-public rust-unicode-normalization-0.1
  (package
    (name "rust-unicode-normalization")
    (version "0.1.19")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-normalization" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yabhmg8zlcksda3ajly9hpbzqgbhknxwch8dwkfkaa1569r0ifm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-tinyvec" ,rust-tinyvec-1))))
    (home-page "https://github.com/unicode-rs/unicode-normalization")
    (synopsis
      "This crate provides functions for normalization of
Unicode strings, including Canonical and Compatible
Decomposition and Recomposition, as described in
Unicode Standard Annex #15.
")
    (description
      "This crate provides functions for normalization of
Unicode strings, including Canonical and Compatible
Decomposition and Recomposition, as described in
Unicode Standard Annex #15.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-derive-1
  (package
    (name "rust-serde-derive")
    (version "1.0.130")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12shxhi47db54i4j44ic2nl299x5p89ngna0w3m6854nn4d1mg6p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://serde.rs")
    (synopsis "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (description
      "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-1
  (package
    (name "rust-serde")
    (version "1.0.130")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04y9s1mxcxakg9bhfdiff9w4zzprk6m6dazcpmpi8nfg6zg0cbgi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://serde.rs")
    (synopsis "A generic serialization/deserialization framework")
    (description
      "This package provides a generic serialization/deserialization framework")
    (license (list license:expat license:asl2.0))))

(define-public rust-hyphenation-commons-0.8
  (package
    (name "rust-hyphenation-commons")
    (version "0.8.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hyphenation_commons" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1gq59h9h8597k04yl53an0j56cvb0in98pxpp27dkiz5mnifgssz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-fst" ,rust-fst-0.4) ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/tapeinosyne/hyphenation")
    (synopsis "Proemial code for the `hyphenation` library")
    (description "Proemial code for the `hyphenation` library")
    (license (list license:asl2.0 license:expat))))

(define-public rust-fst-0.4
  (package
    (name "rust-fst")
    (version "0.4.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fst" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06mnksicgv9rp8b7w0ykkshf355l05zym3ygm74qr5z30ndmpf3s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-utf8-ranges" ,rust-utf8-ranges-1))))
    (home-page "https://github.com/BurntSushi/fst")
    (synopsis
      "Use finite state transducers to compactly represents sets or maps of many
strings (> 1 billion is possible).
")
    (description
      "Use finite state transducers to compactly represents sets or maps of many
strings (> 1 billion is possible).
")
    (license (list license:unlicense license:expat))))

(define-public rust-bincode-1
  (package
    (name "rust-bincode")
    (version "1.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bincode" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bfw3mnwzx5g1465kiqllp5n4r10qrqy88kdlp3jfwnq2ya5xx5i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/servo/bincode")
    (synopsis
      "A binary serialization / deserialization strategy that uses Serde for transforming structs into bytes and vice versa!")
    (description
      "This package provides a binary serialization / deserialization strategy that uses Serde for transforming structs into bytes and vice versa!")
    (license license:expat)))

(define-public rust-hyphenation-0.8
  (package
    (name "rust-hyphenation")
    (version "0.8.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hyphenation" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w2hib167vpz7jbg3zs92ifihj4akirlhb5509aib1df8i6dvx5w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bincode" ,rust-bincode-1)
         ("rust-bincode" ,rust-bincode-1)
         ("rust-fst" ,rust-fst-0.4)
         ("rust-fst" ,rust-fst-0.4)
         ("rust-hyphenation-commons" ,rust-hyphenation-commons-0.8)
         ("rust-hyphenation-commons" ,rust-hyphenation-commons-0.8)
         ("rust-pocket-resources" ,rust-pocket-resources-0.3)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-unicode-normalization" ,rust-unicode-normalization-0.1))))
    (home-page "https://github.com/tapeinosyne/hyphenation")
    (synopsis "Knuth-Liang hyphenation for a variety of languages")
    (description "Knuth-Liang hyphenation for a variety of languages")
    (license (list license:asl2.0 license:expat))))

(define-public rust-textwrap-0.14
  (package
    (name "rust-textwrap")
    (version "0.14.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "textwrap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "106xjfzfpk3nj51fx9slf9kyir7xjwvpqm003v9ardgq5b8whrh0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-hyphenation" ,rust-hyphenation-0.8)
         ("rust-smawk" ,rust-smawk-0.3)
         ("rust-terminal-size" ,rust-terminal-size-0.1)
         ("rust-unicode-linebreak" ,rust-unicode-linebreak-0.1)
         ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/mgeisler/textwrap")
    (synopsis
      "Powerful library for word wrapping, indenting, and dedenting strings")
    (description
      "Powerful library for word wrapping, indenting, and dedenting strings")
    (license license:expat)))

(define-public rust-supports-unicode-1
  (package
    (name "rust-supports-unicode")
    (version "1.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "supports-unicode" version))
        (file-name (string-append name "-" version ".tar.gz"))
	(patches '("endgame/packages/patches/rust-supports-unicode-comment-attribute-requires-rustc-1.54.patch"))
        (sha256
          (base32 "1cpq6mbixlpdibwx203p6qh7kpzqy9yin7y5ird14ys1bgj4bfd8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
	;#:rust ,rust-1.54
	#:cargo-inputs (("rust-atty" ,rust-atty-0.2))))
    (home-page "https://github.com/zkat/supports-unicode")
    (synopsis "Detects whether a terminal supports unicode.")
    (description "Detects whether a terminal supports unicode.")
    (license license:asl2.0)))

(define-public rust-supports-hyperlinks-1
  (package
    (name "rust-supports-hyperlinks")
    (version "1.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "supports-hyperlinks" version))
        (file-name (string-append name "-" version ".tar.gz"))
	(patches '("endgame/packages/patches/rust-supports-hyperlinks-comment-attribute-requires-rustc-1.54.patch"))
        (sha256
          (base32 "01k4rr0p8fvgc8qwy8bnlr8gf7gk8psb796vg2fwq7phqpvk82sr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        ;#:rust ,rust-1.54
	#:cargo-inputs
	(("rust-atty" ,rust-atty-0.2))))
    (home-page "https://github.com/zkat/supports-hyperlinks")
    (synopsis "Detects whether a terminal supports rendering hyperlinks.")
    (description "Detects whether a terminal supports rendering hyperlinks.")
    (license license:asl2.0)))

(define-public rust-is-ci-1
  (package
    (name "rust-is-ci")
    (version "1.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "is_ci" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ywra2z56x6d4pc02zq24a4x7gvpixynh9524icbpchbf9ydwv31"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/zkat/is_ci")
    (synopsis
      "Super lightweight CI environment checker. Just tells you if you're in CI or not without much fuss.")
    (description
      "Super lightweight CI environment checker.  Just tells you if you're in CI or not without much fuss.")
    (license license:isc)))

(define-public rust-supports-color-1
  (package
    (name "rust-supports-color")
    (version "1.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "supports-color" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yfi8yswjipk3ljzm79rbf3phw2fwlznhji1iap7pm4idg9wwwj8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-atty" ,rust-atty-0.2) ("rust-is-ci" ,rust-is-ci-1))))
    (home-page "https://github.com/zkat/supports-color")
    (synopsis
      "Detects whether a terminal supports color, and gives details about that support.")
    (description
      "Detects whether a terminal supports color, and gives details about that support.")
    (license license:asl2.0)))

(define-public rust-owo-colors-2
  (package
    (name "rust-owo-colors")
    (version "2.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "owo-colors" version))
        (file-name (string-append name "-" version ".tar.gz"))
	(patches '("endgame/packages/patches/rust-owo-colors-2-unstable-features.patch"))
        (sha256
          (base32 "0z2j9vlajrg65j5pc8nsp7zwdbqzl2hs64iqnayhmi5f4mcpcq9s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
	#:tests? #f ; fails to build tests
        #:cargo-inputs
        (("rust-atty" ,rust-atty-0.2)
         ("rust-supports-color" ,rust-supports-color-1))
        #:phases
        (modify-phases %standard-phases
          (add-after 'unpack 'enable-unstable-features
          (lambda* _
            (setenv "RUSTC_BOOTSTRAP" "1"))))))
    (home-page "https://github.com/jam1garner/owo-colors")
    (synopsis "Zero-allocation terminal colors that'll make people go owo")
    (description "Zero-allocation terminal colors that'll make people go owo")
    (license license:expat)))

(define-public rust-miette-derive-3
  (package
    (name "rust-miette-derive")
    (version "3.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "miette-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0zjv009zzw6z4scslyjb0laz0z2379c2a89jhrz9z6lvk5phn3rc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/zkat/miette")
    (synopsis "Derive macros for miette. Like `thiserror` for Diagnostics.")
    (description
      "Derive macros for miette.  Like `thiserror` for Diagnostics.")
    (license license:asl2.0)))

(define-public rust-cc-1
  (package
    (name "rust-cc")
    (version "1.0.71")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pgflzb5dc9pli1lfwfv5jksmz57j15iqqxqpdbnjq4lclfnihkr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-jobserver" ,rust-jobserver-0.1))))
    (home-page "https://github.com/alexcrichton/cc-rs")
    (synopsis
      "A build-time dependency for Cargo build scripts to assist in invoking the native
C compiler to compile native C code into a static archive to be linked into Rust
code.
")
    (description
      "This package provides a build-time dependency for Cargo build scripts to assist in invoking the native
C compiler to compile native C code into a static archive to be linked into Rust
code.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-memchr-2
  (package
    (name "rust-memchr")
    (version "2.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "memchr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0smq8xzd40njqpfzv5mghigj91fzlfrfg842iz8x0wqvw2dw731h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/BurntSushi/memchr")
    (synopsis "Safe interface to memchr.")
    (description "Safe interface to memchr.")
    (license (list license:unlicense license:expat))))

(define-public rust-object-0.26
  (package
    (name "rust-object")
    (version "0.26.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "object" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hmbm3zn48g510y4m3h3nqxnvrzlcfrbbg09dlxx5jiw0x87xwrr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-crc32fast" ,rust-crc32fast-1)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
         ("rust-wasmparser" ,rust-wasmparser-0.57))))
    (home-page "https://github.com/gimli-rs/object")
    (synopsis
      "A unified interface for reading and writing object file formats.")
    (description
      "This package provides a unified interface for reading and writing object file formats.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-gimli-0.25
  (package
    (name "rust-gimli")
    (version "0.25.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gimli" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1rwgmjp94ivk872xd2s9lfb7wpz6rj1s9bzqnhnkn6l4jw21x87h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
         ("rust-stable-deref-trait" ,rust-stable-deref-trait-1))))
    (home-page "https://github.com/gimli-rs/gimli")
    (synopsis "A library for reading and writing the DWARF debugging format.")
    (description
      "This package provides a library for reading and writing the DWARF debugging format.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-addr2line-0.16
  (package
    (name "rust-addr2line")
    (version "0.16.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "addr2line" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kday4xm4ky46ihsys3ch1vf5cv3lfjclfi610mpsb1xz6vz4q9y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-cpp-demangle" ,rust-cpp-demangle-0.3)
         ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
         ("rust-gimli" ,rust-gimli-0.25)
         ("rust-object" ,rust-object-0.26)
         ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
         ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
         ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "https://github.com/gimli-rs/addr2line")
    (synopsis
      "A cross-platform symbolication library written in Rust, using `gimli`")
    (description
      "This package provides a cross-platform symbolication library written in Rust, using `gimli`")
    (license (list license:asl2.0 license:expat))))

(define-public rust-backtrace-0.3
  (package
    (name "rust-backtrace")
    (version "0.3.61")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "backtrace" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00cv8523igvh3salpxhqacmy5z4s9g0khrw9kqrylkkkjbc0bag7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-addr2line" ,rust-addr2line-0.16)
         ("rust-cc" ,rust-cc-1)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-cpp-demangle" ,rust-cpp-demangle-0.3)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-miniz-oxide" ,rust-miniz-oxide-0.4)
         ("rust-object" ,rust-object-0.26)
         ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
         ("rust-rustc-serialize" ,rust-rustc-serialize-0.3)
         ("rust-serde" ,rust-serde-1)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/rust-lang/backtrace-rs")
    (synopsis
      "A library to acquire a stack trace (backtrace) at runtime in a Rust program.
")
    (description
      "This package provides a library to acquire a stack trace (backtrace) at runtime in a Rust program.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-miette-3
  (package
    (name "rust-miette")
    (version "3.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "miette" version))
        (file-name (string-append name "-" version ".tar.gz"))
	(patches '("endgame/packages/patches/rust-mitte-comment-attribute-requires-rust-1.54.patch"))
        (sha256
          (base32 "1a97pn3mz6w5lyvwlmx31p0nx757rcf89wnivi23zi0jq8fycizc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
	;#:rust ,rust-1.54
        #:cargo-inputs
        (("rust-atty" ,rust-atty-0.2)
         ("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-miette-derive" ,rust-miette-derive-3)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-owo-colors" ,rust-owo-colors-2)
         ("rust-supports-color" ,rust-supports-color-1)
         ("rust-supports-hyperlinks" ,rust-supports-hyperlinks-1)
         ("rust-supports-unicode" ,rust-supports-unicode-1)
         ("rust-term-size" ,rust-term-size-0.3)
         ("rust-textwrap" ,rust-textwrap-0.14)
         ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/zkat/miette")
    (synopsis
      "Fancy diagnostic reporting library and protocol for us mere mortals who aren't compiler hackers.")
    (description
      "Fancy diagnostic reporting library and protocol for us mere mortals who aren't compiler hackers.")
    (license license:asl2.0)))

(define-public rust-number-prefix-0.4
  (package
    (name "rust-number-prefix")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "number_prefix" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wvh13wvlajqxkb1filsfzbrnq0vrmrw298v2j3sy82z1rm282w3"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/ogham/rust-number-prefix")
    (synopsis "Library for numeric prefixes (kilo, giga, kibi).")
    (description "Library for numeric prefixes (kilo, giga, kibi).")
    (license license:expat)))

(define-public rust-indicatif-0.16
  (package
    (name "rust-indicatif")
    (version "0.16.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indicatif" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06xyjs0kzqiqkjn60n1miwm2l87sa9p2lmzz0ymq18y72z37s81d"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-console" ,rust-console-0.14)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-number-prefix" ,rust-number-prefix-0.4)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
         ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/mitsuhiko/indicatif")
    (synopsis "A progress bar and cli reporting library for Rust")
    (description
      "This package provides a progress bar and cli reporting library for Rust")
    (license license:expat)))

(define-public rust-pyo3-macros-backend-0.13
  (package
    (name "rust-pyo3-macros-backend")
    (version "0.13.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pyo3-macros-backend" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0rjxayd78l10hnyphk03bcvhm0jpsvnzn07lczhy7jsgv3jrgc47"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/pyo3/pyo3")
    (synopsis "Code generation for PyO3 package")
    (description "Code generation for PyO3 package")
    (license license:asl2.0)))

(define-public rust-pyo3-macros-0.13
  (package
    (name "rust-pyo3-macros")
    (version "0.13.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pyo3-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fxi5lx5dl7xh469gr5xckyjy3r3c5dqypzxcj0fbhzf1hq2qzx4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pyo3-macros-backend" ,rust-pyo3-macros-backend-0.13)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/pyo3/pyo3")
    (synopsis "Proc macros for PyO3 package")
    (description "Proc macros for PyO3 package")
    (license license:asl2.0)))

(define-public rust-inventory-impl-0.1
  (package
    (name "rust-inventory-impl")
    (version "0.1.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "inventory-impl" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lgs8kia3284s34g7078j820cn2viyb6cij86swklwhn93lr9h3m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/dtolnay/inventory")
    (synopsis "Implementation of macros for the `inventory` crate")
    (description "Implementation of macros for the `inventory` crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-ghost-0.1
  (package
    (name "rust-ghost")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ghost" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0yalg3g1g3cz63n3phy7cdhh7p2qd220mrpxy96alwxbpqdwynqs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/dtolnay/ghost")
    (synopsis "Define your own PhantomData")
    (description "Define your own PhantomData")
    (license (list license:expat license:asl2.0))))

(define-public rust-inventory-0.1
  (package
    (name "rust-inventory")
    (version "0.1.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "inventory" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0zzz5sgrkxv1rpim4ihaidzf6jgha919xm4svcrmxjafh3xpw3qg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ctor" ,rust-ctor-0.1)
         ("rust-ghost" ,rust-ghost-0.1)
         ("rust-inventory-impl" ,rust-inventory-impl-0.1))))
    (home-page "https://github.com/dtolnay/inventory")
    (synopsis "Typed distributed plugin registration")
    (description "Typed distributed plugin registration")
    (license (list license:expat license:asl2.0))))

(define-public rust-indoc-impl-0.3
  (package
    (name "rust-indoc-impl")
    (version "0.3.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indoc-impl" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w58yg249kmzsn75kcj34qaxqh839l1hsaj3bzggy3q03wb6s16f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro-hack" ,rust-proc-macro-hack-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1)
         ("rust-unindent" ,rust-unindent-0.1))))
    (home-page "https://github.com/dtolnay/indoc")
    (synopsis "Indented document literals")
    (description "Indented document literals")
    (license (list license:expat license:asl2.0))))

(define-public rust-indoc-0.3
  (package
    (name "rust-indoc")
    (version "0.3.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indoc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1n2fd2wm1h005hd7pjgx4gv5ymyq4sxqn8z0ssw6xchgqs5ilx27"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-indoc-impl" ,rust-indoc-impl-0.3)
         ("rust-proc-macro-hack" ,rust-proc-macro-hack-0.5))))
    (home-page "https://github.com/dtolnay/indoc")
    (synopsis "Indented document literals")
    (description "Indented document literals")
    (license (list license:expat license:asl2.0))))

(define-public rust-pyo3-0.13
  (package
    (name "rust-pyo3")
    (version "0.13.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pyo3" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hq965lgi25dn578fpn9hjva6zjr1c8rl7lxywijq44aw7lbhds8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-ctor" ,rust-ctor-0.1)
         ("rust-hashbrown" ,rust-hashbrown-0.9)
         ("rust-indoc" ,rust-indoc-0.3)
         ("rust-inventory" ,rust-inventory-0.1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-num-bigint" ,rust-num-bigint-0.3)
         ("rust-num-complex" ,rust-num-complex-0.3)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-paste" ,rust-paste-0.1)
         ("rust-pyo3-macros" ,rust-pyo3-macros-0.13)
         ("rust-serde" ,rust-serde-1)
         ("rust-unindent" ,rust-unindent-0.1))))
    (home-page "https://github.com/pyo3/pyo3")
    (synopsis "Bindings to Python interpreter")
    (description "Bindings to Python interpreter")
    (license license:asl2.0)))

(define-public rust-indenter-0.3
  (package
    (name "rust-indenter")
    (version "0.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indenter" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10y6i6y4ls7xsfsc1r3p5j2hhbxhaqnk5zzk8aj52b14v05ba8yf"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/yaahc/indenter")
    (synopsis
      "A formatter wrapper that indents the text, designed for error display impls
")
    (description
      "This package provides a formatter wrapper that indents the text, designed for error display impls
")
    (license (list license:expat license:asl2.0))))

(define-public rust-eyre-0.6
  (package
    (name "rust-eyre")
    (version "0.6.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "eyre" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0awxjsn1bwa43kwv1ycgn1qy9zs66syddjcidxfvz1pasp8kj4i2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-indenter" ,rust-indenter-0.3)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-pyo3" ,rust-pyo3-0.13))))
    (home-page "https://github.com/yaahc/eyre")
    (synopsis
      "Flexible concrete Error Reporting type built on std::error::Error with customizable Reports")
    (description
      "Flexible concrete Error Reporting type built on std::error::Error with customizable Reports")
    (license (list license:expat license:asl2.0))))

(define-public rust-tracing-error-0.1
  (package
    (name "rust-tracing-error")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tracing-error" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "092y3357af6058mdw7nmr7sysqdka8b4cyaqz940fl2a7nwc1mxl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-tracing" ,rust-tracing-0.1)
         ("rust-tracing-subscriber" ,rust-tracing-subscriber-0.2))))
    (home-page "https://tokio.rs")
    (synopsis "Utilities for enriching errors with `tracing`.
")
    (description "Utilities for enriching errors with `tracing`.
")
    (license license:expat)))

(define-public rust-owo-colors-1
  (package
    (name "rust-owo-colors")
    (version "1.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "owo-colors" version))
        (file-name (string-append name "-" version ".tar.gz"))
	(patches '("endgame/packages/patches/rust-owo-colors-1-unstable-features.patch"))
        (sha256
          (base32 "0rybl2lvhaycpkpaq45099idp5ny7nv4sqsafz0cvfqw1wjfy9vz"))))
    (build-system cargo-build-system)
    (arguments
      `(;#:skip-build? #t
	#:tests? #f ; tests fail to build
	#:cargo-inputs
	(("rust-atty" ,rust-atty-0.2))
        #:phases
        (modify-phases %standard-phases
         (add-after 'unpack 'enable-unstable-features
          (lambda* _
            (setenv "RUSTC_BOOTSTRAP" "1"))))))
    (home-page "https://github.com/jam1garner/owo-colors")
    (synopsis "Zero-allocation terminal colors that'll make people go owo")
    (description "Zero-allocation terminal colors that'll make people go owo")
    (license license:expat)))

(define-public rust-color-spantrace-0.1
  (package
    (name "rust-color-spantrace")
    (version "0.1.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "color-spantrace" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1lb2li71zvpxp80nck98gcqbqm3dnmp43pnlvm52z9x8livy9vmn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-once-cell" ,rust-once-cell-1)
         ("rust-owo-colors" ,rust-owo-colors-1)
         ("rust-tracing-core" ,rust-tracing-core-0.1)
         ("rust-tracing-error" ,rust-tracing-error-0.1))))
    (home-page "https://github.com/yaahc/color-spantrace")
    (synopsis
      "A pretty printer for tracing_error::SpanTrace based on color-backtrace")
    (description
      "This package provides a pretty printer for tracing_error::SpanTrace based on color-backtrace")
    (license (list license:expat license:asl2.0))))

(define-public rust-color-eyre-0.5
  (package
    (name "rust-color-eyre")
    (version "0.5.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "color-eyre" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dspj58bk57f9hiqlvbz25rik92i4a95iwa2dl4pg8g8grlqa60z"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-color-spantrace" ,rust-color-spantrace-0.1)
         ("rust-eyre" ,rust-eyre-0.6)
         ("rust-indenter" ,rust-indenter-0.3)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-owo-colors" ,rust-owo-colors-1)
         ("rust-tracing-error" ,rust-tracing-error-0.1)
         ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/yaahc/color-eyre")
    (synopsis
      "An error report handler for panics and eyre::Reports for colorful, consistent, and well formatted error reports for all kinds of errors.")
    (description
      "An error report handler for panics and eyre::Reports for colorful, consistent, and well formatted error reports for all kinds of errors.")
    (license (list license:expat license:asl2.0))))

(define-public rust-binread-derive-2
  (package
    (name "rust-binread-derive")
    (version "2.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "binread_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1v8zxycf337qfbsaq1vs3w5skclfikvd9x5i0kl4wwgiklh755hx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-either" ,rust-either-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/jam1garner/binread")
    (synopsis "Derive macro for binread")
    (description "Derive macro for binread")
    (license license:expat)))

(define-public rust-array-init-2
  (package
    (name "rust-array-init")
    (version "2.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "array-init" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ilfd4hja0i8gjm4n2p29ydcsaicin3w54750bkcavqp49acqib9"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/Manishearth/array-init/")
    (synopsis "Safe wrapper for initializing fixed-size arrays")
    (description "Safe wrapper for initializing fixed-size arrays")
    (license (list license:expat license:asl2.0))))

(define-public rust-binread-2
  (package
    (name "rust-binread")
    (version "2.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "binread" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "13s1wrmrsd1cv4yx9cglr5fkh61nwyi0p4frjysyjy35ivy8sn8n"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-array-init" ,rust-array-init-2)
         ("rust-binread-derive" ,rust-binread-derive-2)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-rustversion" ,rust-rustversion-1))))
    (home-page "https://github.com/jam1garner/binread")
    (synopsis
      "A Rust crate for helping read structs from binary data using â\x9c¨macro magicâ\x9c¨")
    (description
      "This package provides a Rust crate for helping read structs from binary data using â\x9c¨macro magicâ\x9c¨")
    (license license:expat)))

(define-public rust-espflash-1
  (package
    (name "rust-espflash")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "espflash" version))
        (file-name (string-append name "-" version ".tar.gz"))
	(patches '("endgame/packages/patches/rust-espflash-enable-unstable-features.patch"))
        (sha256
          (base32 "0lxv18bgab7l4v2bw8rjsi6fld7yxp2969wvf0hi4xyfrjj7fpl7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:tests? #f ; https://github.com/esp-rs/espflash/issues/73
	#:rust ,rust-1.52
	#:cargo-inputs
        (("rust-binread" ,rust-binread-2)
         ("rust-bytemuck" ,rust-bytemuck-1)
         ("rust-color-eyre" ,rust-color-eyre-0.5)
         ("rust-csv" ,rust-csv-1)
         ("rust-directories-next" ,rust-directories-next-2)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-indicatif" ,rust-indicatif-0.16)
         ("rust-md5" ,rust-md5-0.7)
         ("rust-miette" ,rust-miette-3)
         ("rust-pico-args" ,rust-pico-args-0.4)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-plain" ,rust-serde-plain-1)
         ("rust-serial" ,rust-serial-0.4)
         ("rust-sha2" ,rust-sha2-0.9)
         ("rust-slip-codec" ,rust-slip-codec-0.2)
         ("rust-strum" ,rust-strum-0.22)
         ("rust-strum-macros" ,rust-strum-macros-0.22)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-xmas-elf" ,rust-xmas-elf-0.8))
        #:phases
        (modify-phases %standard-phases
          (add-after 'unpack 'enable-unstable-features
          (lambda* _
            (setenv "RUSTC_BOOTSTRAP" "1")))
          (add-before 'check 'test-fails
          (lambda* _
            (display (getcwd)))))))
    (home-page "https://github.com/esp-rs/espflash")
    (synopsis "ESP8266 and ESP32 serial flasher")
    (description "ESP8266 and ESP32 serial flasher")
    (license license:gpl2)))

(define-public rust-serial-windows-0.4
  (package
    (name "rust-serial-windows")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serial-windows" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ql1vjy57g2jf218bhmgr98i41faq0v5vzdx3g9payi6fsvx7ihm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-serial-core" ,rust-serial-core-0.4))))
    (home-page "https://github.com/dcuddeback/serial-rs")
    (synopsis "Serial port implementation for Windows.")
    (description "Serial port implementation for Windows.")
    (license license:expat)))

(define-public rust-ioctl-rs-0.1
  (package
    (name "rust-ioctl-rs")
    (version "0.1.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ioctl-rs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0zdrgqxblrwm4ym8pwrr7a4dwjzxrvr1k0qjx6rk1vjwi480b5zp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/dcuddeback/ioctl-rs")
    (synopsis "Rust bindings for system ioctls.")
    (description "Rust bindings for system ioctls.")
    (license license:expat)))

(define-public rust-serial-unix-0.4
  (package
    (name "rust-serial-unix")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serial-unix" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dyaaca8g4q5qzc2l01yirzs6igmhc9agg4w8m5f4rnqr6jbqgzh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ioctl-rs" ,rust-ioctl-rs-0.1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-serial-core" ,rust-serial-core-0.4)
         ("rust-termios" ,rust-termios-0.2))))
    (home-page "https://github.com/dcuddeback/serial-rs")
    (synopsis "Serial port implementation for Unix.")
    (description "Serial port implementation for Unix.")
    (license license:expat)))

(define-public rust-serial-core-0.4
  (package
    (name "rust-serial-core")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serial-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10a5lvllz3ljva66bqakrn8cxb3pkaqyapqjw9x760al6jdj0iiz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/dcuddeback/serial-rs")
    (synopsis "Rust abstractions for serial ports.")
    (description "Rust abstractions for serial ports.")
    (license license:expat)))

(define-public rust-serial-0.4
  (package
    (name "rust-serial")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serial" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11iyvc1z123hn7zl6bk5xpf6xdlsb33qh6xa7g0pghqgayb7l8x1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serial-core" ,rust-serial-core-0.4)
         ("rust-serial-unix" ,rust-serial-unix-0.4)
         ("rust-serial-windows" ,rust-serial-windows-0.4))))
    (home-page "https://github.com/dcuddeback/serial-rs")
    (synopsis "Rust library for accessing serial ports.")
    (description "Rust library for accessing serial ports.")
    (license license:expat)))

(define-public rust-pico-args-0.4
  (package
    (name "rust-pico-args")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pico-args" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0s646i0pbcck300rqldb21m151zxp66m3mdskha063blrfbcv2yv"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/RazrFalcon/pico-args")
    (synopsis "An ultra simple CLI arguments parser.")
    (description "An ultra simple CLI arguments parser.")
    (license license:expat)))

(define-public rust-signal-hook-mio-0.2
  (package
    (name "rust-signal-hook-mio")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook-mio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1m3yc37dxdq4ym0x7i2b9aqfnlhivwm7mvls0yzcbwn4y5kmiz99"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-mio" ,rust-mio-0.7)
         ("rust-mio" ,rust-mio-0.6)
         ("rust-mio-uds" ,rust-mio-uds-0.6)
         ("rust-signal-hook" ,rust-signal-hook-0.3))))
    (home-page "https://github.com/vorner/signal-hook")
    (synopsis "MIO support for signal-hook")
    (description "MIO support for signal-hook")
    (license (list license:asl2.0 license:expat))))

(define-public rust-signal-hook-registry-1
  (package
    (name "rust-signal-hook-registry")
    (version "1.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook-registry" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1c2mhijg54y6c1zi4630yki1vpq3z96ljfnsrdy0rb64ilr767p5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/vorner/signal-hook")
    (synopsis "Backend crate for signal-hook")
    (description "Backend crate for signal-hook")
    (license (list license:asl2.0 license:expat))))

(define-public rust-signal-hook-0.3
  (package
    (name "rust-signal-hook")
    (version "0.3.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1lgg8rwyz97pqkpg4ii7iswvs5mx8sgg2pl2ahlil9vyfcfqk64w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-signal-hook-registry" ,rust-signal-hook-registry-1))))
    (home-page "https://github.com/vorner/signal-hook")
    (synopsis "Unix signal handling")
    (description "Unix signal handling")
    (license (list license:asl2.0 license:expat))))

(define-public rust-crossterm-winapi-0.8
  (package
    (name "rust-crossterm-winapi")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossterm_winapi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1crqha8wp2nl1xsg6p409bi7k19cdc5l1l1h0w1farnzcgiifgvp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/crossterm-rs/crossterm-winapi")
    (synopsis
      "WinAPI wrapper that provides some basic simple abstractions around common WinAPI calls")
    (description
      "WinAPI wrapper that provides some basic simple abstractions around common WinAPI calls")
    (license license:expat)))

(define-public rust-crossterm-0.21
  (package
    (name "rust-crossterm")
    (version "0.21.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossterm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "126ps5vg9hwh4qql6l674yci7x5r8izc83acalwyz8bigwi48va8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-crossterm-winapi" ,rust-crossterm-winapi-0.8)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-mio" ,rust-mio-0.7)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-serde" ,rust-serde-1)
         ("rust-signal-hook" ,rust-signal-hook-0.3)
         ("rust-signal-hook-mio" ,rust-signal-hook-mio-0.2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/crossterm-rs/crossterm")
    (synopsis "A crossplatform terminal library for manipulating terminals.")
    (description
      "This package provides a crossplatform terminal library for manipulating terminals.")
    (license license:expat)))

(define-public rust-espmonitor-0.5
  (package
    (name "rust-espmonitor")
    (version "0.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "espmonitor" version))
        (file-name (string-append name "-" version ".tar.gz"))
	(patches '("endgame/packages/patches/rust-espmonitor-enable-unstable-features.patch"))
        (sha256
          (base32 "09g2s9cjlgi61i4bjn1614djqq9lwa0y2f6g9c912cgdf96y966v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:rust ,rust-1.52
	#:cargo-inputs
        (("rust-crossterm" ,rust-crossterm-0.21)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-nix" ,rust-nix-0.22)
         ("rust-pico-args" ,rust-pico-args-0.4)
         ("rust-regex" ,rust-regex-1)
         ("rust-serial" ,rust-serial-0.4))
        #:phases
        (modify-phases %standard-phases
          (add-after 'unpack 'enable-unstable-features
          (lambda* _
            (setenv "RUSTC_BOOTSTRAP" "1"))))))
    (home-page "https://github.com/esp-rs/espmonitor")
    (synopsis "Monitors ESP8266 and ESP32 execution over serial")
    (description "Monitors ESP8266 and ESP32 execution over serial")
    (license license:gpl3)))
