(define-module (endgame packages pijul)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages rust)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-pasts-0.4
  (package
    (name "rust-pasts")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pasts" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11rdczdhpazclhkbbjafv5nd9ybll9a110crhh67si0p5rdc6mz7"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/AldaronLau/pasts/blob/main/CHANGELOG.md")
    (synopsis "Minimal and simpler alternative to the futures crate.")
    (description "Minimal and simpler alternative to the futures crate.")
    (license (list license:asl2.0 license:zlib))))

(define-public rust-cala-core-0.1
  (package
    (name "rust-cala-core")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cala_core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17939zm80lxi0mqsvi98wv2hjasbbh132j5i2m201x30j8dkx4wx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pasts" ,rust-pasts-0.4)
         ("rust-stdweb" ,rust-stdweb-0.4)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
    (home-page "https://github.com/libcala/cala_core/blob/master/CHANGELOG.md")
    (synopsis "Low-level platform glue for Cala")
    (description "Low-level platform glue for Cala")
    (license (list license:asl2.0 license:zlib))))

(define-public rust-whoami-0.9
  (package
    (name "rust-whoami")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "whoami" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "012mw2q72gpmf354yw2qc5w105ziac75shpqp1f62x4hnqx7g13q"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cala-core" ,rust-cala-core-0.1))))
    (home-page "https://github.com/libcala/whoami/blob/main/CHANGELOG.md")
    (synopsis "Retrieve the current user and environment.")
    (description "Retrieve the current user and environment.")
    (license (list license:expat license:boost1.0))))

(define-public rust-whoami-1
  (package
    (name "rust-whoami")
    (version "1.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "whoami" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "05v1nsf82sf9mmgkm2s7pi70zway66s2xg08xf8fqgx9w7z5jfj8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://github.com/libcala/whoami/blob/main/CHANGELOG.md")
    (synopsis "Retrieve the current user and environment.")
    (description "Retrieve the current user and environment.")
    (license (list license:asl2.0 license:boost1.0 license:expat))))

(define-public rust-thrussh-config-0.5
  (package
    (name "rust-thrussh-config")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thrussh-config" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ygm5vdy180gslgmbd0v722ap451pw8cwaba0g0dzx5gg3cl9h37"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-dirs-next" ,rust-dirs-next-2)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-whoami" ,rust-whoami-1))))
    (home-page "https://nest.pijul.com/pijul/thrussh")
    (synopsis
      "Utilities to parse .ssh/config files, including helpers to implement ProxyCommand in Thrussh.")
    (description
      "Utilities to parse .ssh/config files, including helpers to implement ProxyCommand in Thrussh.")
    (license license:asl2.0)))

(define-public rust-yasna-0.4
  (package
    (name "rust-yasna")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "yasna" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xgsvxqnycdakh6j3hg4dk3mylrpnba50w0d36vg5k311sfs4qp2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bit-vec" ,rust-bit-vec-0.6)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-num-bigint" ,rust-num-bigint-0.4))))
    (home-page "https://github.com/qnighy/yasna.rs")
    (synopsis "ASN.1 library for Rust")
    (description "ASN.1 library for Rust")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-libsodium-sys-0.2
  (package
    (name "rust-libsodium-sys")
    (version "0.2.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libsodium-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zcjka23grayr8kjrgbada6vwagp0kkni9m45v0gpbanrn3r6xvb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://github.com/sodiumoxide/sodiumoxide.git")
    (synopsis "FFI binding to libsodium")
    (description "FFI binding to libsodium")
    (license (list license:expat license:asl2.0))))

(define-public rust-thrussh-libsodium-0.2
  (package
    (name "rust-thrussh-libsodium")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thrussh-libsodium" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "004mxns64gr3507dzr6s8vgd1478jcsgd2mw2cpbj73vs9q9rs6g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-libsodium-sys" ,rust-libsodium-sys-0.2)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-vcpkg" ,rust-vcpkg-0.2))))
    (home-page "https://nest.pijul.com/pijul_org/thrussh")
    (synopsis "Straightforward bindings to libsodium")
    (description "Straightforward bindings to libsodium")
    (license (list license:asl2.0 license:expat))))

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

