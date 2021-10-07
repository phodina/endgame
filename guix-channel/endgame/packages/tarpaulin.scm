(define-module (endgame packages tarpaulin)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-graphics)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages ssh)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-matchers-0.0
  (package
    (name "rust-matchers")
    (version "0.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "matchers" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1q8ckqmkjqkznvdi9x0z769yz2bmvlqcwx51ad2lpk4mfmgpi6gh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs (("rust-regex-automata" ,rust-regex-automata-0.1))))
    (home-page "https://github.com/hawkw/matchers")
    (synopsis "Regex matching on character and byte streams.
")
    (description "Regex matching on character and byte streams.
")
    (license license:expat)))

(define-public rust-tracing-log-0.1
  (package
    (name "rust-tracing-log")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tracing-log" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qv1cwvdqrgvizkszbff4fvkw0m3nn5yz68r3yaw2hcflivk94m6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-env-logger" ,rust-env-logger-0.7)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-tracing-core" ,rust-tracing-core-0.1))))
    (home-page "https://tokio.rs")
    (synopsis
      "Provides compatibility between `tracing` and the `log` crate.
")
    (description
      "This package provides compatibility between `tracing` and the `log` crate.
")
    (license license:expat)))

(define-public rust-tracing-core-0.1
  (package
    (name "rust-tracing-core")
    (version "0.1.21")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tracing-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1r262wskhm6wmc5i2bxz44nglyzqaq3x50s0h5q0ffdq6xbdckhz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lazy-static" ,rust-lazy-static-1))))
    (home-page "https://tokio.rs")
    (synopsis "Core primitives for application-level tracing.
")
    (description "Core primitives for application-level tracing.
")
    (license license:expat)))

(define-public rust-tracing-subscriber-0.2
  (package
    (name "rust-tracing-subscriber")
    (version "0.2.24")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tracing-subscriber" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qvbz1s1vc4lz2ld5imyav6q23fa5frx423ric2ggfp3py6mdl7x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ansi-term" ,rust-ansi-term-0.12)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-matchers" ,rust-matchers-0.0)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-sharded-slab" ,rust-sharded-slab-0.1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-thread-local" ,rust-thread-local-1)
         ("rust-tracing" ,rust-tracing-0.1)
         ("rust-tracing-core" ,rust-tracing-core-0.1)
         ("rust-tracing-log" ,rust-tracing-log-0.1)
         ("rust-tracing-serde" ,rust-tracing-serde-0.1))))
    (home-page "https://tokio.rs")
    (synopsis
      "Utilities for implementing and composing `tracing` subscribers.
")
    (description
      "Utilities for implementing and composing `tracing` subscribers.
")
    (license license:expat)))

(define-public rust-rustc-version-0.4
  (package
    (name "rust-rustc-version")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rustc_version" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0rpk9rcdk405xhbmgclsh4pai0svn49x35aggl4nhbkd4a2zb85z"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-semver" ,rust-semver-1))))
    (home-page "https://github.com/Kimundi/rustc-version-rs")
    (synopsis
      "A library for querying the version of a installed rustc compiler")
    (description
      "This package provides a library for querying the version of a installed rustc compiler")
    (license (list license:expat license:asl2.0))))

(define-public rust-rustc-demangle-0.1
  (package
    (name "rust-rustc-demangle")
    (version "0.1.21")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rustc-demangle" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hn3xyd2n3bg3jnc5a5jbzll32n4r5a65bqzs287l30m5c53xw3y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/alexcrichton/rustc-demangle")
    (synopsis "Rust compiler symbol demangling.
")
    (description "Rust compiler symbol demangling.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-procfs-0.10
  (package
    (name "rust-procfs")
    (version "0.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "procfs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0w2cijhmx7yjrv6fw69nqlxdp1gwpia1cdhc623y9vxfzv549qwm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-hex" ,rust-hex-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/eminence/procfs")
    (synopsis "Interface to the linux procfs pseudo-filesystem")
    (description "Interface to the linux procfs pseudo-filesystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-humantime-serde-1
  (package
    (name "rust-humantime-serde")
    (version "1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "humantime-serde" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0n208zzy69f7pgwcm1d0id4nzhssxn3z3zy7ki3dpkaazmnaad5c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-humantime" ,rust-humantime-2) ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/jean-airoldie/humantime-serde")
    (synopsis "Serde support for the `humantime` crate")
    (description "Serde support for the `humantime` crate")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-coveralls-api-0.5
  (package
    (name "rust-coveralls-api")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "coveralls-api" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0z8mwsr47z5fcbqxzcb5mprzzb7f5wy0qkkfkwibgrk4bpr5xi4l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-curl" ,rust-curl-0.4)
         ("rust-deflate" ,rust-deflate-0.8)
         ("rust-md5" ,rust-md5-0.7)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://github.com/xd009642/coveralls-api")
    (synopsis
      "API Bindings for coveralls.io. Deals with report creation and submission.")
    (description
      "API Bindings for coveralls.io.  Deals with report creation and submission.")
    (license (list license:expat license:asl2.0))))

(define-public rust-cargo-metadata-0.14
  (package
    (name "rust-cargo-metadata")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cargo_metadata" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "16hhak3gips08lqp0x7s9wnfm139hy0a3nm0k4pman7m6lqvv5y2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-camino" ,rust-camino-1)
         ("rust-cargo-platform" ,rust-cargo-platform-0.1)
         ("rust-derive-builder" ,rust-derive-builder-0.9)
         ("rust-semver" ,rust-semver-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://github.com/oli-obk/cargo_metadata")
    (synopsis "structured access to the output of `cargo metadata`")
    (description "structured access to the output of `cargo metadata`")
    (license license:expat)))

(define-public rust-cargo-tarpaulin-0.18
  (package
    (name "rust-cargo-tarpaulin")
    (version "0.18.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cargo-tarpaulin" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11wypj2p96dr1c349a1flb2xighpvnq8kw9p19rwhf3x82r0x9lc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-cargo-metadata" ,rust-cargo-metadata-0.14)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-clap" ,rust-clap-2)
         ("rust-coveralls-api" ,rust-coveralls-api-0.5)
         ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
         ("rust-gimli" ,rust-gimli-0.25)
         ("rust-git2" ,rust-git2-0.13)
         ("rust-humantime-serde" ,rust-humantime-serde-1)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-memmap" ,rust-memmap-0.7)
         ("rust-nix" ,rust-nix-0.22)
         ("rust-object" ,rust-object-0.24)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-procfs" ,rust-procfs-0.10)
         ("rust-quick-xml" ,rust-quick-xml-0.22)
         ("rust-quote" ,rust-quote-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
         ("rust-rustc-version" ,rust-rustc-version-0.4)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-syn" ,rust-syn-1)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-tracing" ,rust-tracing-0.1)
         ("rust-tracing-subscriber" ,rust-tracing-subscriber-0.2)
         ("rust-walkdir" ,rust-walkdir-2))))
    (native-inputs `(("pkg-config" ,pkg-config)))
    (inputs `(("zlib" ,zlib)
	      ("libssh" ,libssh)
	      ("openssl" ,openssl)))
    (home-page "https://github.com/xd009642/tarpaulin")
    (synopsis
      "Cargo-Tarpaulin is a tool to determine code coverage achieved via tests")
    (description
      "Cargo-Tarpaulin is a tool to determine code coverage achieved via tests")
    (license (list license:expat license:asl2.0))))
