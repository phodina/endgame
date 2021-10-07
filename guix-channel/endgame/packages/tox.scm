(define-module (endgame packages tox)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Need libsodium
(define-public rust-tox-encryptsave-0.1
  (package
    (name "rust-tox-encryptsave")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tox_encryptsave" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1g0y2zpmylsn3admv4irn6hpify5mfxm715x3x6bvavi59hgd2wv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-failure" ,rust-failure-0.1)
         ("rust-tox-crypto" ,rust-tox-crypto-0.1))))
    (home-page "https://github.com/tox-rs/tox/")
    (synopsis "Encryptsave part of tox")
    (description "Encryptsave part of tox")
    (license license:gpl3+)))

(define-public rust-tox-packet-0.1
  (package
    (name "rust-tox-packet")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tox_packet" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pacgapv1l8iw7m3al2mgnihm7brnlwarwpsnj3z3xz7vsdrff6n"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cookie-factory" ,rust-cookie-factory-0.3)
         ("rust-failure" ,rust-failure-0.1)
         ("rust-nom" ,rust-nom-5)
         ("rust-tox-binary-io" ,rust-tox-binary-io-0.1)
         ("rust-tox-crypto" ,rust-tox-crypto-0.1))))
    (home-page "https://github.com/tox-rs/tox/")
    (synopsis "Encoding/decoding for the tox protocol")
    (description "Encoding/decoding for the tox protocol")
    (license license:gpl3+)))

(define-public rust-tox-crypto-0.1
  (package
    (name "rust-tox-crypto")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tox_crypto" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0pswnhl1hsmajv2c3y6y0xwxkabix3x9chyr6lz2416wgddiv58k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-sodiumoxide" ,rust-sodiumoxide-0.2))))
    (home-page "https://github.com/tox-rs/tox/")
    (synopsis "Cryptography used by tox")
    (description "Cryptography used by tox")
    (license license:gpl3+)))

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

(define-public rust-sodiumoxide-0.2
  (package
    (name "rust-sodiumoxide")
    (version "0.2.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sodiumoxide" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0a00rcp2vphrs8qh0477rzs6lhsng1m5i0l4qamagnf2nsnf6sz2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ed25519" ,rust-ed25519-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-libsodium-sys" ,rust-libsodium-sys-0.2)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/sodiumoxide/sodiumoxide")
    (synopsis "Fast cryptographic library for Rust (bindings to libsodium)")
    (description "Fast cryptographic library for Rust (bindings to libsodium)")
    (license (list license:expat license:asl2.0))))

(define-public rust-tox-binary-io-0.1
  (package
    (name "rust-tox-binary-io")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tox_binary_io" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bdpq34h56r4xv1vycldi8g88n5gid6m9zvl08jsaxmvqywqi4pz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cookie-factory" ,rust-cookie-factory-0.3)
         ("rust-nom" ,rust-nom-5)
         ("rust-sodiumoxide" ,rust-sodiumoxide-0.2))))
    (home-page "https://github.com/tox-rs/tox/")
    (synopsis "I/O traits for tox")
    (description "I/O traits for tox")
    (license license:gpl3+)))

(define-public rust-lru-0.6
  (package
    (name "rust-lru")
    (version "0.6.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lru" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14dsf7345kwb8fg75dmkywkjpchxc9yxkwng124nwhc5nhldk8ky"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-hashbrown" ,rust-hashbrown-0.11))))
    (home-page "https://github.com/jeromefroe/lru-rs")
    (synopsis "A LRU cache implementation")
    (description "This package provides a LRU cache implementation")
    (license license:expat)))

(define-public rust-tox-core-0.1
  (package
    (name "rust-tox-core")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tox_core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lm7j2wbnrp5jgz7cw5ca45jj645l9vn6zm5br6pv6ga9xwgg798"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-bytes" ,rust-bytes-0.5)
         ("rust-cookie-factory" ,rust-cookie-factory-0.3)
         ("rust-failure" ,rust-failure-0.1)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-get-if-addrs" ,rust-get-if-addrs-0.5)
         ("rust-itertools" ,rust-itertools-0.9)
         ("rust-log" ,rust-log-0.4)
         ("rust-lru" ,rust-lru-0.6)
         ("rust-nom" ,rust-nom-5)
         ("rust-tokio" ,rust-tokio-0.2)
         ("rust-tokio-util" ,rust-tokio-util-0.3)
         ("rust-tox-binary-io" ,rust-tox-binary-io-0.1)
         ("rust-tox-crypto" ,rust-tox-crypto-0.1)
         ("rust-tox-packet" ,rust-tox-packet-0.1))))
    (home-page "https://github.com/tox-rs/tox/")
    (synopsis "The core of tox")
    (description "The core of tox")
    (license license:gpl3+)))

(define-public rust-tox-0.1
  (package
    (name "rust-tox")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tox" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bl4klg5ga2qzmfq28b0zpf7r0sq7s5xc6rh0wkb1jb7ch8zadsl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-tox-core" ,rust-tox-core-0.1)
         ("rust-tox-crypto" ,rust-tox-crypto-0.1)
         ("rust-tox-encryptsave" ,rust-tox-encryptsave-0.1)
         ("rust-tox-packet" ,rust-tox-packet-0.1))))
    (home-page "https://github.com/tox-rs/tox/")
    (synopsis
      "Implementation of toxcore in pure Rust -
P2P, distributed, encrypted, easy
to use DHT-based network.
")
    (description
      "Implementation of toxcore in pure Rust -
P2P, distributed, encrypted, easy
to use DHT-based network.
")
    (license license:gpl3+)))