(define-public rust-blowfish-0.8
  (package
    (name "rust-blowfish")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "blowfish" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ax736islxcbghc2lqq4vy7zn6qdigrls71lwg11m3743pyg6gzy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-byteorder" ,rust-byteorder-1)
         ("rust-cipher" ,rust-cipher-0.3)
         ("rust-opaque-debug" ,rust-opaque-debug-0.3))))
    (home-page "https://github.com/RustCrypto/block-ciphers")
    (synopsis "Blowfish block cipher")
    (description "Blowfish block cipher")
    (license (list license:expat license:asl2.0))))

(define-public rust-bcrypt-pbkdf-0.6
  (package
    (name "rust-bcrypt-pbkdf")
    (version "0.6.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bcrypt-pbkdf" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ms9c5z90n5szx5nbxrqaihny5fs3sl6a1pm3szr5g86jlxw0f3w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-blowfish" ,rust-blowfish-0.8)
         ("rust-crypto-mac" ,rust-crypto-mac-0.11)
         ("rust-pbkdf2" ,rust-pbkdf2-0.8)
         ("rust-sha2" ,rust-sha2-0.9)
         ("rust-zeroize" ,rust-zeroize-1))))
    (home-page
      "https://github.com/RustCrypto/password-hashes/tree/master/bcrypt-pbkdf")
    (synopsis "bcrypt-pbkdf password-based key derivation function")
    (description "bcrypt-pbkdf password-based key derivation function")
    (license (list license:expat license:asl2.0))))

(define-public rust-thrussh-keys-0.21
  (package
    (name "rust-thrussh-keys")
    (version "0.21.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thrussh-keys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1azmv32m5jpxsflj4dq62i84mv2cavc354r8yy98vc9j54dcab57"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-aes" ,rust-aes-0.7)
         ("rust-bcrypt-pbkdf" ,rust-bcrypt-pbkdf-0.6)
         ("rust-bit-vec" ,rust-bit-vec-0.6)
         ("rust-block-modes" ,rust-block-modes-0.8)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-cryptovec" ,rust-cryptovec-0.6)
         ("rust-data-encoding" ,rust-data-encoding-2)
         ("rust-dirs" ,rust-dirs-3)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-hmac" ,rust-hmac-0.11)
         ("rust-log" ,rust-log-0.4)
         ("rust-md5" ,rust-md5-0.7)
         ("rust-num-bigint" ,rust-num-bigint-0.4)
         ("rust-num-integer" ,rust-num-integer-0.1)
         ("rust-openssl" ,rust-openssl-0.10)
         ("rust-pbkdf2" ,rust-pbkdf2-0.8)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-sha2" ,rust-sha2-0.9)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-thrussh-libsodium" ,rust-thrussh-libsodium-0.2)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-tokio-stream" ,rust-tokio-stream-0.1)
         ("rust-yasna" ,rust-yasna-0.4))))
    (home-page "https://pijul.org/thrussh")
    (synopsis
      "Deal with SSH keys: load them, decrypt them, call an SSH agent.")
    (description
      "Deal with SSH keys: load them, decrypt them, call an SSH agent.")
    (license license:asl2.0)))

(define-public rust-cryptovec-0.6
  (package
    (name "rust-cryptovec")
    (version "0.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cryptovec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pqb2g1n3sx0d2cjiy06amcr2wlf9izwb4jj68nk5cmvlq9zmiyc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2) ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://pijul.org/cryptovec")
    (synopsis "A vector which zeroes its memory on clears and reallocations.")
    (description
      "This package provides a vector which zeroes its memory on clears and reallocations.")
    (license license:asl2.0)))

