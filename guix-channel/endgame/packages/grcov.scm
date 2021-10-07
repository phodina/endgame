(define-module (endgame packages grcov)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-tera-1
  (package
    (name "rust-tera")
    (version "1.12.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tera" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wnlanzy4ilrr50ic22rwffmyx0ygxn4lf8rl4zgx9bdlkcb15dz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-chrono-tz" ,rust-chrono-tz-0.5)
         ("rust-globwalk" ,rust-globwalk-0.8)
         ("rust-humansize" ,rust-humansize-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-percent-encoding" ,rust-percent-encoding-2)
         ("rust-pest" ,rust-pest-2)
         ("rust-pest-derive" ,rust-pest-derive-2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-slug" ,rust-slug-0.1)
         ("rust-unic-segment" ,rust-unic-segment-0.9))))
    (home-page "https://tera.netlify.com/")
    (synopsis "Template engine based on Jinja2/Django templates")
    (description "Template engine based on Jinja2/Django templates")
    (license license:expat)))

(define-public rust-tcmalloc-sys-0.3
  (package
    (name "rust-tcmalloc-sys")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tcmalloc-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0h0zzya214rd5ljrasyc47j1v9jrkwk5jv8hqb135ljxcczdfyiv"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/jmcomets/tcmalloc-rs")
    (synopsis "Drop-in global allocator using tcmalloc")
    (description "Drop-in global allocator using tcmalloc")
    (license (list license:expat license:asl2.0))))

(define-public rust-tcmalloc-0.3
  (package
    (name "rust-tcmalloc")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tcmalloc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "16w1kpfzv093mljk9k2skldbwhcfw06amgk7xppcb8c47l8halip"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-tcmalloc-sys" ,rust-tcmalloc-sys-0.3))))
    (home-page "https://github.com/jmcomets/tcmalloc-rs")
    (synopsis "Drop-in global allocator using tcmalloc")
    (description "Drop-in global allocator using tcmalloc")
    (license (list license:expat license:asl2.0))))

(define-public rust-msvc-demangler-0.9
  (package
    (name "rust-msvc-demangler")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "msvc-demangler" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1j7kkmbd9yvhk7dmvd29pqcg9mcjdw5p1ia1kihh16zss1nprdmz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1))))
    (home-page "https://github.com/mstange/msvc-demangler-rust")
    (synopsis
      "A rust library that demangles / undecorates C++ symbols mangled by MSVC")
    (description
      "This package provides a rust library that demangles / undecorates C++ symbols mangled by MSVC")
    (license (list license:expat license:ncsa))))

(define-public rust-symbolic-demangle-8
  (package
    (name "rust-symbolic-demangle")
    (version "8.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "symbolic-demangle" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zd0vs7gpvyxh5lapkvkcz3m93jl1m5cd1b006biqbhrpdhv9lif"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-cpp-demangle" ,rust-cpp-demangle-0.3)
         ("rust-msvc-demangler" ,rust-msvc-demangler-0.9)
         ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
         ("rust-symbolic-common" ,rust-symbolic-common-8))))
    (home-page "https://github.com/getsentry/symbolic")
    (synopsis
      "A library to demangle symbols from various languages and compilers.
")
    (description
      "This package provides a library to demangle symbols from various languages and compilers.
")
    (license license:expat)))

