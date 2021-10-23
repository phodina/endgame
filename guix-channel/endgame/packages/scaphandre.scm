(define-module (endgame packages scaphandre)
  #:use-module (guix packages)
  #:use-module (gnu packages rust)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-graphics)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-warp10-1
  (package
    (name "rust-warp10")
    (version "1.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "warp10" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1gwpxyd3zymxa9v0fykbvvkiqbgkgpgg8cqib04lxnljbsf9h3hl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-isahc" ,rust-isahc-1)
         ("rust-percent-encoding" ,rust-percent-encoding-2)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-time" ,rust-time-0.2)
         ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/CleverCloud/warp10.rs")
    (synopsis "Warp10 client for rust")
    (description "Warp10 client for rust")
    (license license:bsd-3)))

(define-public rust-time-macros-0.1
  (package
    (name "rust-time-macros")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wg24yxpxcfmim6dgblrf8p321m7cyxpdivzvp8bcb7i4rp9qzlm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro-hack" ,rust-proc-macro-hack-0.5)
         ("rust-time-macros-impl" ,rust-time-macros-impl-0.1))))
    (home-page "https://github.com/time-rs/time")
    (synopsis "Procedural macros for the time crate.")
    (description "Procedural macros for the time crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-standback-0.2
  (package
    (name "rust-standback")
    (version "0.2.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "standback" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zr8zy3kzryaggz3k0j4135m3zbd31pyqmja8cyj8yp07mpzn4z1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/jhpratt/standback")
    (synopsis "New standard library, old compiler.")
    (description "New standard library, old compiler.")
    (license (list license:expat license:asl2.0))))

(define-public rust-time-0.2
  (package
    (name "rust-time")
    (version "0.2.27")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hm209d078jfgxzjhi5xqim64q31rlj1h70zz57qbmpbirzsjlj7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-const-fn" ,rust-const-fn-0.4)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-rand" ,rust-rand-0.7)
         ("rust-serde" ,rust-serde-1)
         ("rust-standback" ,rust-standback-0.2)
         ("rust-stdweb" ,rust-stdweb-0.4)
         ("rust-time-macros" ,rust-time-macros-0.1)
         ("rust-version-check" ,rust-version-check-0.9)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://time-rs.github.io")
    (synopsis
      "Date and time library. Fully interoperable with the standard library. Mostly compatible with #![no_std].")
    (description
      "Date and time library.  Fully interoperable with the standard library.  Mostly compatible with #![no_std].")
    (license (list license:expat license:asl2.0))))

(define-public rust-rustls-pemfile-0.2
  (package
    (name "rust-rustls-pemfile")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rustls-pemfile" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jfi97lqnnnnxhmfy6ygrsp0x70m8wsdpaw45svvz1qc6vmymssy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-base64" ,rust-base64-0.13))))
    (home-page "https://github.com/rustls/pemfile")
    (synopsis "Basic .pem file parser for keys and certificates")
    (description "Basic .pem file parser for keys and certificates")
    (license (list license:asl2.0 license:isc license:expat))))

(define-public rust-riemann-client-0.9
  (package
    (name "rust-riemann-client")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "riemann_client" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hkjkvgph2dwxinf3k90n14zbzwl2c1r41rqn9m3zdcck9dda18h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-docopt" ,rust-docopt-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-protobuf" ,rust-protobuf-2)
         ("rust-rustls" ,rust-rustls-0.19)
         ("rust-rustls-pemfile" ,rust-rustls-pemfile-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-webpki" ,rust-webpki-0.21)
         ("rust-webpki-roots" ,rust-webpki-roots-0.21))))
    (home-page "https://github.com/borntyping/rust-riemann_client")
    (synopsis "A Riemann client library")
    (description "This package provides a Riemann client library")
    (license license:expat)))