(define-public rust-thrussh-0.33
  (package
    (name "rust-thrussh")
    (version "0.33.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thrussh" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1y1nhpg9l8jwjv59am9kmf9gib2j58c1qm36dvgq7pwsi8il0rcf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-cryptovec" ,rust-cryptovec-0.6)
         ("rust-digest" ,rust-digest-0.9)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-generic-array" ,rust-generic-array-0.14)
         ("rust-log" ,rust-log-0.4)
         ("rust-openssl" ,rust-openssl-0.10)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-sha2" ,rust-sha2-0.9)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-thrussh-keys" ,rust-thrussh-keys-0.21)
         ("rust-thrussh-libsodium" ,rust-thrussh-libsodium-0.2)
         ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://pijul.org/thrussh")
    (synopsis "A client and server SSH library.")
    (description "This package provides a client and server SSH library.")
    (license license:asl2.0)))

(define-public rust-pager-0.16
  (package
    (name "rust-pager")
    (version "0.16.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pager" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0s0r95q3jfbh2c3paab2bpl158lyaq35xnzy1x7mrdfhy26d1iq5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-errno" ,rust-errno-0.2) ("rust-libc" ,rust-libc-0.2))))
    (home-page "https://gitlab.com/imp/pager-rs.git")
    (synopsis "Helps pipe your output through an external pager")
    (description "Helps pipe your output through an external pager")
    (license (list license:asl2.0 license:expat))))

(define-public rust-threadpool-1
  (package
    (name "rust-threadpool")
    (version "1.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "threadpool" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1amgfyzvynbm8pacniivzq9r0fh3chhs7kijic81j76l6c5ycl6h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-num-cpus" ,rust-num-cpus-1))))
    (home-page "https://github.com/rust-threadpool/rust-threadpool")
    (synopsis
      "A thread pool for running a number of jobs on a fixed set of worker threads.
")
    (description
      "This package provides a thread pool for running a number of jobs on a fixed set of worker threads.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-zstd-seekable-0.1
  (package
    (name "rust-zstd-seekable")
    (version "0.1.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zstd-seekable" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bxzd71myj094hp03jpqbv1r80x0hk1ahsjwfv50j0wgx379jfry"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-threadpool" ,rust-threadpool-1))))
    (home-page "https://nest.pijul.com/pijul/zstd-seekable")
    (synopsis "Bindings to the seekable version of ZStandard.")
    (description "Bindings to the seekable version of ZStandard.")
    (license license:bsd-3)))

(define-public rust-ed25519-zebra-2
  (package
    (name "rust-ed25519-zebra")
    (version "2.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ed25519-zebra" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0284mnhc2514b9hzyhgcf8vfggwdqwyx8vsawckv9m3dmxv8n4ha"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-curve25519-dalek" ,rust-curve25519-dalek-3)
         ("rust-hex" ,rust-hex-0.4)
         ("rust-rand-core" ,rust-rand-core-0.5)
         ("rust-serde" ,rust-serde-1)
         ("rust-sha2" ,rust-sha2-0.9)
         ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/ZcashFoundation/ed25519-zebra")
    (synopsis "Zcash-flavored Ed25519 for use in Zebra.")
    (description "Zcash-flavored Ed25519 for use in Zebra.")
    (license (list license:expat license:asl2.0))))

(define-public rust-sanakirja-core-1
  (package
    (name "rust-sanakirja-core")
    (version "1.2.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sanakirja-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "005y1sr4vi58n1ysci097nc2jvnrmsl562zvkjqxcscr474sca4q"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crc32fast" ,rust-crc32fast-1)
         ("rust-ed25519-zebra" ,rust-ed25519-zebra-2)
         ("rust-uuid" ,rust-uuid-0.8))))
    (home-page "https://nest.pijul.com/pijul/sanakirja")
    (synopsis
      "Copy-on-write datastructures, storable on disk (or elsewhere) with a stable format.")
    (description
      "Copy-on-write datastructures, storable on disk (or elsewhere) with a stable format.")
    (license (list license:expat license:asl2.0))))