(define-public rust-debugid-0.7
  (package
    (name "rust-debugid")
    (version "0.7.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "debugid" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fh2nl4dzbcm3bn9knb30phprm1mhr826wb268m7w2gjqalga77r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1) ("rust-uuid" ,rust-uuid-0.8))))
    (home-page "https://sentry.io/")
    (synopsis "Common reusable types for implementing the sentry.io protocol.")
    (description
      "Common reusable types for implementing the sentry.io protocol.")
    (license license:asl2.0)))

(define-public rust-symbolic-common-8
  (package
    (name "rust-symbolic-common")
    (version "8.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "symbolic-common" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "059awraxplrkys8xw1hpgvwvpa58hm0823671813ppwhmd6gchlp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-debugid" ,rust-debugid-0.7)
         ("rust-memmap" ,rust-memmap-0.7)
         ("rust-serde" ,rust-serde-1)
         ("rust-stable-deref-trait" ,rust-stable-deref-trait-1)
         ("rust-uuid" ,rust-uuid-0.8))))
    (home-page "https://github.com/getsentry/symbolic")
    (synopsis
      "Common types and utilities for symbolic, a library to symbolicate and process
stack traces from native applications, minidumps, minified JavaScripts or
ProGuard optimized Android apps.
")
    (description
      "Common types and utilities for symbolic, a library to symbolicate and process
stack traces from native applications, minidumps, minified JavaScripts or
ProGuard optimized Android apps.
")
    (license license:expat)))

(define-public rust-structopt-derive-0.4
  (package
    (name "rust-structopt-derive")
    (version "0.4.16")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "structopt-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fnhfbvqasx2n9ak57vi3d2r6d55xmjz2vfg4lqsqhwr5j586k8k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-heck" ,rust-heck-0.3)
         ("rust-proc-macro-error" ,rust-proc-macro-error-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/TeXitoi/structopt")
    (synopsis
      "Parse command line argument by defining a struct, derive crate.")
    (description
      "Parse command line argument by defining a struct, derive crate.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-paw-raw-1
  (package
    (name "rust-paw-raw")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "paw-raw" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wk76ipp34gjh42vivmgdkb2rgr26gwhn34gk7z5l378ixk5j2vz"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/rust-cli/paw")
    (synopsis "Traits to implement custom Paw implementations")
    (description "Traits to implement custom Paw implementations")
    (license (list license:expat license:asl2.0))))

(define-public rust-paw-attributes-1
  (package
    (name "rust-paw-attributes")
    (version "1.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "paw-attributes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fda1v7y5pfmg8d2v7m0pyvif6c44qjz914jjn718pdyclrmhd8g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/rust-cli/paw")
    (synopsis "Proc Macro attributes for the Paw crate.")
    (description "Proc Macro attributes for the Paw crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-paw-1
  (package
    (name "rust-paw")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "paw" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1sc481y42rb08hmww525m4539ppl8k0w14kwxp13vg2dasdzrh09"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-paw-attributes" ,rust-paw-attributes-1)
         ("rust-paw-raw" ,rust-paw-raw-1))))
    (home-page "https://github.com/rust-cli/paw")
    (synopsis "CLI argument parser.")
    (description "CLI argument parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-structopt-0.3
  (package
    (name "rust-structopt")
    (version "0.3.23")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "structopt" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yhb7kr7r0a7jvsz7wi6r1d7kllsivbg2g07vc5mxqk7y479b7dz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-clap" ,rust-clap-2)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-paw" ,rust-paw-1)
         ("rust-structopt-derive" ,rust-structopt-derive-0.4))))
    (home-page "https://github.com/TeXitoi/structopt")
    (synopsis "Parse command line argument by defining a struct.")
    (description "Parse command line argument by defining a struct.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-simplelog-0.10
  (package
    (name "rust-simplelog")
    (version "0.10.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "simplelog" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ndr5qfj34crkxqsc31a9w5c2lvqn1pw70pf03pj0hhm8bk4ml45"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-log" ,rust-log-0.4)
         ("rust-termcolor" ,rust-termcolor-1))))
    (home-page "https://github.com/drakulix/simplelog.rs")
    (synopsis "A simple and easy-to-use logging facility for Rust's log crate")
    (description
      "This package provides a simple and easy-to-use logging facility for Rust's log crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-fomat-macros-0.3
  (package
    (name "rust-fomat-macros")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fomat-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0cx8qrr5cskbyf2lbfyxs9gp3cx8q45kjszba1hmb7wziim5ampy"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/krdln/fomat-macros")
    (synopsis
      "Alternative syntax for print/write/format-like macros with a small templating language")
    (description
      "Alternative syntax for print/write/format-like macros with a small templating language")
    (license license:expat)))