(define-public rust-protobuf-2
  (package
    (name "rust-protobuf")
    (version "2.25.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "protobuf" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fn6k8vhxknsc6zk6frbrvky4vkhpl48mkjzjgnmqdf9y989s4i3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytes" ,rust-bytes-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://github.com/stepancheg/rust-protobuf/")
    (synopsis "Rust implementation of Google protocol buffers
")
    (description "Rust implementation of Google protocol buffers
")
    (license license:expat)))

(define-public rust-procfs-0.8
  (package
    (name "rust-procfs")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "procfs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0jgxlrhs01s4g8jyr65diynx2m02lc8rqnwk8grmaj8g6743d8y4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-hex" ,rust-hex-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-libflate" ,rust-libflate-1))))
    (home-page "https://github.com/eminence/procfs")
    (synopsis "Interface to the linux procfs pseudo-filesystem")
    (description "Interface to the linux procfs pseudo-filesystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-loggerv-0.7
  (package
    (name "rust-loggerv")
    (version "0.7.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "loggerv" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0x6k903wpm557fkcbr5isgh4yqkkbzw4fm7hwyy61rvimqaxxn30"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ansi-term" ,rust-ansi-term-0.12)
         ("rust-atty" ,rust-atty-0.2)
         ("rust-log" ,rust-log-0.4))))
    (home-page "https://github.com/clux/loggerv")
    (synopsis
      "A simple log implementation that logs to stdout and stderr with colors")
    (description
      "This package provides a simple log implementation that logs to stdout and stderr with colors")
    (license license:expat)))

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

(define-public rust-openssl-src-111
  (package
    (name "rust-openssl-src")
    (version "111.16.0+1.1.1l")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "openssl-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17w5l9gpracs32jxa9xim4ips4j4s8imifyy2bng6v21d4zigcks"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t #:cargo-inputs (("rust-cc" ,rust-cc-1))))
    (home-page "https://github.com/alexcrichton/openssl-src-rs")
    (synopsis "Source of OpenSSL and logic to build it.
")
    (description "Source of OpenSSL and logic to build it.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-openssl-sys-0.9.67
  (package
    (inherit rust-openssl-sys-0.9)
    (name "rust-openssl-sys")
    (version "0.9.67")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "openssl-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0n5023ri01wfx54rr1zndi8qda6mhzscdpj09gsamqvczj6jvpv9"))))))

(define-public rust-openssl-0.10
  (package
    (name "rust-openssl")
    (version "0.10.36")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "openssl" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0jpz4nj3q8y9xqqhbvvgsqcdinkgv125s4kg80ybgh7yfvdsr7wd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-foreign-types" ,rust-foreign-types-0.3)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-openssl-sys" ,rust-openssl-sys-0.9.67))))
    (home-page "https://github.com/sfackler/rust-openssl")
    (synopsis "OpenSSL bindings")
    (description "OpenSSL bindings")
    (license license:asl2.0)))

(define-public rust-serde-derive-internals-0.25
  (package
    (name "rust-serde-derive-internals")
    (version "0.25.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_derive_internals" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ihqfkpplqqiwmh87s8p9jsv27ibkz1z7gc0abqs2mrhlr6b7fhx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://serde.rs")
    (synopsis "AST representation used by Serde derive macros. Unstable.")
    (description "AST representation used by Serde derive macros.  Unstable.")
    (license (list license:expat license:asl2.0))))

(define-public rust-schemars-derive-0.8
  (package
    (name "rust-schemars-derive")
    (version "0.8.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "schemars_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1j0aww8zsypin9krn5vm34p1krlabni03c9bic8xfk7y2fka57ja"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-serde-derive-internals" ,rust-serde-derive-internals-0.25)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://graham.cool/schemars/")
    (synopsis "Macros for #[derive(JsonSchema)], for use with schemars")
    (description "Macros for #[derive(JsonSchema)], for use with schemars")
    (license license:expat)))

(define-public rust-schemars-0.8
  (package
    (name "rust-schemars")
    (version "0.8.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "schemars" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "02alfash9pjcq4byafp0d2g8myxlh48yp7di81bxyzraih4qv96p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arrayvec" ,rust-arrayvec-0.5)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-dyn-clone" ,rust-dyn-clone-1)
         ("rust-either" ,rust-either-1)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-schemars-derive" ,rust-schemars-derive-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-url" ,rust-url-2)
         ("rust-uuid" ,rust-uuid-0.8))))
    (home-page "https://graham.cool/schemars/")
    (synopsis "Generate JSON Schemas from Rust code")
    (description "Generate JSON Schemas from Rust code")
    (license license:expat)))

(define-public rust-k8s-openapi-0.13
  (package
    (name "rust-k8s-openapi")
    (version "0.13.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "k8s-openapi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0p5aahy1nkml7ml06x8730j789pf64vljxrzafrp8klh7f3yk3ag"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-base64" ,rust-base64-0.13)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-http" ,rust-http-0.2)
         ("rust-percent-encoding" ,rust-percent-encoding-2)
         ("rust-schemars" ,rust-schemars-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-value" ,rust-serde-value-0.7)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/Arnavion/k8s-openapi")
    (synopsis "Bindings for the Kubernetes client API")
    (description "Bindings for the Kubernetes client API")
    (license license:asl2.0)))