(define-public rust-sanakirja-1
  (package
    (name "rust-sanakirja")
    (version "1.2.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sanakirja" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zn9gx5w1pwmn69r66lv13gc761vhgp20xl1hdy9wn5hxjzhw0xy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crc32fast" ,rust-crc32fast-1)
         ("rust-fs2" ,rust-fs2-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-memmap" ,rust-memmap-0.7)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-sanakirja-core" ,rust-sanakirja-core-1)
         ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://nest.pijul.com/pijul/sanakirja")
    (synopsis
      "Copy-on-write datastructures, storable on disk (or elsewhere) with a stable format.")
    (description
      "Copy-on-write datastructures, storable on disk (or elsewhere) with a stable format.")
    (license (list license:expat license:asl2.0))))

(define-public rust-pijul-macros-0.4
  (package
    (name "rust-pijul-macros")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pijul-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "052pwsj072rd4l62c87x0yc86ldm385lmmz19nffarcs84brhk76"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://nest.pijul.com/pijul/pijul")
    (synopsis "Macros used to write libpijul.")
    (description "Macros used to write libpijul.")
    (license license:gpl2)))

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

(define-public rust-diffs-0.4
  (package
    (name "rust-diffs")
    (version "0.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "diffs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07cpi60h9mddk62lysrybkrqlca8v8ffxhifv649x3fw250pn4d8"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://nest.pijul.com/pijul/diffs")
    (synopsis
      "A number of diff algorithms, also called longest common subsequence.")
    (description
      "This package provides a number of diff algorithms, also called longest common subsequence.")
    (license (list license:expat license:asl2.0))))

(define-public rust-bs58-0.4
  (package
    (name "rust-bs58")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bs58" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1lr3vwzhhyica4y7rbkf26vr1h7vpjb1m6rml8zcqgw81c2y07vp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-sha2" ,rust-sha2-0.9))))
    (home-page "https://github.com/mycorrhiza/bs58-rs")
    (synopsis "Another Base58 codec implementation.")
    (description "Another Base58 codec implementation.")
    (license (list license:expat license:asl2.0))))

(define-public rust-blake3-1
  (package
    (name "rust-blake3")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "blake3" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07v9ybgla6cizfyz6casw87q3khfcr43p25nvcvgimcicb35bmfw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arrayref" ,rust-arrayref-0.3)
         ("rust-arrayvec" ,rust-arrayvec-0.7)
         ("rust-cc" ,rust-cc-1)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-constant-time-eq" ,rust-constant-time-eq-0.1)
         ("rust-crypto-mac" ,rust-crypto-mac-0.11)
         ("rust-digest" ,rust-digest-0.9)
         ("rust-rayon" ,rust-rayon-1))))
    (home-page "https://github.com/BLAKE3-team/BLAKE3")
    (synopsis "the BLAKE3 hash function")
    (description "the BLAKE3 hash function")
    (license (list license:cc0 license:asl2.0))))

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

(define-public rust-adler32-1
  (package
    (name "rust-adler32")
    (version "1.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "adler32" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0d7jq7jsjyhsgbhnfq5fvrlh9j0i9g1fqrl2735ibv5f75yjgqda"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/remram44/adler32-rs")
    (synopsis "Minimal Adler32 implementation for Rust.")
    (description "Minimal Adler32 implementation for Rust.")
    (license license:zlib)))

(define-public rust-libpijul-1
  (package
    (name "rust-libpijul")
    (version "1.0.0-alpha.48")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libpijul" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jy6s2kc8zbihws1gyzq9n34lnfx9f1gvjy7mlfbhp8g4ffnrggz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-adler32" ,rust-adler32-1)
         ("rust-aes" ,rust-aes-0.7)
         ("rust-bincode" ,rust-bincode-1)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-blake3" ,rust-blake3-1)
         ("rust-bs58" ,rust-bs58-0.4)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-canonical-path" ,rust-canonical-path-2)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8)
         ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
         ("rust-curve25519-dalek" ,rust-curve25519-dalek-3)
         ("rust-data-encoding" ,rust-data-encoding-2)
         ("rust-diffs" ,rust-diffs-0.4)
         ("rust-ed25519-dalek" ,rust-ed25519-dalek-1)
         ("rust-encoding-rs" ,rust-encoding-rs-0.8)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-generic-array" ,rust-generic-array-0.14)
         ("rust-hmac" ,rust-hmac-0.11)
         ("rust-ignore" ,rust-ignore-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-lru-cache" ,rust-lru-cache-0.1)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-path-slash" ,rust-path-slash-0.1)
         ("rust-pbkdf2" ,rust-pbkdf2-0.8)
         ("rust-pijul-macros" ,rust-pijul-macros-0.4)
         ("rust-rand" ,rust-rand-0.7)
         ("rust-rand-core" ,rust-rand-core-0.6)
         ("rust-regex" ,rust-regex-1)
         ("rust-sanakirja" ,rust-sanakirja-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-sha2" ,rust-sha2-0.9)
         ("rust-tar" ,rust-tar-0.4)
         ("rust-tempfile" ,rust-tempfile-3)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-twox-hash" ,rust-twox-hash-1)
         ("rust-zstd-seekable" ,rust-zstd-seekable-0.1))))
    (home-page "https://nest.pijul.com/pijul/libpijul")
    (synopsis
      "Core library of Pijul, a distributed version control system based on a sound theory of collaborative work.")
    (description
      "Core library of Pijul, a distributed version control system based on a sound theory of collaborative work.")
    (license license:gpl2+)))

