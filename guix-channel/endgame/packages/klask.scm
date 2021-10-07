(define-module (endgame packages klask)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-graphics)
  #:use-module (gnu packages rust)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-thiserror-impl-1
  (package
    (name "rust-thiserror-impl")
    (version "1.0.29")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thiserror-impl" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0k290k93cs3gfmfjfdz23srx3rl0grj3lxh0hhjxxs3q5k657mds"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page
      "https://github.com/dtolnay/thiserror")
    (synopsis
      "Implementation detail of the `thiserror` crate")
    (description
      "Implementation detail of the `thiserror` crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-thiserror-1
  (package
    (name "rust-thiserror")
    (version "1.0.29")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thiserror" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "124v54fr3b3i230naz4j04l401dnf2fb0d1g5fg3d0rd9c3clbk0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-thiserror-impl" ,rust-thiserror-impl-1))))
    (home-page
      "https://github.com/dtolnay/thiserror")
    (synopsis "derive(Error)")
    (description "derive(Error)")
    (license (list license:expat license:asl2.0))))

(define-public rust-wfd-0.1
  (package
    (name "rust-wfd")
    (version "0.1.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wfd" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1a6p8651l0q9dvzipam91nwv56n2ijxfpqg318dbzrdacw5h84z7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page
      "https://www.github.com/ben-wallis/wfd")
    (synopsis
      "A simple to use abstraction over the Open and Save dialogs in the Windows API")
    (description
      "This package provides a simple to use abstraction over the Open and Save dialogs in the Windows API")
    (license license:expat)))

(define-public rust-native-dialog-0.5
  (package
    (name "rust-native-dialog")
    (version "0.5.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "native-dialog" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "12mxgppbj1pcandjph7723w3pbd9rhrx564p1q73agnv2w8b12fn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cocoa" ,rust-cocoa-0.24)
         ("rust-dirs-next" ,rust-dirs-next-2)
         ("rust-objc" ,rust-objc-0.2)
         ("rust-objc-foundation"
          ,rust-objc-foundation-0.1)
         ("rust-objc-id" ,rust-objc-id-0.1)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-raw-window-handle"
          ,rust-raw-window-handle-0.3)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-wfd" ,rust-wfd-0.1)
         ("rust-which" ,rust-which-4)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page
      "https://github.com/balthild/native-dialog-rs")
    (synopsis
      "A library to display dialogs. Supports GNU/Linux, BSD Unix, macOS and Windows.")
    (description
      "This package provides a library to display dialogs.  Supports GNU/Linux, BSD Unix, macOS and Windows.")
    (license license:expat)))

(define-public rust-linkify-0.7
  (package
    (name "rust-linkify")
    (version "0.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "linkify" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1y99xcmy6793m6x3z2qcyiw3dfrdvza3n659lmlv7kpzq7yjin04"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-memchr" ,rust-memchr-2))))
    (home-page "https://github.com/robinst/linkify")
    (synopsis
      "Finds URLs and email addresses in plain text. Takes care to get the boundaries right with surrounding punctuation like parentheses.")
    (description
      "Finds URLs and email addresses in plain text.  Takes care to get the boundaries right with surrounding punctuation like parentheses.")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-shared-0.2
  (package
    (name "rust-wasm-bindgen-shared")
    (version "0.2.78")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-shared" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1k27dc57h0brx5ish4dwmzibyif7m9lfagvph1a7s0ygi4kj6dq2"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis
      "Shared support between wasm-bindgen and wasm-bindgen cli, an internal
dependency.
")
    (description
      "Shared support between wasm-bindgen and wasm-bindgen cli, an internal
dependency.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-backend-0.2
  (package
    (name "rust-wasm-bindgen-backend")
    (version "0.2.78")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-backend" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0yw3ma0ahd1cz3afxpqcgwy9rwwgmz2g8pn8nas7c95sky7vy5x3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bumpalo" ,rust-bumpalo-3)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1)
         ("rust-wasm-bindgen-shared"
          ,rust-wasm-bindgen-shared-0.2))))
    (home-page
      "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis
      "Backend code generation of the wasm-bindgen tool
")
    (description
      "Backend code generation of the wasm-bindgen tool
")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-macro-support-0.2
  (package
    (name "rust-wasm-bindgen-macro-support")
    (version "0.2.78")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-macro-support" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1ay5qmbqh8hbsgf2dqkg7ia13srx3c1d6p2qvjmzhdaqlbpf00vq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1)
         ("rust-wasm-bindgen-backend"
          ,rust-wasm-bindgen-backend-0.2)
         ("rust-wasm-bindgen-shared"
          ,rust-wasm-bindgen-shared-0.2))))
    (home-page
      "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis
      "The part of the implementation of the `#[wasm_bindgen]` attribute that is not in the shared backend crate
")
    (description
      "The part of the implementation of the `#[wasm_bindgen]` attribute that is not in the shared backend crate
")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-macro-0.2
  (package
    (name "rust-wasm-bindgen-macro")
    (version "0.2.78")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-macro" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1ydcppds5qbj77c7kdinkg9qidcf7ahvwqvnb3v8nllmqkklcqfm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-quote" ,rust-quote-1)
         ("rust-wasm-bindgen-macro-support"
          ,rust-wasm-bindgen-macro-support-0.2))))
    (home-page
      "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis
      "Definition of the `#[wasm_bindgen]` attribute, an internal dependency
")
    (description
      "Definition of the `#[wasm_bindgen]` attribute, an internal dependency
")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-0.2
  (package
    (name "rust-wasm-bindgen")
    (version "0.2.78")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1kkzwj24z9ad7lq8c5ynlnpxpx8hwra6w6brl871a6dj6vi76bv3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-wasm-bindgen-macro"
          ,rust-wasm-bindgen-macro-0.2))))
    (home-page "https://rustwasm.github.io/")
    (synopsis
      "Easy support for interacting between JS and Rust.
")
    (description
      "Easy support for interacting between JS and Rust.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-js-sys-0.3
  (package
    (name "rust-js-sys")
    (version "0.3.55")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "js-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "116cg9vn62cl3vifbs6cjdsg7hz98kr7sr8kpy31liccsg6gzjbw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
    (home-page
      "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis
      "Bindings for all JS global objects and functions in all JS environments like
Node.js and browsers, built on `#[wasm_bindgen]` using the `wasm-bindgen` crate.
")
    (description
      "Bindings for all JS global objects and functions in all JS environments like
Node.js and browsers, built on `#[wasm_bindgen]` using the `wasm-bindgen` crate.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-web-sys-0.3
  (package
    (name "rust-web-sys")
    (version "0.3.55")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "web-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1yz9dym9y9f9s1f99q5j5kl2dfc5kn2jpjfdnnkfmnar3igi1srq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-js-sys" ,rust-js-sys-0.3)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
    (home-page
      "https://rustwasm.github.io/wasm-bindgen/web-sys/index.html")
    (synopsis
      "Bindings for all Web APIs, a procedurally generated crate from WebIDL
")
    (description
      "Bindings for all Web APIs, a procedurally generated crate from WebIDL
")
    (license (list license:expat license:asl2.0))))

(define-public rust-egui-web-0.14
  (package
    (name "rust-egui-web")
    (version "0.14.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "egui_web" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1pnrzamq17yjdz27ah6r12q415wvaanabvxz1ik8j5d30gp7w2m7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
	#:rust ,rust-1.52                ;requires the "resolver" feature
        #:cargo-inputs
        (("rust-egui" ,rust-egui-0.14)
         ("rust-epi" ,rust-epi-0.14)
         ("rust-js-sys" ,rust-js-sys-0.3)
         ("rust-ron" ,rust-ron-0.6)
         ("rust-serde" ,rust-serde-1)
         ("rust-tts" ,rust-tts-0.17)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-wasm-bindgen-futures"
          ,rust-wasm-bindgen-futures-0.4)
         ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://github.com/emilk/egui")
    (synopsis
      "Bindings for compiling egui code to WASM for a web page")
    (description
      "Bindings for compiling egui code to WASM for a web page")
    (license (list license:expat license:asl2.0))))

(define-public rust-time-macros-0.1
  (package
    (name "rust-time-macros")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time-macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1wg24yxpxcfmim6dgblrf8p321m7cyxpdivzvp8bcb7i4rp9qzlm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro-hack"
          ,rust-proc-macro-hack-0.5)
         ("rust-time-macros-impl"
          ,rust-time-macros-impl-0.1))))
    (home-page "https://github.com/time-rs/time")
    (synopsis
      "Procedural macros for the time crate.")
    (description
      "Procedural macros for the time crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-standback-0.2
  (package
    (name "rust-standback")
    (version "0.2.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "standback" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1zr8zy3kzryaggz3k0j4135m3zbd31pyqmja8cyj8yp07mpzn4z1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-version-check" ,rust-version-check-0.9))))
    (home-page
      "https://github.com/jhpratt/standback")
    (synopsis "New standard library, old compiler.")
    (description
      "New standard library, old compiler.")
    (license (list license:expat license:asl2.0))))

(define-public rust-time-0.2
  (package
    (name "rust-time")
    (version "0.2.27")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0hm209d078jfgxzjhi5xqim64q31rlj1h70zz57qbmpbirzsjlj7"))))
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

(define-public rust-psl-types-2
  (package
    (name "rust-psl-types")
    (version "2.0.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "psl-types" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0kqssn9wgqpl1m26ynv7cvxanfhyjvssi2a3jc2nzpbw7q3ricv6"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/addr-rs/psl-types")
    (synopsis
      "Common types for the public suffix implementation crates")
    (description
      "Common types for the public suffix implementation crates")
    (license (list license:expat license:asl2.0))))

(define-public rust-byteorder-1
  (package
    (name "rust-byteorder")
    (version "1.4.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "byteorder" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0456lv9xi1a5bcm32arknf33ikv76p3fr9yzki4lb2897p2qkh8l"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/BurntSushi/byteorder")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1q9kbcqh9pa06p3kq7d3ksbnqjhs88v5wk5qg89wrgkbmpnp4a99"))))
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
    (home-page
      "https://github.com/rushmorem/publicsuffix")
    (synopsis
      "Extract root domain and suffix from a domain name")
    (description
      "Extract root domain and suffix from a domain name")
    (license (list license:expat license:asl2.0))))

(define-public rust-idna-0.2
  (package
    (name "rust-idna")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "idna" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1y7ca2w5qp9msgl57n03zqp78gq1bk2crqzg6kv7a542mdphm2j1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-matches" ,rust-matches-0.1)
         ("rust-unicode-bidi" ,rust-unicode-bidi-0.3)
         ("rust-unicode-normalization"
          ,rust-unicode-normalization-0.1))))
    (home-page "https://github.com/servo/rust-url/")
    (synopsis
      "IDNA (Internationalizing Domain Names in Applications) and Punycode.")
    (description
      "IDNA (Internationalizing Domain Names in Applications) and Punycode.")
    (license (list license:expat license:asl2.0))))

