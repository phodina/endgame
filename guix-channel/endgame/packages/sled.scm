(define-module (endgame packages sled)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-zerocopy-derive-0.2
  (package
    (name "rust-zerocopy-derive")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zerocopy-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1594sf9wwgpbavl1hb1avyz6n7km9apm8afc03x9y8h3spk3k76w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-syn" ,rust-syn-1)
         ("rust-synstructure" ,rust-synstructure-0.12))))
    (home-page
      "https://fuchsia.googlesource.com/fuchsia/+/HEAD/src/lib/zerocopy/zerocopy-derive")
    (synopsis "Custom derive for traits from the zerocopy crate")
    (description "Custom derive for traits from the zerocopy crate")
    (license license:bsd-3)))

(define-public rust-zerocopy-0.3
  (package
    (name "rust-zerocopy")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zerocopy" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00nbb6yal8f74bkpn7msjcnhisimw8s5777a63206rfnn3br45zh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-byteorder" ,rust-byteorder-1)
         ("rust-zerocopy-derive" ,rust-zerocopy-derive-0.2))))
    (home-page
      "https://fuchsia.googlesource.com/fuchsia/+/HEAD/src/lib/zerocopy")
    (synopsis "Utilities for zero-copy parsing and serialization")
    (description "Utilities for zero-copy parsing and serialization")
    (license license:bsd-3)))

(define-public rust-rio-0.9
  (package
    (name "rust-rio")
    (version "0.9.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0nv8wrnkd41flb32lmxb412l6m1790j12c3lg305764hcmbc564y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/spacejam/rio")
    (synopsis
      "GPL-3.0 nice bindings for io_uring. MIT/Apache-2.0 license is available for spacejam's github sponsors.")
    (description
      "GPL-3.0 nice bindings for io_uring.  MIT/Apache-2.0 license is available for spacejam's github sponsors.")
    (license license:gpl3)))

(define-public rust-thread-id-4
  (package
    (name "rust-thread-id")
    (version "4.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thread-id" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0zvikdngp0950hi0jgiipr8l36rskk1wk7pc8cd43xr3g5if1psz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-redox-syscall" ,rust-redox-syscall-0.2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/ruuda/thread-id")
    (synopsis "Get a unique thread ID")
    (description "Get a unique thread ID")
    (license (list license:expat license:asl2.0))))