(define-public rust-rustc-cfg-0.4
  (package
    (name "rust-rustc-cfg")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rustc-cfg" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vqvjb04zzfp14dwvvzs7ps47qvq25xibk2xfgw394yhgkz23lla"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-failure" ,rust-failure-0.1))))
    (home-page "https://github.com/japaric/rustc-cfg")
    (synopsis "Runs `rustc --print cfg` and parses the output")
    (description "Runs `rustc --print cfg` and parses the output")
    (license (list license:expat license:asl2.0))))

(define-public rust-cargo-metadata-0.11
  (package
    (name "rust-cargo-metadata")
    (version "0.11.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cargo_metadata" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1925jkird2fblia9lpz6kgjw4xcqvbda26592mhww0j4pb4v5wh6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-semver" ,rust-semver-0.11)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://github.com/oli-obk/cargo_metadata")
    (synopsis "structured access to the output of `cargo metadata`")
    (description "structured access to the output of `cargo metadata`")
    (license license:expat)))

(define-public rust-cargo-binutils-0.3
  (package
    (name "rust-cargo-binutils")
    (version "0.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cargo-binutils" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11lsnp8l1jlv4d1iz76863a2h9jpwi41s5sj2njb2w1x41sfj0bd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-cargo-metadata" ,rust-cargo-metadata-0.11)
         ("rust-clap" ,rust-clap-2)
         ("rust-regex" ,rust-regex-1)
         ("rust-rustc-cfg" ,rust-rustc-cfg-0.4)
         ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
         ("rust-rustc-version" ,rust-rustc-version-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-toml" ,rust-toml-0.5))))
    (home-page "https://github.com/rust-embedded/cargo-binutils/")
    (synopsis "Proxy for LLVM tools like llvm-nm, llvm-objdump and llvm-size")
    (description
      "Proxy for LLVM tools like llvm-nm, llvm-objdump and llvm-size")
    (license (list license:expat license:asl2.0))))

(define-public rust-grcov-0.8
  (package
    (name "rust-grcov")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "grcov" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0cdk60pxrk5fwc2rmjwc4gqd1n4080dky8i0d3rcr0m8gq6nn1vi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-cargo-binutils" ,rust-cargo-binutils-0.3)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-crossbeam" ,rust-crossbeam-0.8)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-fomat-macros" ,rust-fomat-macros-0.3)
         ("rust-globset" ,rust-globset-0.4)
         ("rust-is-executable" ,rust-is-executable-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-md-5" ,rust-md-5-0.9)
         ("rust-num-cpus" ,rust-num-cpus-1)
         ("rust-quick-xml" ,rust-quick-xml-0.22)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-semver" ,rust-semver-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-simplelog" ,rust-simplelog-0.10)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-structopt" ,rust-structopt-0.3)
         ("rust-symbolic-common" ,rust-symbolic-common-8)
         ("rust-symbolic-demangle" ,rust-symbolic-demangle-8)
         ("rust-tcmalloc" ,rust-tcmalloc-0.3)
         ("rust-tempfile" ,rust-tempfile-3)
         ("rust-tera" ,rust-tera-1)
         ("rust-uuid" ,rust-uuid-0.8)
         ("rust-walkdir" ,rust-walkdir-2)
         ("rust-zip" ,rust-zip-0.5))
        #:cargo-development-inputs
        (("rust-pretty-assertions" ,rust-pretty-assertions-0.7))))
    (home-page "https://github.com/mozilla/grcov")
    (synopsis
      "Rust tool to collect and aggregate code coverage data for multiple source files")
    (description
      "Rust tool to collect and aggregate code coverage data for multiple source files")
    (license license:mpl2.0)))
