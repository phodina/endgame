(define-module (endgame packages trust-dns)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages rust)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-trust-dns-resolver-0.21
  (package
    (name "rust-trust-dns-resolver")
    (version "0.21.0-alpha.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "trust-dns-resolver" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12g03yd0izlkxdbmi76jcypmi7213zyfgrv1pypwhz8cl3w2pv1s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-ipconfig" ,rust-ipconfig-0.2)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-lru-cache" ,rust-lru-cache-0.1)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-resolv-conf" ,rust-resolv-conf-0.7)
         ("rust-rustls" ,rust-rustls-0.19)
         ("rust-serde" ,rust-serde-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
         ("rust-tokio-openssl" ,rust-tokio-openssl-0.6)
         ("rust-tokio-rustls" ,rust-tokio-rustls-0.22)
         ("rust-trust-dns-proto" ,rust-trust-dns-proto-0.21)
         ("rust-webpki-roots" ,rust-webpki-roots-0.21))))
    (home-page "http://www.trust-dns.org/index.html")
    (synopsis
      "Trust-DNS is a safe and secure DNS library. This Resolver library  uses the Client library to perform all DNS queries. The Resolver is intended to be a high-level library for any DNS record resolution see Resolver and AsyncResolver for supported resolution types. The Client can be used for other queries.
")
    (description
      "Trust-DNS is a safe and secure DNS library.  This Resolver library  uses the Client library to perform all DNS queries.  The Resolver is intended to be a high-level library for any DNS record resolution see Resolver and AsyncResolver for supported resolution types.  The Client can be used for other queries.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-time-macros-0.2
  (package
    (name "rust-time-macros")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mj7pv8y9j2csrh1l8aabras36pgysbnfy18330srh4g8sihrsr5"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/time-rs/time")
    (synopsis "Procedural macros for the time crate.")
    (description "Procedural macros for the time crate.")
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

(define-public rust-packed-simd-2-0.3
  (package
    (name "rust-packed-simd-2")
    (version "0.3.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "packed_simd_2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1i8hmhsyzqsas2rhxg088mcwvzljrqhvf8lfz8b1dj6g2rkw1h3i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-0.1)
         ("rust-core-arch" ,rust-core-arch-0.1)
         ("rust-libm" ,rust-libm-0.1)
         ("rust-sleef-sys" ,rust-sleef-sys-0.1))))
    (home-page "https://github.com/rust-lang/packed_simd")
    (synopsis "Portable Packed SIMD vectors")
    (description "Portable Packed SIMD vectors")
    (license (list license:expat license:asl2.0))))

(define-public rust-rand-0.8
  (package
    (name "rust-rand")
    (version "0.8.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1n5wska2fbfj4dsfz8mc0pd0dgjlrb6c9anpk5mwym345rip6x9f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-packed-simd-2" ,rust-packed-simd-2-0.3)
         ("rust-rand-chacha" ,rust-rand-chacha-0.3)
         ("rust-rand-core" ,rust-rand-core-0.6)
         ("rust-rand-hc" ,rust-rand-hc-0.3)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://rust-random.github.io/book")
    (synopsis "Random number generators and other randomness functionality.
")
    (description
      "Random number generators and other randomness functionality.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-itoa-0.4
  (package
    (name "rust-itoa")
    (version "0.4.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "itoa" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1m1dairwyx8kfxi7ab3b5jc71z1vigh9w4shnhiajji9avzr26dp"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/dtolnay/itoa")
    (synopsis "Fast functions for printing integer primitives to an io::Write")
    (description
      "Fast functions for printing integer primitives to an io::Write")
    (license (list license:expat license:asl2.0))))

(define-public rust-time-0.3
  (package
    (name "rust-time")
    (version "0.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00vdrjz05v98kkp8m5daa8p94airz3as1k527d2r60lf2xawzqfd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-itoa" ,rust-itoa-0.4)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-quickcheck" ,rust-quickcheck-1)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-time-macros" ,rust-time-macros-0.2))))
    (home-page "https://time-rs.github.io")
    (synopsis
      "Date and time library. Fully interoperable with the standard library. Mostly compatible with #![no_std].")
    (description
      "Date and time library.  Fully interoperable with the standard library.  Mostly compatible with #![no_std].")
    (license (list license:expat license:asl2.0))))