(define-public rust-redox-syscall-0.2
  (package
    (name "rust-redox-syscall")
    (version "0.2.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "redox_syscall" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zq36bhw4c6xig340ja1jmr36iy0d3djp8smsabxx71676bg70w3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1))))
    (home-page "https://gitlab.redox-os.org/redox-os/syscall")
    (synopsis "A Rust library to access raw Redox system calls")
    (description
      "This package provides a Rust library to access raw Redox system calls")
    (license license:expat)))

(define-public rust-parking-lot-core-0.8
  (package
    (name "rust-parking-lot-core")
    (version "0.8.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "parking_lot_core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "05ij4zxsylx99srbq8qd1k2wiwaq8krkf9y4cqkhvb5wjca8wvnp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-instant" ,rust-instant-0.1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-petgraph" ,rust-petgraph-0.5)
         ("rust-redox-syscall" ,rust-redox-syscall-0.2)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-thread-id" ,rust-thread-id-4)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
      "An advanced API for creating custom synchronization primitives.")
    (description
      "An advanced API for creating custom synchronization primitives.")
    (license (list license:asl2.0 license:expat))))

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

(define-public rust-lock-api-0.4
  (package
    (name "rust-lock-api")
    (version "0.4.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lock_api" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "028izfyraynijd9h9x5miv1vmg6sjnw1v95wgm7f4xlr7h4lsaki"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-owning-ref" ,rust-owning-ref-0.4)
         ("rust-scopeguard" ,rust-scopeguard-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
      "Wrappers to create fully-featured Mutex and RwLock types. Compatible with no_std.")
    (description
      "Wrappers to create fully-featured Mutex and RwLock types.  Compatible with no_std.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-instant-0.1
  (package
    (name "rust-instant")
    (version "0.1.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "instant" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1g8n89lahcaj5ris8f4ki3x7cfscbwwkbmpfs17s7ijsyf4ksvbi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-js-sys" ,rust-js-sys-0.3)
         ("rust-stdweb" ,rust-stdweb-0.4)
         ("rust-time" ,rust-time-0.2)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://github.com/sebcrozet/instant")
    (synopsis
      "A partial replacement for std::time::Instant that works on WASM too.")
    (description
      "This package provides a partial replacement for std::time::Instant that works on WASM too.")
    (license license:bsd-3)))

(define-public rust-parking-lot-0.11
  (package
    (name "rust-parking-lot")
    (version "0.11.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "parking_lot" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "16gzf41bxmm10x82bla8d6wfppy9ym3fxsmdjyvn61m66s0bf5vx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-instant" ,rust-instant-0.1)
         ("rust-lock-api" ,rust-lock-api-0.4)
         ("rust-parking-lot-core" ,rust-parking-lot-core-0.8))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
      "More compact and efficient implementations of the standard synchronization primitives.")
    (description
      "More compact and efficient implementations of the standard synchronization primitives.")
    (license (list license:asl2.0 license:expat))))

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

(define-public rust-tracing-subscriber-0.2
  (package
    (name "rust-tracing-subscriber")
    (version "0.2.25")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tracing-subscriber" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0wcc3sqckjsxaahd9jnc4cwa13m623lhk8fg8way9hn3k6m2w38f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ansi-term" ,rust-ansi-term-0.12)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-matchers" ,rust-matchers-0.0.1)
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

(define-public rust-tracing-attributes-0.1
  (package
    (name "rust-tracing-attributes")
    (version "0.1.18")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tracing-attributes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "13izzsgrmcg2076ksdibvyxx7d8y9klm3b9pycjyh4hmz2w81x7l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://tokio.rs")
    (synopsis
      "Procedural macro attributes for automatically instrumenting functions.
")
    (description
      "Procedural macro attributes for automatically instrumenting functions.
")
    (license license:expat)))

(define-public rust-tracing-0.1
  (package
    (name "rust-tracing")
    (version "0.1.29")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tracing" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0191zcbnkn8wy0b7xbz7jd9m2xf3sjr8k3cfqzghxwya6a966nip"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
         ("rust-tracing-attributes" ,rust-tracing-attributes-0.1)
         ("rust-tracing-core" ,rust-tracing-core-0.1))))
    (home-page "https://tokio.rs")
    (synopsis "Application-level tracing for Rust.
")
    (description "Application-level tracing for Rust.
")
    (license license:expat)))

(define-public rust-generator-0.7
  (package
    (name "rust-generator")
    (version "0.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "generator" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vhj3f0rf4mlh5vz7pz5rxmgry1cc62x21mf9ld1r292m2f2gnf1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-rustversion" ,rust-rustversion-1)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/Xudong-Huang/generator-rs.git")
    (synopsis "Stackfull Generator Library in Rust")
    (description "Stackfull Generator Library in Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-loom-0.5
  (package
    (name "rust-loom")
    (version "0.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "loom" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1x944dygq9lww227w4kjvd451w7n30fqhadv96zr8h40lf0dzfdj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-generator" ,rust-generator-0.7)
         ("rust-pin-utils" ,rust-pin-utils-0.1)
         ("rust-scoped-tls" ,rust-scoped-tls-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-tracing" ,rust-tracing-0.1)
         ("rust-tracing-subscriber" ,rust-tracing-subscriber-0.2))))
    (home-page "https://github.com/tokio-rs/loom")
    (synopsis "Permutation testing for concurrent code")
    (description "Permutation testing for concurrent code")
    (license license:expat)))

(define-public rust-crossbeam-utils-0.8
  (package
    (name "rust-crossbeam-utils")
    (version "0.8.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-utils" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ny481cx8a5pdknypb41jqym03dl8x26i2ldyyp3yb3zrq8zqb6q"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-loom" ,rust-loom-0.5))))
    (home-page
      "https://github.com/crossbeam-rs/crossbeam/tree/master/crossbeam-utils")
    (synopsis "Utilities for concurrent programming")
    (description "Utilities for concurrent programming")
    (license (list license:expat license:asl2.0))))

(define-public rust-const-fn-0.4
  (package
    (name "rust-const-fn")
    (version "0.4.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "const_fn" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1rzn3ifnsgqh0lmzkqgm7jjjzwkykfysnb7gq7w3q2v9sl7zlb7r"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/taiki-e/const_fn")
    (synopsis
      "An attribute for easy generation of const functions with conditional compilations.
")
    (description
      "An attribute for easy generation of const functions with conditional compilations.
")
    (license (list license:asl2.0 license:expat))))

(define-public rust-crossbeam-epoch-0.9
  (package
    (name "rust-crossbeam-epoch")
    (version "0.9.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-epoch" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zdpfd6hjf944dr5pb7h7rkiccbwksc958x4mp1y4d56384jxh2f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-const-fn" ,rust-const-fn-0.4)
         ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-loom" ,rust-loom-0.5)
         ("rust-memoffset" ,rust-memoffset-0.6)
         ("rust-scopeguard" ,rust-scopeguard-1))))
    (home-page
      "https://github.com/crossbeam-rs/crossbeam/tree/master/crossbeam-epoch")
    (synopsis "Epoch-based garbage collection")
    (description "Epoch-based garbage collection")
    (license (list license:expat license:asl2.0))))

(define-public rust-crc32fast-1
  (package
    (name "rust-crc32fast")
    (version "1.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crc32fast" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06ivjlkzcxxxk7nyshc44aql4zjpmvirq46vmzrakdjax3n6y5c1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1))))
    (home-page "https://github.com/srijs/rust-crc32fast")
    (synopsis "Fast, SIMD-accelerated CRC32 (IEEE) checksum computation")
    (description "Fast, SIMD-accelerated CRC32 (IEEE) checksum computation")
    (license (list license:expat license:asl2.0))))