(define-public rust-cookie-store-0.15
  (package
    (name "rust-cookie-store")
    (version "0.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cookie_store" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1kb2z3bmwhx8f5l22vc8v22ia59b875nkxqnqnyzfffxb5asrd2m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cookie" ,rust-cookie-0.15)
         ("rust-idna" ,rust-idna-0.2)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-publicsuffix" ,rust-publicsuffix-2)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-time" ,rust-time-0.2)
         ("rust-url" ,rust-url-2))))
    (home-page
      "https://github.com/pfernie/cookie_store")
    (synopsis
      "Implementation of Cookie storage and retrieval")
    (description
      "Implementation of Cookie storage and retrieval")
    (license (list license:expat license:asl2.0))))

(define-public rust-subtle-2
  (package
    (name "rust-subtle")
    (version "2.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "subtle" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "00b6jzh9gzb0h9n25g06nqr90z3xzqppfhhb260s1hjhh4pg7pkb"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://dalek.rs/")
    (synopsis
      "Pure-Rust traits and utilities for constant-time cryptographic implementations.")
    (description
      "Pure-Rust traits and utilities for constant-time cryptographic implementations.")
    (license license:bsd-3)))

(define-public rust-hkdf-0.10
  (package
    (name "rust-hkdf")
    (version "0.10.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hkdf" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0kwn3scjvv2x8zc6nz3wrnzxp9shpsdxnjqiyv2r65r3kiijzasi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-digest" ,rust-digest-0.9)
         ("rust-hmac" ,rust-hmac-0.10))))
    (home-page "https://github.com/RustCrypto/KDFs/")
    (synopsis
      "HMAC-based Extract-and-Expand Key Derivation Function (HKDF)")
    (description
      "HMAC-based Extract-and-Expand Key Derivation Function (HKDF)")
    (license (list license:expat license:asl2.0))))

(define-public rust-aesni-0.10
  (package
    (name "rust-aesni")
    (version "0.10.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aesni" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1kmh07fp9hbi1aa8dr2rybbgw8vqz6hjmk34c4w7sbscx7si2bpa"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cipher" ,rust-cipher-0.2)
         ("rust-opaque-debug" ,rust-opaque-debug-0.3))))
    (home-page
      "https://github.com/RustCrypto/block-ciphers/tree/master/aes")
    (synopsis
      "DEPRECATED: replaced by the `aes` crate")
    (description
      "DEPRECATED: replaced by the `aes` crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-aes-soft-0.6
  (package
    (name "rust-aes-soft")
    (version "0.6.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aes-soft" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0wj0fi2pvmlw09yvb1aqf0mfkzrfxmjsf90finijh255ir4wf55y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cipher" ,rust-cipher-0.2)
         ("rust-opaque-debug" ,rust-opaque-debug-0.3))))
    (home-page
      "https://github.com/RustCrypto/block-ciphers/tree/master/aes")
    (synopsis
      "DEPRECATED: replaced by the `aes` crate")
    (description
      "DEPRECATED: replaced by the `aes` crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-aes-0.6
  (package
    (name "rust-aes")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aes" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0q85mw70mgr4glza9y9lrs9nxfa1cdcqzfk6wx0smb3623pr2hw8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-aes-soft" ,rust-aes-soft-0.6)
         ("rust-aesni" ,rust-aesni-0.10)
         ("rust-cipher" ,rust-cipher-0.2))))
    (home-page
      "https://github.com/RustCrypto/block-ciphers")
    (synopsis
      "Pure Rust implementation of the Advanced Encryption Standard (a.k.a. Rijndael)
including support for AES in counter mode (a.k.a. AES-CTR)
")
    (description
      "Pure Rust implementation of the Advanced Encryption Standard (a.k.a.  Rijndael)
including support for AES in counter mode (a.k.a.  AES-CTR)
")
    (license (list license:expat license:asl2.0))))

