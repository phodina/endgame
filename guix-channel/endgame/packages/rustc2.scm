(define-public rust-strum-macros-0.16
  (package
    (name "rust-strum-macros")
    (version "0.16.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum_macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10awwslby71psnkh7ll1y27kdv2bps2dxfcjhp6scfa0fvgsfm00"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-heck" ,rust-heck-0.3)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/Peternator7/strum")
    (synopsis "Helpful macros for working with enums and strings")
    (description "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-strum-0.16
  (package
    (name "rust-strum")
    (version "0.16.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "08ld32irbvx3z6ndc9a7vfkxcgpsfvyf651kfqs03n8nibwghf31"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-strum-macros" ,rust-strum-macros-0.16))))
    (home-page "https://github.com/Peternator7/strum")
    (synopsis "Helpful macros for working with enums and strings")
    (description "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-serde-bencode-0.2
  (package
    (name "rust-serde-bencode")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_bencode" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03f3l6f390mpddn885vpi5hrc7919913724sxbxdl9h1mbdqnkck"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1)
         ("rust-serde-bytes" ,rust-serde-bytes-0.11))))
    (home-page "https://github.com/toby/serde-bencode")
    (synopsis "A Serde backed Bencode encoding/decoding library for Rust.")
    (description
      "This package provides a Serde backed Bencode encoding/decoding library for Rust.")
    (license license:expat)))

(define-public rust-c2rust-ast-exporter-0.15
  (package
    (name "rust-c2rust-ast-exporter")
    (version "0.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "c2rust-ast-exporter" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0q821dvhdbl2jvald96sg31y6cl5b36kajjr4ynw727si21jfrx8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bindgen" ,rust-bindgen-0.52)
         ("rust-clang-sys" ,rust-clang-sys-0.28)
         ("rust-cmake" ,rust-cmake-0.1)
         ("rust-env-logger" ,rust-env-logger-0.7)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-bytes" ,rust-serde-bytes-0.11)
         ("rust-serde-cbor" ,rust-serde-cbor-0.10))))
    (home-page "https://c2rust.com/")
    (synopsis "Clang AST extraction API for use in the C2Rust project")
    (description "Clang AST extraction API for use in the C2Rust project")
    (license license:bsd-3)))

(define-public rust-c2rust-transpile-0.15
  (package
    (name "rust-c2rust-transpile")
    (version "0.15.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "c2rust-transpile" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "05v1an4p4a4dbdgnp9y3kdw1n8ck12pj1j0lsm07k0nzlmc0qri0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-c2rust-ast-builder" ,rust-c2rust-ast-builder-0.15)
         ("rust-c2rust-ast-exporter" ,rust-c2rust-ast-exporter-0.15)
         ("rust-c2rust-ast-printer" ,rust-c2rust-ast-printer-0.15)
         ("rust-clap" ,rust-clap-2)
         ("rust-colored" ,rust-colored-1)
         ("rust-dtoa" ,rust-dtoa-0.4)
         ("rust-failure" ,rust-failure-0.1)
         ("rust-fern" ,rust-fern-0.5)
         ("rust-handlebars" ,rust-handlebars-2)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-itertools" ,rust-itertools-0.8)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-pathdiff" ,rust-pathdiff-0.1)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-bencode" ,rust-serde-bencode-0.2)
         ("rust-serde-bytes" ,rust-serde-bytes-0.11)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-strum" ,rust-strum-0.16)
         ("rust-strum-macros" ,rust-strum-macros-0.16))))
    (home-page "https://c2rust.com/")
    (synopsis "C2Rust transpiler implementation")
    (description "C2Rust transpiler implementation")
    (license license:bsd-3)))

(define-public rust-slotmap-0.4
  (package
    (name "rust-slotmap")
    (version "0.4.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "slotmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1cga58417vz6m0bazvicprb01mm1x690wy8rj7g8fyvnqn24dwvb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/orlp/slotmap")
    (synopsis "Slotmap data structure")
    (description "Slotmap data structure")
    (license license:zlib)))

(define-public rust-rlua-0.17
  (package
    (name "rust-rlua")
    (version "0.17.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rlua" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1l0kac2qc8n9hbyjr295xk4mzamq510lraslfnmpq8ywjabpnfck"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-bstr" ,rust-bstr-0.2)
         ("rust-cc" ,rust-cc-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/amethyst/rlua")
    (synopsis "High level bindings to Lua 5.x")
    (description "High level bindings to Lua 5.x")
    (license license:expat)))

(define-public rust-json-0.12
  (package
    (name "rust-json")
    (version "0.12.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "json" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1z9vybaaz3xq95bwmyln2ijmn4dmzj61xlz06jsc9dnzmxg2i3h7"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/maciejhirsz/json-rust")
    (synopsis "JSON implementation in Rust")
    (description "JSON implementation in Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-flamer-0.4
  (package
    (name "rust-flamer")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "flamer" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1avszq3fn4ix7p6wjfdkli6fjyxccks1qhzja92a6kpxakd35drn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-flame" ,rust-flame-0.2)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/llogiq/flamer")
    (synopsis "a procedural macro to insert `flame::start_guard(_)` calls")
    (description "a procedural macro to insert `flame::start_guard(_)` calls")
    (license license:asl2.0)))

(define-public rust-refpool-0.3
  (package
    (name "rust-refpool")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "refpool" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19pmjg8cvh0yz2s6qmgh167p8pgqh4asf3pjrqvcx2lhcj8zmprp"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/bodil/refpool")
    (synopsis "Efficient memory pool with reference counting")
    (description "Efficient memory pool with reference counting")
    (license unknown-license!)))

(define-public rust-sized-chunks-0.5
  (package
    (name "rust-sized-chunks")
    (version "0.5.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sized-chunks" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "063p5g0szd5gy8a43agd6kl800cz1d40cyvgjzzq3mqs6zm4946m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arbitrary" ,rust-arbitrary-0.4)
         ("rust-bitmaps" ,rust-bitmaps-2)
         ("rust-refpool" ,rust-refpool-0.3)
         ("rust-typenum" ,rust-typenum-1))))
    (home-page "https://github.com/bodil/sized-chunks")
    (synopsis "Efficient sized chunk datatypes")
    (description "Efficient sized chunk datatypes")
    (license unknown-license!)))