(define-public rust-cexpr-0.5
  (package
    (name "rust-cexpr")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cexpr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12awiqgwqc1cnjr2b4lz139mdv3md0y13n0dxmv24b95g5v7ll6v"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t #:cargo-inputs (("rust-nom" ,rust-nom-6))))
    (home-page "https://github.com/jethrogb/rust-cexpr")
    (synopsis "A C expression parser and evaluator")
    (description "This package provides a C expression parser and evaluator")
    (license (list license:asl2.0 license:expat))))

(define-public rust-bindgen-0.59
  (package
    (name "rust-bindgen")
    (version "0.59.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bindgen" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xa32gh9hvnp810abympsn4nr10q2vil1xixpdiypc0bjpjljg25"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cexpr" ,rust-cexpr-0.5)
         ("rust-clang-sys" ,rust-clang-sys-1)
         ("rust-clap" ,rust-clap-2)
         ("rust-env-logger" ,rust-env-logger-0.8)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-lazycell" ,rust-lazycell-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-peeking-take-while" ,rust-peeking-take-while-0.1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-shlex" ,rust-shlex-1)
         ("rust-which" ,rust-which-3))))
    (home-page "https://rust-lang.github.io/rust-bindgen/")
    (synopsis
      "Automatically generates Rust FFI bindings to C and C++ libraries.")
    (description
      "Automatically generates Rust FFI bindings to C and C++ libraries.")
    (license license:bsd-3)))

(define-public rust-libsqlite3-sys-0.23
  (package
    (name "rust-libsqlite3-sys")
    (version "0.23.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libsqlite3-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wm91qnsz729vfl3n1rhaq2ip2v4zzxbsawb975vlh4v8h68bmdb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bindgen" ,rust-bindgen-0.59)
         ("rust-cc" ,rust-cc-1)
         ("rust-openssl-sys" ,rust-openssl-sys-0.9)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-vcpkg" ,rust-vcpkg-0.2))))
    (home-page "https://github.com/rusqlite/rusqlite")
    (synopsis "Native bindings to the libsqlite3 library")
    (description "Native bindings to the libsqlite3 library")
    (license license:expat)))

(define-public rust-rusqlite-0.26
  (package
    (name "rust-rusqlite")
    (version "0.26.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rusqlite" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04wj2y2pzykpf9hv5ydrbmgx8q88bfb1k0j5y79w1xfcgz8fnakf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-csv" ,rust-csv-1)
         ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
         ("rust-fallible-streaming-iterator"
          ,rust-fallible-streaming-iterator-0.1)
         ("rust-hashlink" ,rust-hashlink-0.7)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libsqlite3-sys" ,rust-libsqlite3-sys-0.23)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-time" ,rust-time-0.3)
         ("rust-url" ,rust-url-2)
         ("rust-uuid" ,rust-uuid-0.8))))
    (home-page "https://github.com/rusqlite/rusqlite")
    (synopsis "Ergonomic wrapper for SQLite")
    (description "Ergonomic wrapper for SQLite")
    (license license:expat)))