(define-public rust-rust-argon2-0.8
  (package
    (name "rust-rust-argon2")
    (version "0.8.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rust-argon2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yvqkv04fqk3cbvyasibr4bqbxa6mij8jdvibakwlcsbjh6q462b"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-base64" ,rust-base64-0.13)
         ("rust-blake2b-simd" ,rust-blake2b-simd-0.5)
         ("rust-constant-time-eq" ,rust-constant-time-eq-0.1)
         ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/sru-systems/rust-argon2")
    (synopsis "Rust implementation of the Argon2 password hashing function.")
    (description
      "Rust implementation of the Argon2 password hashing function.")
    (license (list license:expat license:asl2.0))))

(define-public rust-redox-users-0.4
  (package
    (name "rust-redox-users")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "redox_users" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0r5y1a26flkn6gkayi558jg5dzh2m2fdsapgkpn7mj01v3rk51aj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-getrandom" ,rust-getrandom-0.2)
         ("rust-redox-syscall" ,rust-redox-syscall-0.2)
         ("rust-rust-argon2" ,rust-rust-argon2-0.8))))
    (home-page "https://gitlab.redox-os.org/redox-os/users")
    (synopsis "A Rust library to access Redox users and groups functionality")
    (description
      "This package provides a Rust library to access Redox users and groups functionality")
    (license license:expat)))

(define-public rust-dirs-sys-0.3
  (package
    (name "rust-dirs-sys")
    (version "0.3.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dirs-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "102pbpcrfhvhfyfnyvmvvwpl6mfvynh170f6ima6fyinxls6bn03"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-redox-users" ,rust-redox-users-0.4)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/dirs-dev/dirs-sys-rs")
    (synopsis
      "System-level helper functions for the dirs and directories crates.")
    (description
      "System-level helper functions for the dirs and directories crates.")
    (license (list license:expat license:asl2.0))))

(define-public rust-dirs-3
  (package
    (name "rust-dirs")
    (version "3.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dirs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "028kqy0vrbfgrk1yc1flq2fqh8snyg17qlygawm0r79w211s1fih"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-dirs-sys" ,rust-dirs-sys-0.3))))
    (home-page "https://github.com/soc/dirs-rs")
    (synopsis
      "A tiny low-level library that provides platform-specific standard locations of directories for config, cache and other data on Linux, Windows, macOS and Redox by leveraging the mechanisms defined by the XDG base/user directory specifications on Linux, the Known Folder API on Windows, and the Standard Directory guidelines on macOS.")
    (description
      "This package provides a tiny low-level library that provides platform-specific standard locations of directories for config, cache and other data on Linux, Windows, macOS and Redox by leveraging the mechanisms defined by the XDG base/user directory specifications on Linux, the Known Folder API on Windows, and the Standard Directory guidelines on macOS.")
    (license (list license:expat license:asl2.0))))

(define-public rust-k8s-sync-0.2
  (package
    (name "rust-k8s-sync")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "k8s-sync" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hylzf3clqybbz2flj81jc6zz40n8likzdyfz111fqdjbj7jyg1x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-base64" ,rust-base64-0.13)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-dirs" ,rust-dirs-3)
         ("rust-http" ,rust-http-0.2)
         ("rust-isahc" ,rust-isahc-1)
         ("rust-k8s-openapi" ,rust-k8s-openapi-0.13)
         ("rust-openssl" ,rust-openssl-0.10)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-yaml" ,rust-serde-yaml-0.8)
         ("rust-tempfile" ,rust-tempfile-3)
         ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/bpetit/rs-k8s-sync")
    (synopsis
      "Minimalistic, synchronous, read-only client for kubernetes cluster API, from a node, through local api server endpoint")
    (description
      "Minimalistic, synchronous, read-only client for kubernetes cluster API, from a node, through local api server endpoint")
    (license license:asl2.0)))

(define-public rust-sluice-0.5
  (package
    (name "rust-sluice")
    (version "0.5.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sluice" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1d9ywr5039ibgaby8sc72f8fs5lpp8j5y6p3npya4jplxz000x3d"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-async-channel" ,rust-async-channel-1)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-io" ,rust-futures-io-0.3))))
    (home-page "https://github.com/sagebind/sluice")
    (synopsis
      "Efficient ring buffer for byte buffers, FIFO queues, and SPSC channels")
    (description
      "Efficient ring buffer for byte buffers, FIFO queues, and SPSC channels")
    (license license:expat)))