(define-public rust-refpool-0.2
  (package
    (name "rust-refpool")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "refpool" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0kd2qv9fnaln5ih8ggwpqgl6ygzr6gf1hpmf68ck8g36d3wpjs4m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crossbeam-queue" ,rust-crossbeam-queue-0.2))))
    (home-page "https://github.com/bodil/refpool")
    (synopsis "Efficient memory pool with reference counting")
    (description "Efficient memory pool with reference counting")
    (license unknown-license!)))

(define-public rust-im-rc-14
  (package
    (name "rust-im-rc")
    (version "14.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "im-rc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vmxz84fjkkj5mgrlc7vj4c5rw954i1if507g4cy0inmari7wgrh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arbitrary" ,rust-arbitrary-0.4)
         ("rust-bitmaps" ,rust-bitmaps-2)
         ("rust-proptest" ,rust-proptest-0.9)
         ("rust-quickcheck" ,rust-quickcheck-0.9)
         ("rust-rand-core" ,rust-rand-core-0.5)
         ("rust-rand-xoshiro" ,rust-rand-xoshiro-0.4)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-refpool" ,rust-refpool-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-sized-chunks" ,rust-sized-chunks-0.5)
         ("rust-typenum" ,rust-typenum-1)
         ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "http://immutable.rs/")
    (synopsis
      "Immutable collection datatypes (the fast but not thread safe version)")
    (description
      "Immutable collection datatypes (the fast but not thread safe version)")
    (license unknown-license!)))