(define-public rust-env-logger-0.9
  (package
    (name "rust-env-logger")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "env_logger" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hzr53r0wga51j0w5zid69ylbfizg4qdbq0vqdj6rvki94sg0b0b"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-atty" ,rust-atty-0.2)
         ("rust-humantime" ,rust-humantime-2)
         ("rust-log" ,rust-log-0.4)
         ("rust-regex" ,rust-regex-1)
         ("rust-termcolor" ,rust-termcolor-1))))
    (home-page "https://github.com/env-logger-rs/env_logger/")
    (synopsis
      "A logging implementation for `log` which is configured via an environment
variable.
")
    (description
      "This package provides a logging implementation for `log` which is configured via an environment
variable.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-trust-dns-server-0.21
  (package
    (name "rust-trust-dns-server")
    (version "0.21.0-alpha.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "trust-dns-server" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0d1lrm9an3wdpfb9jrh67i72injr891gybjz0byrp88zc6pjsni6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-async-trait" ,rust-async-trait-0.1)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-enum-as-inner" ,rust-enum-as-inner-0.3)
         ("rust-env-logger" ,rust-env-logger-0.9)
         ("rust-futures-executor" ,rust-futures-executor-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-h2" ,rust-h2-0.3)
         ("rust-http" ,rust-http-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-openssl" ,rust-openssl-0.10)
         ("rust-rusqlite" ,rust-rusqlite-0.26)
         ("rust-rustls" ,rust-rustls-0.19)
         ("rust-serde" ,rust-serde-1)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-tokio-openssl" ,rust-tokio-openssl-0.6)
         ("rust-tokio-rustls" ,rust-tokio-rustls-0.22)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-trust-dns-client" ,rust-trust-dns-client-0.21)
         ("rust-trust-dns-proto" ,rust-trust-dns-proto-0.21)
         ("rust-trust-dns-resolver" ,rust-trust-dns-resolver-0.21))))
    (home-page "http://www.trust-dns.org/index.html")
    (synopsis
      "Trust-DNS is a safe and secure DNS server with DNSSec support.
 Eventually this could be a replacement for BIND9. The DNSSec support allows
 for live signing of all records, in it does not currently support
 records signed offline. The server supports dynamic DNS with SIG0 authenticated
 requests. Trust-DNS is based on the Tokio and Futures libraries, which means
 it should be easily integrated into other software that also use those
 libraries.
")
    (description
      "Trust-DNS is a safe and secure DNS server with DNSSec support.
 Eventually this could be a replacement for BIND9.  The DNSSec support allows
 for live signing of all records, in it does not currently support
 records signed offline.  The server supports dynamic DNS with SIG0 authenticated
 requests.  Trust-DNS is based on the Tokio and Futures libraries, which means
 it should be easily integrated into other software that also use those
 libraries.
")
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

(define-public rust-trust-dns-proto-0.21
  (package
    (name "rust-trust-dns-proto")
    (version "0.21.0-alpha.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "trust-dns-proto" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1sw75nx65llg414fmwg90xd30mqc5qzgdynd55bd80c3gri3rr6j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-async-trait" ,rust-async-trait-0.1)
         ("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-data-encoding" ,rust-data-encoding-2)
         ("rust-enum-as-inner" ,rust-enum-as-inner-0.3)
         ("rust-futures-channel" ,rust-futures-channel-0.3)
         ("rust-futures-io" ,rust-futures-io-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-h2" ,rust-h2-0.3)
         ("rust-http" ,rust-http-0.2)
         ("rust-idna" ,rust-idna-0.2)
         ("rust-ipnet" ,rust-ipnet-2)
         ("rust-js-sys" ,rust-js-sys-0.3)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-native-tls" ,rust-native-tls-0.2)
         ("rust-openssl" ,rust-openssl-0.10)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-ring" ,rust-ring-0.16)
         ("rust-rustls" ,rust-rustls-0.19)
         ("rust-serde" ,rust-serde-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-socket2" ,rust-socket2-0.4)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-tinyvec" ,rust-tinyvec-1)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
         ("rust-tokio-openssl" ,rust-tokio-openssl-0.6)
         ("rust-tokio-rustls" ,rust-tokio-rustls-0.22)
         ("rust-url" ,rust-url-2)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-webpki" ,rust-webpki-0.21)
         ("rust-webpki-roots" ,rust-webpki-roots-0.21))))
    (home-page "http://www.trust-dns.org/index.html")
    (synopsis
      "Trust-DNS is a safe and secure DNS library. This is the foundational DNS protocol library for all Trust-DNS projects.
")
    (description
      "Trust-DNS is a safe and secure DNS library.  This is the foundational DNS protocol library for all Trust-DNS projects.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-trust-dns-client-0.21
  (package
    (name "rust-trust-dns-client")
    (version "0.21.0-alpha.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "trust-dns-client" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0mrfn8smcfq9zxfcdanrs10ciq4ddpnq31ir0y4375kp1n851ga4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-data-encoding" ,rust-data-encoding-2)
         ("rust-futures-channel" ,rust-futures-channel-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-openssl" ,rust-openssl-0.10)
         ("rust-radix-trie" ,rust-radix-trie-0.2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-ring" ,rust-ring-0.16)
         ("rust-rustls" ,rust-rustls-0.19)
         ("rust-serde" ,rust-serde-1)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-trust-dns-proto" ,rust-trust-dns-proto-0.21)
         ("rust-webpki" ,rust-webpki-0.21))))
    (home-page "http://www.trust-dns.org/index.html")
    (synopsis
      "Trust-DNS is a safe and secure DNS library. This is the Client library with DNSec support.
 DNSSec with NSEC validation for negative records, is complete. The client supports
 dynamic DNS with SIG0 authenticated requests, implementing easy to use high level
 funtions. Trust-DNS is based on the Tokio and Futures libraries, which means
 it should be easily integrated into other software that also use those
 libraries.
")
    (description
      "Trust-DNS is a safe and secure DNS library.  This is the Client library with DNSec support.
 DNSSec with NSEC validation for negative records, is complete.  The client supports
 dynamic DNS with SIG0 authenticated requests, implementing easy to use high level
 funtions.  Trust-DNS is based on the Tokio and Futures libraries, which means
 it should be easily integrated into other software that also use those
 libraries.
")
    (license (list license:expat license:asl2.0))))

;TODO: Requires rust-openssl-0.10.32
(define-public rust-trust-dns-0.21
  (package
    (name "rust-trust-dns")
    (version "0.21.0-alpha.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "trust-dns" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0z6m2p4yxxaa1jqcky2w9434inz7lh7iznavadxkvz4pai4wbf7l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:rust ,rust-1.52 ;depends on resolver feature
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-clap" ,rust-clap-2)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-rustls" ,rust-rustls-0.19)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-trust-dns-client" ,rust-trust-dns-client-0.21)
         ("rust-trust-dns-proto" ,rust-trust-dns-proto-0.21)
         ("rust-trust-dns-server" ,rust-trust-dns-server-0.21))
        #:cargo-development-inputs
        (("rust-env-logger" ,rust-env-logger-0.9)
         ("rust-native-tls" ,rust-native-tls-0.2)
         ("rust-regex" ,rust-regex-1)
         ("rust-trust-dns-proto" ,rust-trust-dns-proto-0.21)
         ("rust-trust-dns-resolver" ,rust-trust-dns-resolver-0.21)
         ("rust-webpki-roots" ,rust-webpki-roots-0.21))))
    (home-page "http://www.trust-dns.org/index.html")
    (synopsis
      "Trust-DNS is a safe and secure DNS server with DNSec support.
 Eventually this could be a replacement for BIND9. The DNSSec support allows
 for live signing of all records, in it does not currently support
 records signed offline. The server supports dynamic DNS with SIG0 authenticated
 requests. Trust-DNS is based on the Tokio and Futures libraries, which means
 it should be easily integrated into other software that also use those
 libraries.
")
    (description
      "Trust-DNS is a safe and secure DNS server with DNSec support.
 Eventually this could be a replacement for BIND9.  The DNSSec support allows
 for live signing of all records, in it does not currently support
 records signed offline.  The server supports dynamic DNS with SIG0 authenticated
 requests.  Trust-DNS is based on the Tokio and Futures libraries, which means
 it should be easily integrated into other software that also use those
 libraries.
")
    (license (list license:expat license:asl2.0))))