(define-public rust-psl-types-2
  (package
    (name "rust-psl-types")
    (version "2.0.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "psl-types" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0kqssn9wgqpl1m26ynv7cvxanfhyjvssi2a3jc2nzpbw7q3ricv6"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/addr-rs/psl-types")
    (synopsis "Common types for the public suffix implementation crates")
    (description "Common types for the public suffix implementation crates")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-idna-0.2
  (package
    (name "rust-idna")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "idna" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1y7ca2w5qp9msgl57n03zqp78gq1bk2crqzg6kv7a542mdphm2j1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-matches" ,rust-matches-0.1)
         ("rust-unicode-bidi" ,rust-unicode-bidi-0.3)
         ("rust-unicode-normalization" ,rust-unicode-normalization-0.1))))
    (home-page "https://github.com/servo/rust-url/")
    (synopsis
      "IDNA (Internationalizing Domain Names in Applications) and Punycode.")
    (description
      "IDNA (Internationalizing Domain Names in Applications) and Punycode.")
    (license (list license:expat license:asl2.0))))

(define-public rust-byteorder-1
  (package
    (name "rust-byteorder")
    (version "1.4.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "byteorder" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0456lv9xi1a5bcm32arknf33ikv76p3fr9yzki4lb2897p2qkh8l"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/BurntSushi/byteorder")
    (synopsis
      "Library for reading/writing numbers in big-endian and little-endian.")
    (description
      "Library for reading/writing numbers in big-endian and little-endian.")
    (license (list license:unlicense license:expat))))

(define-public rust-publicsuffix-2
  (package
    (name "rust-publicsuffix")
    (version "2.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "publicsuffix" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1q9kbcqh9pa06p3kq7d3ksbnqjhs88v5wk5qg89wrgkbmpnp4a99"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-byteorder" ,rust-byteorder-1)
         ("rust-hashbrown" ,rust-hashbrown-0.11)
         ("rust-idna" ,rust-idna-0.2)
         ("rust-psl-types" ,rust-psl-types-2)
         ("rust-unicase" ,rust-unicase-2))))
    (home-page "https://github.com/rushmorem/publicsuffix")
    (synopsis "Extract root domain and suffix from a domain name")
    (description "Extract root domain and suffix from a domain name")
    (license (list license:expat license:asl2.0))))

(define-public rust-curl-sys-0.4
  (package
    (name "rust-curl-sys")
    (version "0.4.49+curl-7.79.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "curl-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10rl6hh9cjf71229gr7ldfh6rrn0xcj8hywh8rm7hjm2mrh4kx70"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-libnghttp2-sys" ,rust-libnghttp2-sys-0.1)
         ("rust-libz-sys" ,rust-libz-sys-1)
         ("rust-mesalink" ,rust-mesalink-1)
         ("rust-openssl-sys" ,rust-openssl-sys-0.9.67)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-vcpkg" ,rust-vcpkg-0.2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/alexcrichton/curl-rust")
    (synopsis "Native bindings to the libcurl library")
    (description "Native bindings to the libcurl library")
    (license license:expat)))

(define-public rust-curl-0.4
  (package
    (name "rust-curl")
    (version "0.4.39")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "curl" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fa9k1ypg0khsxna9r0a9dn4lk9k0q0javbq2ppxsh9kgzdvi8xa"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-curl-sys" ,rust-curl-sys-0.4)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-openssl-probe" ,rust-openssl-probe-0.1)
         ("rust-openssl-sys" ,rust-openssl-sys-0.9.67)
         ("rust-schannel" ,rust-schannel-0.1)
         ("rust-socket2" ,rust-socket2-0.4)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/alexcrichton/curl-rust")
    (synopsis "Rust bindings to libcurl for making HTTP requests")
    (description "Rust bindings to libcurl for making HTTP requests")
    (license license:expat)))

(define-public rust-castaway-0.1
  (package
    (name "rust-castaway")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "castaway" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hrzlzhg5sajcqaky2f1m2sxmf4d9433pwg0pgr4d3lihqaps97d"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/sagebind/castaway")
    (synopsis
      "Safe, zero-cost downcasting for limited compile-time specialization.")
    (description
      "Safe, zero-cost downcasting for limited compile-time specialization.")
    (license license:expat)))