(define-public rust-aes-gcm-0.8
  (package
    (name "rust-aes-gcm")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aes-gcm" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1nl8iwlh209y1vj9n2lm1a70i69clvg2z6x69bi4dgdrpgxbay2j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-aead" ,rust-aead-0.3)
         ("rust-aes" ,rust-aes-0.6)
         ("rust-cipher" ,rust-cipher-0.2)
         ("rust-ctr" ,rust-ctr-0.6)
         ("rust-ghash" ,rust-ghash-0.3)
         ("rust-subtle" ,rust-subtle-2)
         ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://github.com/RustCrypto/AEADs")
    (synopsis
      "Pure Rust implementation of the AES-GCM (Galois/Counter Mode)
Authenticated Encryption with Associated Data (AEAD) Cipher
with optional architecture-specific hardware acceleration
")
    (description
      "Pure Rust implementation of the AES-GCM (Galois/Counter Mode)
Authenticated Encryption with Associated Data (AEAD) Cipher
with optional architecture-specific hardware acceleration
")
    (license (list license:asl2.0 license:expat))))

(define-public rust-cookie-0.15
  (package
    (name "rust-cookie")
    (version "0.15.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cookie" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "03gql9c2l0wg3hpfp67wg2ns21wysk0xsjxwdbjrf0s6grrcgwfm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-aes-gcm" ,rust-aes-gcm-0.8)
         ("rust-base64" ,rust-base64-0.13)
         ("rust-hkdf" ,rust-hkdf-0.10)
         ("rust-hmac" ,rust-hmac-0.10)
         ("rust-percent-encoding"
          ,rust-percent-encoding-2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-sha2" ,rust-sha2-0.9)
         ("rust-subtle" ,rust-subtle-2)
         ("rust-time" ,rust-time-0.2)
         ("rust-version-check" ,rust-version-check-0.9))))
    (home-page
      "https://github.com/SergioBenitez/cookie-rs")
    (synopsis
      "HTTP cookie parsing and cookie jar management. Supports signed and private
(encrypted, authenticated) jars.
")
    (description
      "HTTP cookie parsing and cookie jar management.  Supports signed and private
(encrypted, authenticated) jars.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-chunked-transfer-1
  (package
    (name "rust-chunked-transfer")
    (version "1.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "chunked_transfer" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0bkdlsrszfcscw3j6yhs7kj6jbp8id47jjk6h9k58px47na5gy7z"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/frewsxcv/rust-chunked-transfer")
    (synopsis
      "Encoder and decoder for HTTP chunked transfer coding (RFC 7230 Â§ 4.1)")
    (description
      "Encoder and decoder for HTTP chunked transfer coding (RFC 7230 Â§ 4.1)")
    (license license:asl2.0)))

(define-public rust-ureq-2
  (package
    (name "rust-ureq")
    (version "2.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ureq" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1mrzdabmd1336l6h3gv5dg057x36x4qys40xva8xm244n5ncsc9i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-base64" ,rust-base64-0.13)
         ("rust-chunked-transfer"
          ,rust-chunked-transfer-1)
         ("rust-cookie" ,rust-cookie-0.15)
         ("rust-cookie-store" ,rust-cookie-store-0.15)
         ("rust-encoding-rs" ,rust-encoding-rs-0.8)
         ("rust-log" ,rust-log-0.4)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-rustls" ,rust-rustls-0.19)
         ("rust-rustls-native-certs"
          ,rust-rustls-native-certs-0.5)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-socks" ,rust-socks-0.3)
         ("rust-url" ,rust-url-2)
         ("rust-webpki" ,rust-webpki-0.21)
         ("rust-webpki-roots" ,rust-webpki-roots-0.21))))
    (home-page "https://github.com/algesten/ureq")
    (synopsis "Simple, safe HTTP client")
    (description "Simple, safe HTTP client")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-macros-0.9
  (package
    (name "rust-windows-macros")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0xivsg3lf023hs83xiab2k40fmrl11nbihcdrdkc8pc4ab398xqg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-syn" ,rust-syn-1)
         ("rust-windows-gen" ,rust-windows-gen-0.9))))
    (home-page "")
    (synopsis "Macros for the windows crate")
    (description "Macros for the windows crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-gen-0.9
  (package
    (name "rust-windows-gen")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_gen" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0lh492px26rrna0harikyy4p7nk520pw2lv0dczp4n2xa6y4s5al"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-syn" ,rust-syn-1))))
    (home-page "")
    (synopsis
      "Code gen support for the windows crate")
    (description
      "Code gen support for the windows crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-const-sha1-0.2
  (package
    (name "rust-const-sha1")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "const-sha1" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "179cgi2m3wj5g80j49pggs95xalc6y1ivvbrv4m82alc3r2vcn7v"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/rylev/const-sha1")
    (synopsis
      "A sha1 implementation for use in const contexts")
    (description
      "This package provides a sha1 implementation for use in const contexts")
    (license (list license:asl2.0 license:expat))))

(define-public rust-windows-0.9
  (package
    (name "rust-windows")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0zy9jmhkhmsng7l9qiznxpdh5ns303s875p5kf6a5q9ym0rka7rn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-const-sha1" ,rust-const-sha1-0.2)
         ("rust-windows-gen" ,rust-windows-gen-0.9)
         ("rust-windows-macros" ,rust-windows-macros-0.9))))
    (home-page
      "https://github.com/microsoft/windows-rs")
    (synopsis "Rust for Windows")
    (description "Rust for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-tolk-sys-0.2
  (package
    (name "rust-tolk-sys")
    (version "0.2.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tolk-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0xjc9r0588jbjl1raxp8f4mp18b5898f7yrgv621zfibwxdd6285"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/darbaga/tolk-sys")
    (synopsis "Raw ffi bindings to Tolk.dll")
    (description "Raw ffi bindings to Tolk.dll")
    (license license:expat)))

(define-public rust-tolk-0.5
  (package
    (name "rust-tolk")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tolk" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1ih09v2jc15k6vlikz20b4sc6nzfs1d56fg7rs87irim8x632ndk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-tolk-sys" ,rust-tolk-sys-0.2)
         ("rust-widestring" ,rust-widestring-0.4))))
    (home-page "https://github.com/darbaga/tolk-rs")
    (synopsis
      "bindings to tolk.dll, a library to talk to screen readers")
    (description
      "bindings to tolk.dll, a library to talk to screen readers")
    (license license:expat)))

(define-public rust-speech-dispatcher-sys-0.5
  (package
    (name "rust-speech-dispatcher-sys")
    (version "0.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "speech-dispatcher-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1d9d5d5h6fx8mgwmsi66ls1mdh582z3rf0ngxl8kv7g3wwgsjqmn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bindgen" ,rust-bindgen-0.58)
         ("rust-gcc" ,rust-gcc-0.3))))
    (home-page
      "https://gitlab.com/ndarilek/speech-dispatcher-rs")
    (synopsis "speech-dispatcher system bindings")
    (description "speech-dispatcher system bindings")
    (license license:lgpl2.1)))

(define-public rust-speech-dispatcher-0.7
  (package
    (name "rust-speech-dispatcher")
    (version "0.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "speech-dispatcher" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "04j42cpnl2cylzg9wxj4cm7h23hkf03w70ma3v25q71sq39glvh7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-speech-dispatcher-sys"
          ,rust-speech-dispatcher-sys-0.5))))
    (home-page
      "https://gitlab.com/ndarilek/speech-dispatcher-rs")
    (synopsis
      "Rusty interface to the speech-dispatcher speech synthesis library")
    (description
      "Rusty interface to the speech-dispatcher speech synthesis library")
    (license license:lgpl2.1)))

(define-public rust-jni-0.19
  (package
    (name "rust-jni")
    (version "0.19.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "jni" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1v0pn0i1wb8zp4wns4l8hz9689hqsplv7iba7hylaznvwg11ipy6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cesu8" ,rust-cesu8-1)
         ("rust-combine" ,rust-combine-4)
         ("rust-jni-sys" ,rust-jni-sys-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://github.com/jni-rs/jni-rs")
    (synopsis "Rust bindings to the JNI")
    (description "Rust bindings to the JNI")
    (license (list license:expat license:asl2.0))))

(define-public rust-dyn-clonable-impl-0.9
  (package
    (name "rust-dyn-clonable-impl")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dyn-clonable-impl" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1icrjdqiriiy6abxpsygyxylgxg2gq5j9z876pslqdrwazm413jm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page
      "https://github.com/kardeiz/objekt-clonable")
    (synopsis "Attribute wrapper for dyn-clone")
    (description "Attribute wrapper for dyn-clone")
    (license license:expat)))

