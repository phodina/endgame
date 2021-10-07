(define-module (endgame packages bitwarden)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-zeroize-1
  (package
    (name "rust-zeroize")
    (version "1.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zeroize" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0w79swbr48k2hd2ckkfg0lkvz3554yn7yji6j2kym3bn2f2v0s5z"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-zeroize-derive" ,rust-zeroize-derive-1))))
    (home-page "https://github.com/iqlusioninc/crates/")
    (synopsis
      "Securely clear secrets from memory with a simple trait built on
stable Rust primitives which guarantee memory is zeroed using an
operation will not be 'optimized away' by the compiler.
Uses a portable pure Rust implementation that works everywhere,
even WASM!
")
    (description
      "Securely clear secrets from memory with a simple trait built on
stable Rust primitives which guarantee memory is zeroed using an
operation will not be 'optimized away' by the compiler.
Uses a portable pure Rust implementation that works everywhere,
even WASM!
")
    (license (list license:asl2.0 license:expat))))

(define-public rust-totp-lite-1
  (package
    (name "rust-totp-lite")
    (version "1.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "totp-lite" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12ql4pi9q7sf5651588wia2l5h4mil3kv9jrrkib5gvlpvl0k05i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-digest" ,rust-digest-0.9)
         ("rust-hmac" ,rust-hmac-0.11)
         ("rust-sha-1" ,rust-sha-1-0.9)
         ("rust-sha2" ,rust-sha2-0.9))))
    (home-page "https://github.com/fosskers/totp-lite")
    (synopsis "A simple, correct TOTP library.")
    (description "This package provides a simple, correct TOTP library.")
    (license license:expat)))