(define-public rust-crates-io-0.31
  (package
    (name "rust-crates-io")
    (version "0.31.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crates-io" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0jhx0pgprlzypq037rkdsc2k3knlimx2vp5k7vwyvsa6iaa7gy89"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-curl" ,rust-curl-0.4)
         ("rust-percent-encoding" ,rust-percent-encoding-2)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/rust-lang/cargo")
    (synopsis "Helpers for interacting with crates.io
")
    (description "Helpers for interacting with crates.io")
    (license (list license:expat license:asl2.0))))

(define-public rust-cargo-0.44
  (package
    (name "rust-cargo")
    (version "0.44.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cargo" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "192isbnq1sjwawq66zgcl32a76v62iwygg64xqc7brdanx4p6lia"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-atty" ,rust-atty-0.2)
         ("rust-bytesize" ,rust-bytesize-1)
         ("rust-cargo-platform" ,rust-cargo-platform-0.1)
         ("rust-clap" ,rust-clap-2)
         ("rust-core-foundation" ,rust-core-foundation-0.7)
         ("rust-crates-io" ,rust-crates-io-0.31)
         ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.4)
         ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.7)
         ("rust-crypto-hash" ,rust-crypto-hash-0.3)
         ("rust-curl" ,rust-curl-0.4)
         ("rust-curl-sys" ,rust-curl-sys-0.4)
         ("rust-env-logger" ,rust-env-logger-0.7)
         ("rust-filetime" ,rust-filetime-0.2)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-fs2" ,rust-fs2-0.4)
         ("rust-fwdansi" ,rust-fwdansi-1)
         ("rust-git2" ,rust-git2-0.13)
         ("rust-git2-curl" ,rust-git2-curl-0.14)
         ("rust-glob" ,rust-glob-0.3)
         ("rust-hex" ,rust-hex-0.4)
         ("rust-home" ,rust-home-0.5)
         ("rust-humantime" ,rust-humantime-2)
         ("rust-ignore" ,rust-ignore-0.4)
         ("rust-im-rc" ,rust-im-rc-14)
         ("rust-jobserver" ,rust-jobserver-0.1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-lazycell" ,rust-lazycell-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-libgit2-sys" ,rust-libgit2-sys-0.12)
         ("rust-log" ,rust-log-0.4)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-miow" ,rust-miow-0.3)
         ("rust-num-cpus" ,rust-num-cpus-1)
         ("rust-opener" ,rust-opener-0.4)
         ("rust-openssl" ,rust-openssl-0.10)
         ("rust-percent-encoding" ,rust-percent-encoding-2)
         ("rust-pretty-env-logger" ,rust-pretty-env-logger-0.4)
         ("rust-remove-dir-all" ,rust-remove-dir-all-0.5)
         ("rust-rustc-workspace-hack" ,rust-rustc-workspace-hack-1)
         ("rust-rustfix" ,rust-rustfix-0.5)
         ("rust-same-file" ,rust-same-file-1)
         ("rust-semver" ,rust-semver-0.9)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-ignored" ,rust-serde-ignored-0.1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-shell-escape" ,rust-shell-escape-0.1)
         ("rust-strip-ansi-escapes" ,rust-strip-ansi-escapes-0.1)
         ("rust-tar" ,rust-tar-0.4)
         ("rust-tempfile" ,rust-tempfile-3)
         ("rust-termcolor" ,rust-termcolor-1)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-unicode-width" ,rust-unicode-width-0.1)
         ("rust-url" ,rust-url-2)
         ("rust-walkdir" ,rust-walkdir-2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://crates.io")
    (synopsis "Cargo, a package manager for Rust.
")
    (description "Cargo, a package manager for Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-c2rust-macros-0.15
  (package
    (name "rust-c2rust-macros")
    (version "0.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "c2rust-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hznb6c10hq9jnd2l14jkyyvsj138m7ip15zlv0jl6vdaglig6vc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://c2rust.com/")
    (synopsis "Procedural macro support crate for C2Rust")
    (description "Procedural macro support crate for C2Rust")
    (license license:bsd-3)))

(define-public rust-c2rust-ast-printer-0.15
  (package
    (name "rust-c2rust-ast-printer")
    (version "0.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "c2rust-ast-printer" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0r8m80m48s30zaz2bcpqgb38w2j24cs6kmxm8b11dn6mq7v9i7dm"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t #:cargo-inputs (("rust-log" ,rust-log-0.4))))
    (home-page "https://github.com/immunant/c2rust")
    (synopsis "Customized version of libsyntax rust pretty-printer")
    (description "Customized version of libsyntax rust pretty-printer")
    (license (list license:expat license:asl2.0))))

(define-public rust-c2rust-ast-builder-0.15
  (package
    (name "rust-c2rust-ast-builder")
    (version "0.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "c2rust-ast-builder" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1r6j3c4kzl32l7ha96skh3gjjwlyfdmy9b07i1z4lp0zk8nklh45"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://c2rust.com/")
    (synopsis "Rust AST builder support crate for the C2Rust project")
    (description "Rust AST builder support crate for the C2Rust project")
    (license license:bsd-3)))

(define-public rust-c2rust-refactor-0.15
  (package
    (name "rust-c2rust-refactor")
    (version "0.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "c2rust-refactor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hkhih3hspvi9mggbvw8nd4y9qiri8fysmah4ncad17ijacjn05i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-c2rust-ast-builder" ,rust-c2rust-ast-builder-0.15)
         ("rust-c2rust-ast-printer" ,rust-c2rust-ast-printer-0.15)
         ("rust-c2rust-macros" ,rust-c2rust-macros-0.15)
         ("rust-cargo" ,rust-cargo-0.44)
         ("rust-clap" ,rust-clap-2)
         ("rust-derive-more" ,rust-derive-more-0.99)
         ("rust-diff" ,rust-diff-0.1)
         ("rust-ena" ,rust-ena-0.13)
         ("rust-env-logger" ,rust-env-logger-0.7)
         ("rust-flame" ,rust-flame-0.2)
         ("rust-flamer" ,rust-flamer-0.4)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-json" ,rust-json-0.12)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-regex" ,rust-regex-1)
         ("rust-rlua" ,rust-rlua-0.17)
         ("rust-slotmap" ,rust-slotmap-0.4))))
    (home-page "https://c2rust.com/")
    (synopsis "C2Rust refactoring tool implementation")
    (description "C2Rust refactoring tool implementation")
    (license license:bsd-3)))

(define-public rust-c2rust-0.15
  (package
    (name "rust-c2rust")
    (version "0.15.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "c2rust" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1lcls32jshvjm21qbszrlxfiy5nacwj5lcxid2y5hb993hi61bwl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-c2rust-refactor" ,rust-c2rust-refactor-0.15)
         ("rust-c2rust-transpile" ,rust-c2rust-transpile-0.15)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-clap" ,rust-clap-2)
         ("rust-env-logger" ,rust-env-logger-0.7)
         ("rust-log" ,rust-log-0.4)
         ("rust-regex" ,rust-regex-1)
         ("rust-rustc-version" ,rust-rustc-version-0.2)
         ("rust-shlex" ,rust-shlex-0.1))))
    (home-page "https://c2rust.com/")
    (synopsis "C to Rust translation, refactoring, and cross-checking")
    (description "C to Rust translation, refactoring, and cross-checking")
    (license license:bsd-3)))