(define-public rust-dyn-clonable-0.9
  (package
    (name "rust-dyn-clonable")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dyn-clonable" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1m4zlp5phn44znxqj6dkjilxpr5kvyil2ldxp77658h7wvq354jf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-dyn-clonable-impl"
          ,rust-dyn-clonable-impl-0.9)
         ("rust-dyn-clone" ,rust-dyn-clone-1))))
    (home-page
      "https://github.com/kardeiz/objekt-clonable")
    (synopsis "Attribute wrapper for dyn-clone")
    (description "Attribute wrapper for dyn-clone")
    (license license:expat)))

(define-public rust-tts-0.17
  (package
    (name "rust-tts")
    (version "0.17.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tts" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0q60y5iv91fpqv9sq1kz8ff159y7gq48x18s31f9451sdr9yw09p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cocoa-foundation"
          ,rust-cocoa-foundation-0.1)
         ("rust-dyn-clonable" ,rust-dyn-clonable-0.9)
         ("rust-jni" ,rust-jni-0.19)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-ndk-glue" ,rust-ndk-glue-0.3)
         ("rust-objc" ,rust-objc-0.2)
         ("rust-speech-dispatcher"
          ,rust-speech-dispatcher-0.7)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-tolk" ,rust-tolk-0.5)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-web-sys" ,rust-web-sys-0.3)
         ("rust-windows" ,rust-windows-0.9)
         ("rust-windows" ,rust-windows-0.9))))
    (home-page "https://github.com/ndarilek/tts-rs")
    (synopsis
      "High-level Text-To-Speech (TTS) interface")
    (description
      "High-level Text-To-Speech (TTS) interface")
    (license license:expat)))

(define-public rust-takeable-option-0.5
  (package
    (name "rust-takeable-option")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "takeable-option" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "182axkm8pq7cynsfn65ar817mmdhayrjmbl371yqp8zyzhr8kbin"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "")
    (synopsis "A small wrapper around option.")
    (description
      "This package provides a small wrapper around option.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-smithay-client-toolkit-0.12
  (package
    (name "rust-smithay-client-toolkit")
    (version "0.12.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smithay-client-toolkit" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "100bm0wk7agfk1dmfnqfjq55kn53srkyc3yq7vx9bb6ksmpwfl27"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-andrew" ,rust-andrew-0.3)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-calloop" ,rust-calloop-0.6)
         ("rust-dlib" ,rust-dlib-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-memmap2" ,rust-memmap2-0.1)
         ("rust-nix" ,rust-nix-0.18)
         ("rust-wayland-client" ,rust-wayland-client-0.28)
         ("rust-wayland-cursor" ,rust-wayland-cursor-0.28)
         ("rust-wayland-protocols"
          ,rust-wayland-protocols-0.28))))
    (home-page
      "https://github.com/smithay/client-toolkit")
    (synopsis
      "Toolkit for making client wayland applications.")
    (description
      "Toolkit for making client wayland applications.")
    (license license:expat)))

(define-public rust-android-log-sys-0.2
  (package
    (name "rust-android-log-sys")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "android_log-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0bhhs1cgzp9vzjvkn2q31ppc7w4am5s273hkvl5iac5475kmp5l5"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/nercury/android_log-sys-rs")
    (synopsis
      "FFI bindings to Android log Library.
")
    (description
      "FFI bindings to Android log Library.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-android-logger-0.9
  (package
    (name "rust-android-logger")
    (version "0.9.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "android_logger" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0wspwzkn3fakpyz3ka0lh6h4pa66zk9kkvic2q9n70jx30y37hif"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-android-log-sys"
          ,rust-android-log-sys-0.2)
         ("rust-env-logger" ,rust-env-logger-0.7)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4))))
    (home-page
      "https://github.com/Nercury/android_logger-rs")
    (synopsis
      "A logging implementation for `log` which hooks to android log output.
")
    (description
      "This package provides a logging implementation for `log` which hooks to android log output.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-ndk-glue-0.3
  (package
    (name "rust-ndk-glue")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ndk-glue" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "11cksaj1f2sy4dwqyssrvvhbnd86zajfvm17bj81rb2i9p1g1jn5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-android-logger" ,rust-android-logger-0.9)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-ndk" ,rust-ndk-0.3)
         ("rust-ndk-macro" ,rust-ndk-macro-0.2)
         ("rust-ndk-sys" ,rust-ndk-sys-0.2))))
    (home-page
      "https://github.com/rust-windowing/android-ndk-rs")
    (synopsis "Startup code for android binaries")
    (description "Startup code for android binaries")
    (license (list license:expat license:asl2.0))))

(define-public rust-proc-macro-crate-1
  (package
    (name "rust-proc-macro-crate")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro-crate" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "10vgiwpp9rbi999pbn67p3r560z92bpfqszpsfs8ky6ai5lcxfhy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-thiserror" ,rust-thiserror-1)
         ("rust-toml" ,rust-toml-0.5))))
    (home-page
      "https://github.com/bkchr/proc-macro-crate")
    (synopsis
      "Replacement for crate (macro_rules keyword) in proc-macros
")
    (description
      "Replacement for crate (macro_rules keyword) in proc-macros
")
    (license (list license:asl2.0 license:expat))))

(define-public rust-num-enum-derive-0.5
  (package
    (name "rust-num-enum-derive")
    (version "0.5.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "num_enum_derive" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1nfdz1c7cmcq3hdjkiba2hrr0vdj82vshyg6dl4iia64c4cs0vj8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro-crate"
          ,rust-proc-macro-crate-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page
      "https://github.com/illicitonion/num_enum")
    (synopsis
      "Internal implementation details for ::num_enum (Procedural macros to make inter-operation between primitives and enums easier)")
    (description
      "Internal implementation details for ::num_enum (Procedural macros to make inter-operation between primitives and enums easier)")
    (license license:bsd-3)))

(define-public rust-num-enum-0.5
  (package
    (name "rust-num-enum")
    (version "0.5.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "num_enum" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0vzdcrmfx70izz3ns1avaf00jgvbrlsmvm2p9y7ly33kzdax16rz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-derivative" ,rust-derivative-2)
         ("rust-num-enum-derive"
          ,rust-num-enum-derive-0.5))))
    (home-page
      "https://github.com/illicitonion/num_enum")
    (synopsis
      "Procedural macros to make inter-operation between primitives and enums easier.")
    (description
      "Procedural macros to make inter-operation between primitives and enums easier.")
    (license license:bsd-3)))

(define-public rust-ndk-0.3
  (package
    (name "rust-ndk")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ndk" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1avk39s8w21inkzq09x83yghgq3v8rmhrycba8prg6rif8hk5547"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-jni" ,rust-jni-0.14)
         ("rust-jni-glue" ,rust-jni-glue-0.0)
         ("rust-jni-sys" ,rust-jni-sys-0.3)
         ("rust-ndk-sys" ,rust-ndk-sys-0.2)
         ("rust-num-enum" ,rust-num-enum-0.5)
         ("rust-thiserror" ,rust-thiserror-1))))
    (home-page
      "https://github.com/rust-windowing/android-ndk-rs")
    (synopsis
      "Safe Rust bindings to the Android NDK")
    (description
      "Safe Rust bindings to the Android NDK")
    (license (list license:expat license:asl2.0))))