(define-public rust-async-channel-1
  (package
    (name "rust-async-channel")
    (version "1.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "async-channel" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06b3sq2hd8qwl2xxlc4qalg6xw3l9b41w4sym9g0q70mf93dc511"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-concurrent-queue" ,rust-concurrent-queue-1)
         ("rust-event-listener" ,rust-event-listener-2)
         ("rust-futures-core" ,rust-futures-core-0.3))))
    (home-page "https://github.com/smol-rs/async-channel")
    (synopsis "Async multi-producer multi-consumer channel")
    (description "Async multi-producer multi-consumer channel")
    (license (list license:asl2.0 license:expat))))

(define-public rust-isahc-1
  (package
    (name "rust-isahc")
    (version "1.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "isahc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0mjs3ssky13fkif4lh8l1z6f841g39h7367gg729y73rn4159vs0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-async-channel" ,rust-async-channel-1)
         ("rust-castaway" ,rust-castaway-0.1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
         ("rust-curl" ,rust-curl-0.4)
         ("rust-curl-sys" ,rust-curl-sys-0.4)
         ("rust-encoding-rs" ,rust-encoding-rs-0.8)
         ("rust-event-listener" ,rust-event-listener-2)
         ("rust-futures-lite" ,rust-futures-lite-1)
         ("rust-http" ,rust-http-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-mime" ,rust-mime-0.3)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-polling" ,rust-polling-2)
         ("rust-publicsuffix" ,rust-publicsuffix-2)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-slab" ,rust-slab-0.4)
         ("rust-sluice" ,rust-sluice-0.5)
         ("rust-tracing" ,rust-tracing-0.1)
         ("rust-tracing-futures" ,rust-tracing-futures-0.2)
         ("rust-url" ,rust-url-2)
         ("rust-waker-fn" ,rust-waker-fn-1))))
    (home-page "https://github.com/sagebind/isahc")
    (synopsis "The practical HTTP client that is fun to use.")
    (description "The practical HTTP client that is fun to use.")
    (license license:expat)))

(define-public rust-http-0.2
  (package
    (name "rust-http")
    (version "0.2.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "http" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0sqqidxilz83h3nr9g3hwsa0z34mh6clrrdfvvd2f66l0mmhj8qk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:rust ,rust-1.52
        #:skip-build? #t
        #:cargo-inputs
        (("rust-bytes" ,rust-bytes-1)
         ("rust-fnv" ,rust-fnv-1)
         ("rust-itoa" ,rust-itoa-0.4))))
    (home-page "https://github.com/hyperium/http")
    (synopsis "A set of types for representing HTTP requests and responses.
")
    (description
      "This package provides a set of types for representing HTTP requests and responses.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-docker-sync-0.1
  (package
    (name "rust-docker-sync")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "docker-sync" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ckwmg2vv23qxdm2zw938pgk1d9skmlxgrs34k8fsdb5sr59r63c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-http" ,rust-http-0.2)
         ("rust-isahc" ,rust-isahc-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://github.com/bpetit/rs-docker-sync")
    (synopsis
      "Minimalistic, synchronous, read-only client for local Docker socket")
    (description
      "Minimalistic, synchronous, read-only client for local Docker socket")
    (license license:asl2.0)))

(define-public rust-scaphandre-0.4
  (package
    (name "rust-scaphandre")
    (version "0.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "scaphandre" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qxbszwsnj25n679qwm4vfq0c88ihb6f61hgzzb759jz3b0m309w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:rust ,rust-1.52
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-clap" ,rust-clap-2)
         ("rust-colored" ,rust-colored-2)
         ("rust-docker-sync" ,rust-docker-sync-0.1)
         ("rust-hostname" ,rust-hostname-0.3)
         ("rust-hyper" ,rust-hyper-0.14)
         ("rust-k8s-sync" ,rust-k8s-sync-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-loggerv" ,rust-loggerv-0.7)
         ("rust-procfs" ,rust-procfs-0.8)
         ("rust-protobuf" ,rust-protobuf-2)
         ("rust-regex" ,rust-regex-1)
         ("rust-riemann-client" ,rust-riemann-client-0.9)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-time" ,rust-time-0.2)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-warp10" ,rust-warp10-1))))
    (home-page "https://hubblo-org.github.io/scaphandre-documentation")
    (synopsis "Electrical power consumption measurement agent.")
    (description "Electrical power consumption measurement agent.")
    (license license:asl2.0)))