(define-public rust-color-backtrace-0.5
  (package
    (name "rust-color-backtrace")
    (version "0.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "color-backtrace" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11fn3snykx90w3nznzrcf4r164zmhk790asx0kzryf4r7i308v6d"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-atty" ,rust-atty-0.2)
         ("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-regex" ,rust-regex-1)
         ("rust-termcolor" ,rust-termcolor-1))))
    (home-page "https://github.com/athre0z/color-backtrace")
    (synopsis "Colorful panic backtraces")
    (description "Colorful panic backtraces")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-sled-0.34
  (package
    (name "rust-sled")
    (version "0.34.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sled" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0dcr2s7cylj5mb33ci3kpx7fz797jwvysnl5airrir9cgirv95kz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-color-backtrace" ,rust-color-backtrace-0.5)
         ("rust-crc32fast" ,rust-crc32fast-1)
         ("rust-crossbeam-epoch" ,rust-crossbeam-epoch-0.9)
         ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
         ("rust-fs2" ,rust-fs2-0.4)
         ("rust-fxhash" ,rust-fxhash-0.2)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-rio" ,rust-rio-0.9)
         ("rust-zstd" ,rust-zstd-0.9))
        #:cargo-development-inputs
        (("rust-byteorder" ,rust-byteorder-1)
         ("rust-env-logger" ,rust-env-logger-0.8)
         ("rust-log" ,rust-log-0.4)
         ("rust-quickcheck" ,rust-quickcheck-0.9)
         ("rust-rand" ,rust-rand-0.7)
         ("rust-rand-chacha" ,rust-rand-chacha-0.2)
         ("rust-rand-distr" ,rust-rand-distr-0.3)
         ("rust-zerocopy" ,rust-zerocopy-0.3))))
    (home-page "https://github.com/spacejam/sled")
    (synopsis
      "Lightweight high-performance pure-rust transactional embedded database.")
    (description
      "Lightweight high-performance pure-rust transactional embedded database.")
    (license (list license:expat license:asl2.0))))