(define-public rust-mio-misc-1
  (package
    (name "rust-mio-misc")
    (version "1.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mio-misc" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1hlxwq64cqz32m1h8mp65dbv8v5nmw101c8vh2swsndi3d0hbpqd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crossbeam" ,rust-crossbeam-0.8)
         ("rust-crossbeam-queue"
          ,rust-crossbeam-queue-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-mio" ,rust-mio-0.7))))
    (home-page "https://github.com/onurzdg/mio-misc")
    (synopsis
      "Miscellaneous components for use with Mio")
    (description
      "Miscellaneous components for use with Mio")
    (license license:expat)))

(define-public rust-winit-0.25
  (package
    (name "rust-winit")
    (version "0.25.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winit" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1y62hqgb93yz02yxx54cmk5mj8agc0zpdxry8yz8cpjdb6a0fqbr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cocoa" ,rust-cocoa-0.24)
         ("rust-core-foundation"
          ,rust-core-foundation-0.9)
         ("rust-core-graphics" ,rust-core-graphics-0.22)
         ("rust-core-video-sys" ,rust-core-video-sys-0.1)
         ("rust-dispatch" ,rust-dispatch-0.2)
         ("rust-instant" ,rust-instant-0.1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-mint" ,rust-mint-0.5)
         ("rust-mio" ,rust-mio-0.7)
         ("rust-mio-misc" ,rust-mio-misc-1)
         ("rust-ndk" ,rust-ndk-0.3)
         ("rust-ndk-glue" ,rust-ndk-glue-0.3)
         ("rust-ndk-sys" ,rust-ndk-sys-0.2)
         ("rust-objc" ,rust-objc-0.2)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-percent-encoding"
          ,rust-percent-encoding-2)
         ("rust-raw-window-handle"
          ,rust-raw-window-handle-0.3)
         ("rust-scopeguard" ,rust-scopeguard-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-smithay-client-toolkit"
          ,rust-smithay-client-toolkit-0.12)
         ("rust-stdweb" ,rust-stdweb-0.4)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-wayland-client" ,rust-wayland-client-0.28)
         ("rust-web-sys" ,rust-web-sys-0.3)
         ("rust-winapi" ,rust-winapi-0.3)
         ("rust-x11-dl" ,rust-x11-dl-2))
	#:cargo-development-inputs
	; TODO: does not build as it's not found, works with winit 0.19
	(("rust-image" ,rust-image-0.23))
	#:phases
	 (modify-phases %standard-phases
         (add-after 'unpack 'fix-cargo-toml
           (lambda _
             (substitute* "Cargo.toml"
               (("0.5.6") "0.5.4")) #t))
    (inputs
      `(("rust-wayland-client" ,rust-wayland-client-0.28)))
    (home-page
      "https://github.com/rust-windowing/winit")
    (synopsis
      "Cross-platform window creation library.")
    (description
      "Cross-platform window creation library.")
    (license license:asl2.0)))

(define-public rust-glutin-0.27
  (package
    (name "rust-glutin")
    (version "0.27.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "glutin" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1w58vcni5sq0h03s5a9rmj2rsraqj3693rgbd2bdjmdqw796qbbn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-android-glue" ,rust-android-glue-0.2)
         ("rust-cgl" ,rust-cgl-0.3)
         ("rust-cocoa" ,rust-cocoa-0.24)
         ("rust-core-foundation"
          ,rust-core-foundation-0.9)
         ("rust-glutin-egl-sys" ,rust-glutin-egl-sys-0.1)
         ("rust-glutin-emscripten-sys"
          ,rust-glutin-emscripten-sys-0.1)
         ("rust-glutin-gles2-sys"
          ,rust-glutin-gles2-sys-0.1)
         ("rust-glutin-glx-sys" ,rust-glutin-glx-sys-0.1)
         ("rust-glutin-wgl-sys" ,rust-glutin-wgl-sys-0.1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libloading" ,rust-libloading-0.7)
         ("rust-log" ,rust-log-0.4)
         ("rust-objc" ,rust-objc-0.2)
         ("rust-osmesa-sys" ,rust-osmesa-sys-0.1)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-wayland-client" ,rust-wayland-client-0.28)
         ("rust-wayland-egl" ,rust-wayland-egl-0.28)
         ("rust-winapi" ,rust-winapi-0.3)
         ;("rust-winit" ,rust-winit-0.25))))
         ("rust-winit" ,rust-winit-0.19))))
    (home-page
      "https://github.com/rust-windowing/glutin")
    (synopsis
      "Cross-platform OpenGL context provider.")
    (description
      "Cross-platform OpenGL context provider.")
    (license license:asl2.0)))

(define-public rust-cgmath-0.18
  (package
    (name "rust-cgmath")
    (version "0.18.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cgmath" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "05sk7c1c1jg5ygqvc3y77kxddp177gwazfibhd864ag3800x760s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-approx" ,rust-approx-0.4)
         ("rust-mint" ,rust-mint-0.5)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1))
        #:cargo-development-inputs
        (("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://github.com/rustgd/cgmath")
    (synopsis
      "A linear algebra and mathematics library for computer graphics.")
    (description
      "This package provides a linear algebra and mathematics library for computer graphics.")
    (license license:asl2.0)))

(define-public rust-genmesh-0.6
  (package
    (name "rust-genmesh")
    (version "0.6.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "genmesh" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "17qybydyblf3hjiw7mq181jpi4vrbb8dmsj0wi347r8k0m354g89"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-cgmath" ,rust-cgmath-0.16)
         ("rust-mint" ,rust-mint-0.5))))
    (home-page "https://github.com/gfx-rs/genmesh")
    (synopsis "A package for generating 3D meshes")
    (description
      "This package provides a package for generating 3D meshes")
    (license license:asl2.0)))

(define-public rust-fallible-collections-0.3
  (package
    (name "rust-fallible-collections")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fallible_collections" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1shgcljh6pliv1b1qk6knk2hzig5ah76hx01f1icpgkiqp6fi6cm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-hashbrown" ,rust-hashbrown-0.9))))
    (home-page
      "https://github.com/vcombey/fallible_collections.git")
    (synopsis
      "a crate which adds fallible allocation api to std collections")
    (description
      "a crate which adds fallible allocation api to std collections")
    (license (list license:expat license:asl2.0))))

(define-public rust-mp4parse-0.11
  (package
    (name "rust-mp4parse")
    (version "0.11.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mp4parse" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1wwkkjrf2p9qy58sa5pa9wqlfhd36zcp8h0lgrz9l5pgkr89b6yk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitreader" ,rust-bitreader-0.3)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-env-logger" ,rust-env-logger-0.8)
         ("rust-fallible-collections"
          ,rust-fallible-collections-0.3)
         ("rust-hashbrown" ,rust-hashbrown-0.9)
         ("rust-log" ,rust-log-0.4)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-static-assertions"
          ,rust-static-assertions-1))))
    (home-page
      "https://github.com/mozilla/mp4parse-rust")
    (synopsis
      "Parser for ISO base media file format (mp4)")
    (description
      "Parser for ISO base media file format (mp4)")
    (license license:mpl2.0)))

(define-public rust-jpeg-decoder-0.1
  (package
    (name "rust-jpeg-decoder")
    (version "0.1.22")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "jpeg-decoder" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1wnh0bmmswpgwhgmlizz545x8334nlbmkq8imy9k224ri3am7792"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rayon" ,rust-rayon-1))))
    (home-page
      "https://github.com/image-rs/jpeg-decoder")
    (synopsis "JPEG decoder")
    (description "JPEG decoder")
    (license (list license:expat license:asl2.0))))

(define-public rust-dcv-color-primitives-0.1
  (package
    (name "rust-dcv-color-primitives")
    (version "0.1.16")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dcv-color-primitives" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0yrm1qipdmadynhjgz1bvdh42ph9azvwg8v43c8ywr8vlx9qvaq2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
    (home-page
      "https://github.com/aws/dcv-color-primitives")
    (synopsis
      "a library to perform image color model conversion")
    (description
      "a library to perform image color model conversion")
    (license unknown-license!)))

(define-public rust-strum-macros-0.21
  (package
    (name "rust-strum-macros")
    (version "0.21.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum_macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1v55b1in7dn07s6vxr8dajqpvxkxjbfq6qamnjgcbnq9x3pawsnh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-heck" ,rust-heck-0.3)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page
      "https://github.com/Peternator7/strum")
    (synopsis
      "Helpful macros for working with enums and strings")
    (description
      "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-strum-0.21
  (package
    (name "rust-strum")
    (version "0.21.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1qnd2by1zrwgx7li0hmwy7jbzjwz1ky697qjg85nga8zzny6py5a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-strum-macros" ,rust-strum-macros-0.21))))
    (home-page
      "https://github.com/Peternator7/strum")
    (synopsis
      "Helpful macros for working with enums and strings")
    (description
      "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-target-lexicon-0.12
  (package
    (name "rust-target-lexicon")
    (version "0.12.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "target-lexicon" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1zsvillq0zsggg3fb0mfmcia0f68wfclahaqc0zgln14pkfzrgyr"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/bytecodealliance/target-lexicon")
    (synopsis
      "Targeting utilities for compilers and related tools")
    (description
      "Targeting utilities for compilers and related tools")
    (license (list license:asl2.0 unknown-license!))))

(define-public rust-cfg-expr-0.8
  (package
    (name "rust-cfg-expr")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cfg-expr" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "03lgv8psc2qrr93hxgdfmfwbj1crpzghxd7qh6w2nz0l4qryh4ml"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-smallvec" ,rust-smallvec-1)
         ("rust-target-lexicon" ,rust-target-lexicon-0.12))))
    (home-page
      "https://github.com/EmbarkStudios/cfg-expr")
    (synopsis
      "A parser and evaluator for Rust `cfg()` expressions.")
    (description
      "This package provides a parser and evaluator for Rust `cfg()` expressions.")
    (license (list license:expat license:asl2.0))))

(define-public rust-system-deps-3
  (package
    (name "rust-system-deps")
    (version "3.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "system-deps" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "19ig3hxgyq9d7qy8cwpl74l75ay2w0y0a4rginqb68h7hygjc328"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-cfg-expr" ,rust-cfg-expr-0.8)
         ("rust-heck" ,rust-heck-0.3)
         ("rust-itertools" ,rust-itertools-0.10)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-strum" ,rust-strum-0.21)
         ("rust-strum-macros" ,rust-strum-macros-0.21)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-version-compare"
          ,rust-version-compare-0.0.11))))
    (home-page
      "https://github.com/gdesmott/system-deps")
    (synopsis
      "Discover and configure system dependencies from declarative dependencies in Cargo.toml")
    (description
      "Discover and configure system dependencies from declarative dependencies in Cargo.toml")
    (license (list license:expat license:asl2.0))))

(define-public rust-dav1d-sys-0.3
  (package
    (name "rust-dav1d-sys")
    (version "0.3.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dav1d-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "020lla2l703iy69gbksq18snj2b1sp7vmjf39qqykd4242d4msr5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bindgen" ,rust-bindgen-0.58)
         ("rust-system-deps" ,rust-system-deps-3))))
    (home-page "https://github.com/rust-av/dav1d-rs")
    (synopsis "FFI bindings to dav1d")
    (description "FFI bindings to dav1d")
    (license license:expat)))

(define-public rust-dav1d-0.6
  (package
    (name "rust-dav1d")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dav1d" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0pn6r1a9qfrpg2xwc7ci2iddvnzxb17ddca0bwymgi839cxc2chl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-dav1d-sys" ,rust-dav1d-sys-0.3))))
    (home-page "https://github.com/rust-av/dav1d-rs")
    (synopsis "libdav1d bindings")
    (description "libdav1d bindings")
    (license license:expat)))

(define-public rust-image-0.23
  (package
    (name "rust-image")
    (version "0.23.14")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "image" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "18gn2f7xp30pf9aqka877knlq308khxqiwjvsccvzaa4f9zcpzr4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-bytemuck" ,rust-bytemuck-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-color-quant" ,rust-color-quant-1)
         ("rust-dav1d" ,rust-dav1d-0.6)
         ("rust-dcv-color-primitives"
          ,rust-dcv-color-primitives-0.1)
         ("rust-gif" ,rust-gif-0.11)
         ("rust-jpeg-decoder" ,rust-jpeg-decoder-0.1)
         ("rust-mp4parse" ,rust-mp4parse-0.11)
         ("rust-num-iter" ,rust-num-iter-0.1)
         ("rust-num-rational" ,rust-num-rational-0.3)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-png" ,rust-png-0.16)
         ("rust-ravif" ,rust-ravif-0.6)
         ("rust-rgb" ,rust-rgb-0.8)
         ("rust-scoped-threadpool"
          ,rust-scoped-threadpool-0.1)
         ("rust-tiff" ,rust-tiff-0.6))
        #:cargo-development-inputs
        (("rust-crc32fast" ,rust-crc32fast-1)
         ("rust-criterion" ,rust-criterion-0.3)
         ("rust-glob" ,rust-glob-0.3)
         ("rust-num-complex" ,rust-num-complex-0.3)
         ("rust-quickcheck" ,rust-quickcheck-0.9))))
    (home-page "https://github.com/image-rs/image")
    (synopsis
      "Imaging library written in Rust. Provides basic filters and decoders for the most common image formats.")
    (description
      "Imaging library written in Rust.  Provides basic filters and decoders for the most common image formats.")
    (license license:expat)))

(define-public rust-glium-0.30
  (package
    (name "rust-glium")
    (version "0.30.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "glium" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "01q0r4q098qsm0nrbrx33v8ddvx835ss66sxmr3x94a8ashjlsjh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
	#:tests? #f ;test fail due to wayland not being available
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-fnv" ,rust-fnv-1)
         ("rust-gl-generator" ,rust-gl-generator-0.14)
         ("rust-glutin" ,rust-glutin-0.27)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-memoffset" ,rust-memoffset-0.6)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-takeable-option"
          ,rust-takeable-option-0.5))
	#:cargo-development-inputs
	(("rust-cgmath" ,rust-cgmath-0.18)
	 ("rust-image" ,rust-image-0.23)
	 ("rust-genmesh" ,rust-genmesh-0.6))))
    (home-page "https://github.com/glium/glium")
    (synopsis
      "Elegant and safe OpenGL wrapper.

Glium is an intermediate layer between OpenGL and your application. You still need to manually handle
the graphics pipeline, but without having to use OpenGL's old and error-prone API.

Its objectives:

 - Be safe to use. Many aspects of OpenGL that can trigger a crash if misused are automatically handled by glium.
 - Provide an API that enforces good pratices such as RAII or stateless function calls.
 - Be compatible with all OpenGL versions that support shaders, providing unified API when things diverge.
 - Avoid all OpenGL errors beforehand.
 - Produce optimized OpenGL function calls, and allow the user to easily use modern OpenGL techniques.
")
    (description
      "Elegant and safe OpenGL wrapper.

Glium is an intermediate layer between OpenGL and your application.  You still need to manually handle
the graphics pipeline, but without having to use OpenGL's old and error-prone API.

Its objectives:

 - Be safe to use.  Many aspects of OpenGL that can trigger a crash if misused are automatically handled by glium.
 - Provide an API that enforces good pratices such as RAII or stateless function calls.
 - Be compatible with all OpenGL versions that support shaders, providing unified API when things diverge.
 - Avoid all OpenGL errors beforehand.
 - Produce optimized OpenGL function calls, and allow the user to easily use modern OpenGL techniques.
")
    (license license:asl2.0)))

(define-public rust-epi-0.14
  (package
    (name "rust-epi")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "epi" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "12m249ng763ni4mx4qpsgyns18jvmxiip0xqk1m5c8frnk4k7h73"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
	#:rust ,rust-1.52                ;requires the "resolver" feature
        #:cargo-inputs
        (("rust-egui" ,rust-egui-0.14)
         ("rust-ron" ,rust-ron-0.6)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/emilk/egui")
    (synopsis
      "Backend-agnostic interface for writing apps using egui")
    (description
      "Backend-agnostic interface for writing apps using egui")
    (license (list license:expat license:asl2.0))))

(define-public rust-egui-glium-0.14
  (package
    (name "rust-egui-glium")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "egui_glium" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0kxf3yp3w1xqqdn0va3biy51b3246pmyzxfbblpxvxwqms11hawp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
	#:rust ,rust-1.52                ;requires the "resolver" feature
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-copypasta" ,rust-copypasta-0.7)
         ("rust-directories-next"
          ,rust-directories-next-2)
         ("rust-egui" ,rust-egui-0.14)
         ("rust-epi" ,rust-epi-0.14)
         ("rust-glium" ,rust-glium-0.30)
         ("rust-ron" ,rust-ron-0.6)
         ("rust-serde" ,rust-serde-1)
         ("rust-tts" ,rust-tts-0.17)
         ("rust-ureq" ,rust-ureq-2)
         ("rust-webbrowser" ,rust-webbrowser-0.5))))
    (home-page "https://github.com/emilk/egui")
    (synopsis
      "Bindings for using egui natively using the glium library")
    (description
      "Bindings for using egui natively using the glium library")
    (license (list license:expat license:asl2.0))))

(define-public rust-mint-0.5
  (package
    (name "rust-mint")
    (version "0.5.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mint" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1v0jfmns6kazpyzfmjpgcbw78diy5an7y2bmai522qws7zzq8gkr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/kvark/mint")
    (synopsis "Math interoperability standard types")
    (description
      "Math interoperability standard types")
    (license license:expat)))

(define-public rust-emath-0.14
  (package
    (name "rust-emath")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "emath" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0p71cnrm8blrkbqny182nikcqy9slzfmdfvrpg72hlfim6d1g9fc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-mint" ,rust-mint-0.5)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/emilk/egui")
    (synopsis "Minimal 2D math library for GUI work")
    (description
      "Minimal 2D math library for GUI work")
    (license (list license:expat license:asl2.0))))

(define-public rust-bytemuck-1
  (package
    (name "rust-bytemuck")
    (version "1.7.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bytemuck" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0nrcrwj7giny1ds3g67g4y1fpb9h70a8cm4az272pf0xqi3755bj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytemuck-derive" ,rust-bytemuck-derive-1))))
    (home-page
      "https://github.com/Lokathor/bytemuck")
    (synopsis
      "A crate for mucking around with piles of bytes.")
    (description
      "This package provides a crate for mucking around with piles of bytes.")
    (license
      (list license:zlib license:asl2.0 license:expat))))

(define-public rust-cint-0.2
  (package
    (name "rust-cint")
    (version "0.2.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cint" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0yyp8y2nsxhs2z768hmqypfj4x0m8s2h3yar6vrp6kc552pgx0sx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytemuck" ,rust-bytemuck-1))))
    (home-page "https://github.com/termhn/cint")
    (synopsis
      "A lean, minimal, and stable set of types for color interoperation between crates in Rust.")
    (description
      "This package provides a lean, minimal, and stable set of types for color interoperation between crates in Rust.")
    (license
      (list license:expat license:asl2.0 license:zlib))))

(define-public rust-atomic-refcell-0.1
  (package
    (name "rust-atomic-refcell")
    (version "0.1.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "atomic_refcell" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0zs2hpyjhpxxg36ng3bpxs39333ip0v05jmgzhh6pxz06q99f6v8"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/bholley/atomic_refcell")
    (synopsis "Threadsafe RefCell")
    (description "Threadsafe RefCell")
    (license (list license:asl2.0 license:expat))))

(define-public rust-ttf-parser-0.12
  (package
    (name "rust-ttf-parser")
    (version "0.12.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ttf-parser" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1rkj90w4k21y88i69rlwb8pyfvv5lnb7x2b8yvdan21gha5gbqks"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/RazrFalcon/ttf-parser")
    (synopsis
      "A high-level, safe, zero-allocation TrueType font parser.")
    (description
      "This package provides a high-level, safe, zero-allocation TrueType font parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-owned-ttf-parser-0.12
  (package
    (name "rust-owned-ttf-parser")
    (version "0.12.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "owned_ttf_parser" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1c6yxx8rqhls6vljm4hcf58v4gbqz7pkyfqf93v9ph2w5vd8vb30"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ttf-parser" ,rust-ttf-parser-0.12))))
    (home-page
      "https://github.com/alexheretic/owned-ttf-parser")
    (synopsis
      "ttf-parser plus support for owned data")
    (description
      "ttf-parser plus support for owned data")
    (license license:asl2.0)))

(define-public rust-ab-glyph-0.2
  (package
    (name "rust-ab-glyph")
    (version "0.2.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ab_glyph" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "103xbs1ka3j4z4k3c4hrz0yq1gr0z6pdr93gdh7z51jzch3c02mg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ab-glyph-rasterizer"
          ,rust-ab-glyph-rasterizer-0.1)
         ("rust-libm" ,rust-libm-0.2)
         ("rust-owned-ttf-parser"
          ,rust-owned-ttf-parser-0.12))))
    (home-page
      "https://github.com/alexheretic/ab-glyph")
    (synopsis
      "API for loading, scaling, positioning and rasterizing OpenType font glyphs.")
    (description
      "API for loading, scaling, positioning and rasterizing OpenType font glyphs.")
    (license license:asl2.0)))

(define-public rust-epaint-0.14
  (package
    (name "rust-epaint")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "epaint" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0jirhg7vxy1ypbm8i29vq1fzwz9lvlvp28dqzny84qcjva47svhk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ab-glyph" ,rust-ab-glyph-0.2)
         ("rust-ahash" ,rust-ahash-0.7)
         ("rust-atomic-refcell" ,rust-atomic-refcell-0.1)
         ("rust-cint" ,rust-cint-0.2)
         ("rust-emath" ,rust-emath-0.14)
         ("rust-ordered-float" ,rust-ordered-float-2)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/emilk/egui")
    (synopsis
      "Minimal 2D graphics library for GUI work")
    (description
      "Minimal 2D graphics library for GUI work")
    (license (list license:expat license:asl2.0))))

(define-public rust-egui-0.14
  (package
    (name "rust-egui")
    (version "0.14.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "egui" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1g96kn76wlzilq1k5l1qhxx0xfp37z6z5zcv4xkj4p1bb6fz40xl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
	#:rust ,rust-1.52                ;requires the "resolver" feature
        #:cargo-inputs
        (("rust-epaint" ,rust-epaint-0.14)
         ("rust-ron" ,rust-ron-0.6)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/emilk/egui")
    (synopsis
      "Simple, portable immediate mode GUI library for Rust")
    (description
      "Simple, portable immediate mode GUI library for Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-eframe-0.14
  (package
    (name "rust-eframe")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "eframe" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1rklcn47yikknc81c1mzlilsqylasng82hmyc5v778pi6vaypvjs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
	#:rust ,rust-1.52                ;requires the "resolver" feature
        #:cargo-inputs
        (("rust-egui" ,rust-egui-0.14)
         ("rust-egui-glium" ,rust-egui-glium-0.14)
         ("rust-egui-web" ,rust-egui-web-0.14)
         ("rust-epi" ,rust-epi-0.14))))
    (home-page "https://github.com/emilk/egui")
    (synopsis
      "egui framework - write GUI apps that compiles to web and/or natively")
    (description
      "egui framework - write GUI apps that compiles to web and/or natively")
    (license (list license:expat license:asl2.0))))

(define-public rust-unicode-linebreak-0.1
  (package
    (name "rust-unicode-linebreak")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-linebreak" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0grq6bsn967q4vpifld53s7a140nlmpq5vy8ghgr73f4n2mdqlis"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-regex" ,rust-regex-1))))
    (home-page
      "https://github.com/axelf4/unicode-linebreak")
    (synopsis
      "Implementation of the Unicode Line Breaking Algorithm")
    (description
      "Implementation of the Unicode Line Breaking Algorithm")
    (license license:asl2.0)))

(define-public rust-openblas-src-0.9
  (package
    (name "rust-openblas-src")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "openblas-src" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0syy38a5bgv5mj6mb1n1zk1d6l5gqqrswvbmwkwx6h4z9wfrsql4"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/blas-lapack-rs/openblas-src")
    (synopsis
      "The package provides a source of BLAS and LAPACK via OpenBLAS.")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "04l2ggdaq0bjc64prsw2f8ddxn84m1rmpnkjb9nr0ijdpcv1zx1r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cmake" ,rust-cmake-0.1))))
    (home-page
      "https://github.com/blas-lapack-rs/netlib-src")
    (synopsis
      "The package provides a source of BLAS and LAPACK via Netlib.")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1myyrxvmyij4c60w9x15npwzhlbjm8y8c94lvfsnrl5pbyakz8md"))))
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
    (home-page
      "https://github.com/rust-math/intel-mkl-src")
    (synopsis
      "CLI utility for redistributiing Intel(R) MKL")
    (description
      "CLI utility for redistributiing Intel(R) MKL")
    (license license:expat)))

(define-public rust-intel-mkl-src-0.5
  (package
    (name "rust-intel-mkl-src")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "intel-mkl-src" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "155q49a7nfbq1lllchsyx8jv2q2pijrjh1w08awvrbjyfcxb6q3j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-intel-mkl-tool" ,rust-intel-mkl-tool-0.1))))
    (home-page
      "https://github.com/rust-math/intel-mkl-src")
    (synopsis
      "Redistribution of Intel(R) MKL as a crate")
    (description
      "Redistribution of Intel(R) MKL as a crate")
    (license #f)))

(define-public rust-accelerate-src-0.3
  (package
    (name "rust-accelerate-src")
    (version "0.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "accelerate-src" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "17fiqyq7f9k41pbsyrvk9pxyx9z6fw399wq036cvwkbmb14xcpj1"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/blas-lapack-rs/accelerate-src")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0a134wadi4rslfqk4mafi6y7bbvacjh12x87621w4vyc3dni6px2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-accelerate-src" ,rust-accelerate-src-0.3)
         ("rust-intel-mkl-src" ,rust-intel-mkl-src-0.5)
         ("rust-netlib-src" ,rust-netlib-src-0.8)
         ("rust-openblas-src" ,rust-openblas-src-0.9))))
    (home-page
      "https://github.com/blas-lapack-rs/blas-src")
    (synopsis
      "The package provides a BLAS source of choice.")
    (description
      "The package provides a BLAS source of choice.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-ndarray-0.14
  (package
    (name "rust-ndarray")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ndarray" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "011wqzmrd9gpfcfvy1xfbskqfiahn96pmi2d0r9x34d682amq3bc"))))
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
    (home-page
      "https://github.com/rust-ndarray/ndarray")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0hv0q1mw1r1brk7v3g4a80j162p7g1dri4bdidykrakzfqjd4ypn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ndarray" ,rust-ndarray-0.14))))
    (home-page "https://github.com/mgeisler/smawk")
    (synopsis
      "Functions for finding row-minima in a totally monotone matrix.")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1yabhmg8zlcksda3ajly9hpbzqgbhknxwch8dwkfkaa1569r0ifm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-tinyvec" ,rust-tinyvec-1))))
    (home-page
      "https://github.com/unicode-rs/unicode-normalization")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "12shxhi47db54i4j44ic2nl299x5p89ngna0w3m6854nn4d1mg6p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://serde.rs")
    (synopsis
      "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "04y9s1mxcxakg9bhfdiff9w4zzprk6m6dazcpmpi8nfg6zg0cbgi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://serde.rs")
    (synopsis
      "A generic serialization/deserialization framework")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1gq59h9h8597k04yl53an0j56cvb0in98pxpp27dkiz5mnifgssz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-fst" ,rust-fst-0.4)
         ("rust-serde" ,rust-serde-1))))
    (home-page
      "https://github.com/tapeinosyne/hyphenation")
    (synopsis
      "Proemial code for the `hyphenation` library")
    (description
      "Proemial code for the `hyphenation` library")
    (license (list license:asl2.0 license:expat))))

(define-public rust-fst-0.4
  (package
    (name "rust-fst")
    (version "0.4.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fst" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "06mnksicgv9rp8b7w0ykkshf355l05zym3ygm74qr5z30ndmpf3s"))))
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1bfw3mnwzx5g1465kiqllp5n4r10qrqy88kdlp3jfwnq2ya5xx5i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1))))
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1w2hib167vpz7jbg3zs92ifihj4akirlhb5509aib1df8i6dvx5w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bincode" ,rust-bincode-1)
         ("rust-bincode" ,rust-bincode-1)
         ("rust-fst" ,rust-fst-0.4)
         ("rust-fst" ,rust-fst-0.4)
         ("rust-hyphenation-commons"
          ,rust-hyphenation-commons-0.8)
         ("rust-hyphenation-commons"
          ,rust-hyphenation-commons-0.8)
         ("rust-pocket-resources"
          ,rust-pocket-resources-0.3)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-unicode-normalization"
          ,rust-unicode-normalization-0.1))))
    (home-page
      "https://github.com/tapeinosyne/hyphenation")
    (synopsis
      "Knuth-Liang hyphenation for a variety of languages")
    (description
      "Knuth-Liang hyphenation for a variety of languages")
    (license (list license:asl2.0 license:expat))))

(define-public rust-textwrap-0.14
  (package
    (name "rust-textwrap")
    (version "0.14.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "textwrap" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "106xjfzfpk3nj51fx9slf9kyir7xjwvpqm003v9ardgq5b8whrh0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-hyphenation" ,rust-hyphenation-0.8)
         ("rust-smawk" ,rust-smawk-0.3)
         ("rust-terminal-size" ,rust-terminal-size-0.1)
         ("rust-unicode-linebreak"
          ,rust-unicode-linebreak-0.1)
         ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page
      "https://github.com/mgeisler/textwrap")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0bfgm53jgdacylwd6ynjhciczmnlrp45p98h0nsrmrhglrcfzjva"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/dylni/os_str_bytes")
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
    (version "1.0.77")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syn" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1870dx7d4h54w2qiczlx66d6snbmvkla9zhcj2ap9xgyw1lbqfaj"))))
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
    (version "1.0.29")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro2" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0gfj25ksq90ifcssfnwv46v856sxd885wmm9bhrj1ays9xfi1xdr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page
      "https://github.com/alexcrichton/proc-macro2")
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1b11ai375p73a7s0ijr2qwfgkcgwizxpihfif23hnjk2apbb0nqb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-heck" ,rust-heck-0.3)
         ("rust-proc-macro-error"
          ,rust-proc-macro-error-1)
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
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "01l4x641s3nkf9h06ads4gw2x2vnyag3ym3s47vl5g3xb6jhmmzw"))))
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

(define-public rust-cansi-2
  (package
    (name "rust-cansi")
    (version "2.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cansi" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0kqbp1wk3nmbxmaamrd6j5srnkmcwnczjpn95mk39hjgv20r4nqq"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/kurtlawrence/cansi")
    (synopsis
      "Catergorise ANSI - ANSI escape code parser and categoriser")
    (description
      "Catergorise ANSI - ANSI escape code parser and categoriser")
    (license license:expat)))

(define-public rust-klask-0.2
  (package
    (name "rust-klask")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "klask" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "185wpqxbishrn3nm1xcxxwdj6xml6a91ks4jg3l0iwmkzp2bb1dv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-cansi" ,rust-cansi-2)
         ("rust-clap" ,rust-clap-3)
         ("rust-eframe" ,rust-eframe-0.14)
         ("rust-inflector" ,rust-inflector-0.11)
         ("rust-linkify" ,rust-linkify-0.7)
         ("rust-native-dialog" ,rust-native-dialog-0.5)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-uuid" ,rust-uuid-0.8))
        #:cargo-development-inputs
        (("rust-clap" ,rust-clap-3))))
    (home-page
      "https://github.com/MichalGniadek/klask")
    (synopsis
      "Automatically create GUI for clap apps")
    (description
      "Automatically create GUI for clap apps")
    (license license:expat)))