(define-public rust-tokio-1
  (package
    (name "rust-tokio")
    (version "1.12.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tokio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1k7g4hyvbibjdvx9y5ppv1hsycx63vg2fiabwhx49a6wvrpl3hn2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-autocfg" ,rust-autocfg-1)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-mio" ,rust-mio-0.7)
         ("rust-num-cpus" ,rust-num-cpus-1)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
         ("rust-signal-hook-registry" ,rust-signal-hook-registry-1)
         ("rust-tokio-macros" ,rust-tokio-macros-1)
         ("rust-tracing" ,rust-tracing-0.1)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://tokio.rs")
    (synopsis
      "An event-driven, non-blocking I/O platform for writing asynchronous I/O
backed applications.
")
    (description
      "An event-driven, non-blocking I/O platform for writing asynchronous I/O
backed applications.
")
    (license license:expat)))

(define-public rust-zeroize-1
  (package
    (name "rust-zeroize")
    (version "1.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zeroize" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1z8yix823b6lz878qwg6bvwhg3lb0cbw3c9yij9p8mbv7zdzfmj7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-zeroize-derive" ,rust-zeroize-derive-1))))
    (home-page "https://github.com/iqlusioninc/crates/")
    (synopsis
      "Securely clear secrets from memory with a simple trait built on
stable Rust primitives which guarantee memory is zeroed using an
operation will not be 'optimized away' by the compiler.
Uses a portable pure Rust implementation that works everywhere,
even WASM!
")
    (description
      "Securely clear secrets from memory with a simple trait built on
stable Rust primitives which guarantee memory is zeroed using an
operation will not be 'optimized away' by the compiler.
Uses a portable pure Rust implementation that works everywhere,
even WASM!
")
    (license (list license:asl2.0 license:expat))))

(define-public rust-simple-asn1-0.5
  (package
    (name "rust-simple-asn1")
    (version "0.5.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "simple_asn1" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "103s209pwzfwqmqx2ibkmdsx6i8hay0gcg8izhfwh79hzdhfmd4f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-num-bigint" ,rust-num-bigint-0.4)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/acw/simple_asn1")
    (synopsis "A simple DER/ASN.1 encoding/decoding library.")
    (description
      "This package provides a simple DER/ASN.1 encoding/decoding library.")
    (license license:isc)))

(define-public rust-pem-0.8
  (package
    (name "rust-pem")
    (version "0.8.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pem" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1sqkzp87j6s79sjxk4n913gcmalzb2fdc75l832d0j7a3z9cnmpx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-base64" ,rust-base64-0.13)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/jcreekmore/pem-rs.git")
    (synopsis "Parse and encode PEM-encoded data.")
    (description "Parse and encode PEM-encoded data.")
    (license license:expat)))

(define-public rust-num-bigint-dig-0.7
  (package
    (name "rust-num-bigint-dig")
    (version "0.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "num-bigint-dig" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1004mmipvc7pvaf3kf13i1nqh3vxf789bj72d8wl51y185aywis5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-autocfg" ,rust-autocfg-0.1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libm" ,rust-libm-0.2)
         ("rust-num-integer" ,rust-num-integer-0.1)
         ("rust-num-iter" ,rust-num-iter-0.1)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://github.com/dignifiedquire/num-bigint")
    (synopsis "Big integer implementation for Rust")
    (description "Big integer implementation for Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-rsa-0.4
  (package
    (name "rust-rsa")
    (version "0.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rsa" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ziqpvza3l0rdrvyzspnm9kb083qzljvyhzbdqm130hhrbffs2kv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-byteorder" ,rust-byteorder-1)
         ("rust-digest" ,rust-digest-0.9)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-num-bigint-dig" ,rust-num-bigint-dig-0.7)
         ("rust-num-integer" ,rust-num-integer-0.1)
         ("rust-num-iter" ,rust-num-iter-0.1)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-pem" ,rust-pem-0.8)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-simple-asn1" ,rust-simple-asn1-0.5)
         ("rust-subtle" ,rust-subtle-2)
         ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://github.com/RustCrypto/RSA")
    (synopsis "Pure Rust RSA implementation")
    (description "Pure Rust RSA implementation")
    (license (list license:expat license:asl2.0))))

(define-public rust-region-2
  (package
    (name "rust-region")
    (version "2.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "region" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1q4szar3ms76552iygmhsvzhvvwkgz4l94qpx600vmyw5bm58zl7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-mach" ,rust-mach-0.3)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/darfink/region-rs")
    (synopsis "Cross-platform virtual memory API")
    (description "Cross-platform virtual memory API")
    (license license:expat)))

(define-public rust-password-hash-0.2
  (package
    (name "rust-password-hash")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "password-hash" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1rr4kd52ld978a2xhcvlc54p1d92yhxl9kvbajba7ia6rs5b5q3p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-base64ct" ,rust-base64ct-1)
         ("rust-rand-core" ,rust-rand-core-0.6)
         ("rust-subtle" ,rust-subtle-2))))
    (home-page
      "https://github.com/RustCrypto/traits/tree/master/password-hash")
    (synopsis
      "Traits which describe the functionality of password hashing algorithms,
as well as a `no_std`-friendly implementation of the PHC string format
(a well-defined subset of the Modular Crypt Format a.k.a. MCF)
")
    (description
      "Traits which describe the functionality of password hashing algorithms,
as well as a `no_std`-friendly implementation of the PHC string format
(a well-defined subset of the Modular Crypt Format a.k.a.  MCF)
")
    (license (list license:expat license:asl2.0))))

(define-public rust-base64ct-1
  (package
    (name "rust-base64ct")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "base64ct" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vmgx707qypzdlb1vfg72yakgwfg37ap89lynzdhv0awq23nbaa0"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/RustCrypto/formats/tree/master/base64ct")
    (synopsis
      "Pure Rust implementation of Base64 (RFC 4648) which avoids any usages of
data-dependent branches/LUTs and thereby provides portable \"best effort\"
constant-time operation and embedded-friendly no_std support
")
    (description
      "Pure Rust implementation of Base64 (RFC 4648) which avoids any usages of
data-dependent branches/LUTs and thereby provides portable \"best effort\"
constant-time operation and embedded-friendly no_std support
")
    (license (list license:asl2.0 license:expat))))

(define-public rust-pbkdf2-0.8
  (package
    (name "rust-pbkdf2")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pbkdf2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ykgicvyjm41701mzqhrfmiz5sm5y0zwfg6csaapaqaf49a54pyr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-base64ct" ,rust-base64ct-1)
         ("rust-crypto-mac" ,rust-crypto-mac-0.11)
         ("rust-hmac" ,rust-hmac-0.11)
         ("rust-password-hash" ,rust-password-hash-0.2)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-sha-1" ,rust-sha-1-0.9)
         ("rust-sha2" ,rust-sha2-0.9))))
    (home-page
      "https://github.com/RustCrypto/password-hashes/tree/master/pbkdf2")
    (synopsis "Generic implementation of PBKDF2")
    (description "Generic implementation of PBKDF2")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-humantime-2
  (package
    (name "rust-humantime")
    (version "2.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "humantime" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1r55pfkkf5v0ji1x6izrjwdq9v6sc7bv99xj6srywcar37xmnfls"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/tailhook/humantime")
    (synopsis
      "    A parser and formatter for std::time::{Duration, SystemTime}
")
    (description
      "    A parser and formatter for std::time::{Duration, SystemTime}
")
    (license (list license:expat license:asl2.0))))

(define-public rust-hkdf-0.11
  (package
    (name "rust-hkdf")
    (version "0.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hkdf" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0sw8bz79xqq3bc5dh6nzv084g7va13j3lrqf91c10a2wimbnsw01"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-digest" ,rust-digest-0.9) ("rust-hmac" ,rust-hmac-0.11))))
    (home-page "https://github.com/RustCrypto/KDFs/")
    (synopsis "HMAC-based Extract-and-Expand Key Derivation Function (HKDF)")
    (description
      "HMAC-based Extract-and-Expand Key Derivation Function (HKDF)")
    (license (list license:expat license:asl2.0))))

(define-public rust-block-modes-0.8
  (package
    (name "rust-block-modes")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "block-modes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "13id7rw1lhi83i701za8w5is3a8qkf4vfigqw3f8jp8mxldkvc1c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-block-padding" ,rust-block-padding-0.2)
         ("rust-cipher" ,rust-cipher-0.3))))
    (home-page "https://github.com/RustCrypto/block-ciphers")
    (synopsis "Block cipher modes of operation")
    (description "Block cipher modes of operation")
    (license (list license:expat license:asl2.0))))

(define-public rust-ctr-0.8
  (package
    (name "rust-ctr")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ctr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1sk1aykwhkny92cnvl6s75dx3fyvfzw5xkd6xz3y7w5anhgvk6q4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-cipher" ,rust-cipher-0.3))))
    (home-page "https://github.com/RustCrypto/stream-ciphers")
    (synopsis "CTR block mode of operation")
    (description "CTR block mode of operation")
    (license (list license:expat license:asl2.0))))

(define-public rust-cpufeatures-0.2
  (package
    (name "rust-cpufeatures")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cpufeatures" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0sgllzsvs8hinylaiigmd9c908gd8wclxnqz8dinpxbdyql981cm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/RustCrypto/utils")
    (synopsis
      "Lightweight and efficient no-std compatible alternative to the
is_x86_feature_detected! macro
")
    (description
      "Lightweight and efficient no-std compatible alternative to the
is_x86_feature_detected! macro
")
    (license (list license:expat license:asl2.0))))

(define-public rust-aes-0.7
  (package
    (name "rust-aes")
    (version "0.7.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1f0sdx2fsa8w3l7xzsyi9ry3shvnnsgc0znh50if9fm95vslg2wy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-cipher" ,rust-cipher-0.3)
         ("rust-cpufeatures" ,rust-cpufeatures-0.2)
         ("rust-ctr" ,rust-ctr-0.8)
         ("rust-opaque-debug" ,rust-opaque-debug-0.3))))
    (home-page "https://github.com/RustCrypto/block-ciphers")
    (synopsis
      "Pure Rust implementation of the Advanced Encryption Standard (a.k.a. Rijndael)
including support for AES in counter mode (a.k.a. AES-CTR)
")
    (description
      "Pure Rust implementation of the Advanced Encryption Standard (a.k.a.  Rijndael)
including support for AES in counter mode (a.k.a.  AES-CTR)
")
    (license (list license:expat license:asl2.0))))

(define-public rust-rbw-1
  (package
    (name "rust-rbw")
    (version "1.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rbw" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1b49rrkyrfxs1gzpfgzb89g42j0c7vm08rfzpa73biz22v12530b"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-aes" ,rust-aes-0.7)
         ("rust-anyhow" ,rust-anyhow-1)
         ("rust-arrayvec" ,rust-arrayvec-0.7)
         ("rust-async-trait" ,rust-async-trait-0.1)
         ("rust-base32" ,rust-base32-0.4)
         ("rust-base64" ,rust-base64-0.13)
         ("rust-block-modes" ,rust-block-modes-0.8)
         ("rust-block-padding" ,rust-block-padding-0.2)
         ("rust-daemonize" ,rust-daemonize-0.4)
         ("rust-directories" ,rust-directories-3)
         ("rust-env-logger" ,rust-env-logger-0.8)
         ("rust-hkdf" ,rust-hkdf-0.11)
         ("rust-hmac" ,rust-hmac-0.11)
         ("rust-humantime" ,rust-humantime-2)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-nix" ,rust-nix-0.21)
         ("rust-paw" ,rust-paw-1)
         ("rust-pbkdf2" ,rust-pbkdf2-0.8)
         ("rust-percent-encoding" ,rust-percent-encoding-2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-region" ,rust-region-2)
         ("rust-reqwest" ,rust-reqwest-0.11)
         ("rust-rsa" ,rust-rsa-0.4)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-serde-path-to-error" ,rust-serde-path-to-error-0.1)
         ("rust-serde-repr" ,rust-serde-repr-0.1)
         ("rust-sha-1" ,rust-sha-1-0.9)
         ("rust-sha2" ,rust-sha2-0.9)
         ("rust-structopt" ,rust-structopt-0.3)
         ("rust-tempfile" ,rust-tempfile-3)
         ("rust-term-size" ,rust-term-size-0.3)
         ("rust-textwrap" ,rust-textwrap-0.11)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-totp-lite" ,rust-totp-lite-1)
         ("rust-url" ,rust-url-2)
         ("rust-uuid" ,rust-uuid-0.8)
         ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://git.tozt.net/rbw")
    (synopsis "Unofficial Bitwarden CLI")
    (description "Unofficial Bitwarden CLI")
    (license license:expat)))