(define-public rust-os-type-2
  (package
    (name "rust-os-type")
    (version "2.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "os_type" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "146zx5mh84n5p2xhlwb8b75wbkqw87fvb87n3adl44lz5pifpsln"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/schultyy/os_type")
    (synopsis "Detect the operating system type")
    (description "Detect the operating system type")
    (license license:expat)))

(define-public rust-human-panic-1
  (package
    (name "rust-human-panic")
    (version "1.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "human-panic" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0djfad84iwl86kabj8rqfhv5nn1qi1fd9hb7z72xgjxb02jmgwrr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-os-type" ,rust-os-type-2)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-termcolor" ,rust-termcolor-1)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-uuid" ,rust-uuid-0.8))))
    (home-page "https://github.com/yoshuawuyts/human-panic")
    (synopsis "Panic messages for humans")
    (description "Panic messages for humans")
    (license (list license:expat license:asl2.0))))

(define-public rust-edit-0.1
  (package
    (name "rust-edit")
    (version "0.1.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "edit" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1q0f7mhsv2z8wyrqnx755jcli1fdpx9ziviji7i855xxz0v6kp9w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-tempfile" ,rust-tempfile-3) ("rust-which" ,rust-which-4))))
    (home-page "https://github.com/milkey-mouse/edit")
    (synopsis "Open a file in the default text editor")
    (description "Open a file in the default text editor")
    (license license:cc0)))

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
      `(#:skip-build? #t #:cargo-inputs (("rust-regex" ,rust-regex-1))))
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

(define-public rust-os-str-bytes-3
  (package
    (name "rust-os-str-bytes")
    (version "3.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "os_str_bytes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bfgm53jgdacylwd6ynjhciczmnlrp45p98h0nsrmrhglrcfzjva"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/dylni/os_str_bytes")
    (synopsis
      "Utilities for converting between byte sequences and platform-native strings
")
    (description
      "Utilities for converting between byte sequences and platform-native strings
")
    (license (list license:expat license:asl2.0))))

(define-public rust-syn-1
  (package
    (name "rust-syn")
    (version "1.0.80")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syn" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "156i2pkz6rqic3zgfgq5wjhgy1gwmrm93aahsr8nv45x7xia246h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page "https://github.com/dtolnay/syn")
    (synopsis "Parser for Rust source code")
    (description "Parser for Rust source code")
    (license (list license:expat license:asl2.0))))

(define-public rust-proc-macro2-1
  (package
    (name "rust-proc-macro2")
    (version "1.0.30")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0w7fc5mvk7jsfgn1pmiphkvjd0min12zj1y0l1zqpg37pj73bhzd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page "https://github.com/alexcrichton/proc-macro2")
    (synopsis
      "A substitute implementation of the compiler's `proc_macro` API to decouple
token-based libraries from the procedural macro use case.
")
    (description
      "This package provides a substitute implementation of the compiler's `proc_macro` API to decouple
token-based libraries from the procedural macro use case.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-clap-derive-3
  (package
    (name "rust-clap-derive")
    (version "3.0.0-beta.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clap_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1b11ai375p73a7s0ijr2qwfgkcgwizxpihfif23hnjk2apbb0nqb"))))
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
    (home-page "https://clap.rs/")
    (synopsis
      "Parse command line argument by defining a struct, derive crate.")
    (description
      "Parse command line argument by defining a struct, derive crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-clap-3
  (package
    (name "rust-clap")
    (version "3.0.0-beta.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "01l4x641s3nkf9h06ads4gw2x2vnyag3ym3s47vl5g3xb6jhmmzw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-atty" ,rust-atty-0.2)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-clap-derive" ,rust-clap-derive-3)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-os-str-bytes" ,rust-os-str-bytes-3)
         ("rust-regex" ,rust-regex-1)
         ("rust-strsim" ,rust-strsim-0.10)
         ("rust-termcolor" ,rust-termcolor-1)
         ("rust-terminal-size" ,rust-terminal-size-0.1)
         ("rust-textwrap" ,rust-textwrap-0.14)
         ("rust-vec-map" ,rust-vec-map-0.8)
         ("rust-yaml-rust" ,rust-yaml-rust-0.4))))
    (home-page "https://clap.rs/")
    (synopsis
      "A simple to use, efficient, and full-featured Command Line Argument Parser")
    (description
      "This package provides a simple to use, efficient, and full-featured Command Line Argument Parser")
    (license (list license:expat license:asl2.0))))

(define-public rust-canonical-path-2
  (package
    (name "rust-canonical-path")
    (version "2.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "canonical-path" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vvsjda6ka5nz8zvx6r08zqi0j59sjccgcbjxj96xj764w9y1sg6"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/iqlusioninc/crates/")
    (synopsis
      "Path and PathBuf-like types for representing canonical filesystem paths")
    (description
      "Path and PathBuf-like types for representing canonical filesystem paths")
    (license license:asl2.0)))

; Split workspace into pijul, libpijul and pijul-macros
(define-public pijul
  (package
    (name "pijul")
    (version "1.0.0-alpha.54")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pijul" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1n9srldq9kp13i34gbzhzn2lng099f3rvspzrjxicy1amr2a8pj5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:rust ,rust-1.52
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-atty" ,rust-atty-0.2)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-canonical-path" ,rust-canonical-path-2)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-clap" ,rust-clap-3)
         ("rust-ctrlc" ,rust-ctrlc-3)
         ("rust-data-encoding" ,rust-data-encoding-2)
         ("rust-dirs-next" ,rust-dirs-next-2)
         ("rust-edit" ,rust-edit-0.1)
         ("rust-env-logger" ,rust-env-logger-0.8)
         ("rust-fs2" ,rust-fs2-0.4)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-git2" ,rust-git2-0.13)
         ("rust-human-panic" ,rust-human-panic-1)
         ("rust-ignore" ,rust-ignore-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libpijul" ,rust-libpijul-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-num-cpus" ,rust-num-cpus-1)
         ("rust-pager" ,rust-pager-0.16)
         ("rust-path-slash" ,rust-path-slash-0.1)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-regex" ,rust-regex-1)
         ("rust-reqwest" ,rust-reqwest-0.11)
         ("rust-rpassword" ,rust-rpassword-5)
         ("rust-sanakirja" ,rust-sanakirja-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-termcolor" ,rust-termcolor-1)
         ("rust-terminal-size" ,rust-terminal-size-0.1)
         ("rust-thrussh" ,rust-thrussh-0.33)
         ("rust-thrussh-config" ,rust-thrussh-config-0.5)
         ("rust-thrussh-keys" ,rust-thrussh-keys-0.21)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-url" ,rust-url-2)
         ("rust-whoami" ,rust-whoami-0.9))))
    (home-page "https://nest.pijul.com/pijul/pijul")
    (synopsis "A distributed version control system.")
    (description "This package provides a distributed version control system.")
    (license license:gpl2+)))
