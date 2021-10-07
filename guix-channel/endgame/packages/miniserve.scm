(define-module (endgame packages miniserve)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-graphics)
  #:use-module (gnu packages rust)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-select-0.5
  (package
    (name "rust-select")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "select" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1dvnb12fqczq0mqgyh7pafkhngv8478x0y3sxy5ngj7w1bwn3q4f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bit-set" ,rust-bit-set-0.5)
         ("rust-html5ever" ,rust-html5ever-0.25)
         ("rust-markup5ever-rcdom"
          ,rust-markup5ever-rcdom-0.1))))
    (home-page
      "https://github.com/utkarshkukreti/select.rs")
    (synopsis
      "A library to extract useful data from HTML documents, suitable for web scraping.")
    (description
      "This package provides a library to extract useful data from HTML documents, suitable for web scraping.")
    (license license:expat)))

(define-public rust-semver-1
  (package
    (name "rust-semver")
    (version "1.0.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "semver" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "04l00sn8y7lv1a8j11a6r7vwcm5qmlsdh7zqb0rw2cxab1i8x2jn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/dtolnay/semver")
    (synopsis
      "Parser and evaluator for Cargo's flavor of Semantic Versioning")
    (description
      "Parser and evaluator for Cargo's flavor of Semantic Versioning")
    (license (list license:expat license:asl2.0))))

(define-public rust-rustc-version-0.4
  (package
    (name "rust-rustc-version")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rustc_version" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0rpk9rcdk405xhbmgclsh4pai0svn49x35aggl4nhbkd4a2zb85z"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-semver" ,rust-semver-1))))
    (home-page
      "https://github.com/Kimundi/rustc-version-rs")
    (synopsis
      "A library for querying the version of a installed rustc compiler")
    (description
      "This package provides a library for querying the version of a installed rustc compiler")
    (license (list license:expat license:asl2.0))))

(define-public rust-rstest-0.11
  (package
    (name "rust-rstest")
    (version "0.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rstest" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "02nh4kpfg1j4v95fhc0bxx9ak3wnz5jg70f94z92wfzyx9mcd212"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-rustc-version" ,rust-rustc-version-0.4)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/la10736/rstest")
    (synopsis
      "Rust fixture based test framework. It use procedural macro
to implement fixtures and table based tests.
")
    (description
      "Rust fixture based test framework.  It use procedural macro
to implement fixtures and table based tests.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-assert-fs-1
  (package
    (name "rust-assert-fs")
    (version "1.0.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "assert_fs" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "01qhcr9faq13p10kmi6j6k520dk20c8vxly8cqwkisdxx6fk8yvx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-doc-comment" ,rust-doc-comment-0.3)
         ("rust-globwalk" ,rust-globwalk-0.8)
         ("rust-predicates" ,rust-predicates-2)
         ("rust-predicates-core" ,rust-predicates-core-1)
         ("rust-predicates-tree" ,rust-predicates-tree-1)
         ("rust-tempfile" ,rust-tempfile-3))))
    (home-page
      "https://github.com/assert-rs/assert_fs")
    (synopsis
      "Filesystem fixtures and assertions for testing.")
    (description
      "Filesystem fixtures and assertions for testing.")
    (license (list license:expat license:asl2.0))))

(define-public rust-assert-cmd-2
  (package
    (name "rust-assert-cmd")
    (version "2.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "assert_cmd" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "14xs8sklidjq6sbkchschyy15g3qkq8qh7syb5cxj1c17r0c805q"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bstr" ,rust-bstr-0.2)
         ("rust-doc-comment" ,rust-doc-comment-0.3)
         ("rust-predicates" ,rust-predicates-2)
         ("rust-predicates-core" ,rust-predicates-core-1)
         ("rust-predicates-tree" ,rust-predicates-tree-1)
         ("rust-wait-timeout" ,rust-wait-timeout-0.2))))
    (home-page
      "https://github.com/assert-rs/assert_cmd")
    (synopsis "Test CLI Applications.")
    (description "Test CLI Applications.")
    (license (list license:expat license:asl2.0))))

(define-public rust-simplelog-0.10
  (package
    (name "rust-simplelog")
    (version "0.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "simplelog" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "13hl8zw438kzdhkgh81mp60rx3gb147isnb36a5b5r5q1ynh3zpm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-log" ,rust-log-0.4)
         ("rust-termcolor" ,rust-termcolor-1))))
    (home-page
      "https://github.com/drakulix/simplelog.rs")
    (synopsis
      "A simple and easy-to-use logging facility for Rust's log crate")
    (description
      "This package provides a simple and easy-to-use logging facility for Rust's log crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-qrcodegen-1
  (package
    (name "rust-qrcodegen")
    (version "1.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "qrcodegen" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0hzkmv5p31g4vk76nfqn7q5qcdifwyaxi105sxyqkjnqxra6fphk"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://www.nayuki.io/page/qr-code-generator-library")
    (synopsis
      "High-quality QR Code generator library")
    (description
      "High-quality QR Code generator library")
    (license license:expat)))

(define-public rust-port-check-0.1
  (package
    (name "rust-port-check")
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "port_check" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1v85f4n6h7kvnaqxvijg695l7jqr9lv1h1lzkdbvxm70r4998lgn"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/ufoscout/port-check-rs")
    (synopsis
      "Get a free local port or check if a port somewhere is reachable.")
    (description
      "Get a free local port or check if a port somewhere is reachable.")
    (license license:expat)))

(define-public rust-nanoid-0.4
  (package
    (name "rust-nanoid")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "nanoid" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1n5l5xig5zcinh41bb4p0rzam8gxic02qpngnylb3d8pq3g01yiz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rand" ,rust-rand-0.8))))
    (home-page
      "https://github.com/nikolay-govorov/nanoid")
    (synopsis
      "A tiny, secure, URL-friendly, unique string ID generator for Rust.")
    (description
      "This package provides a tiny, secure, URL-friendly, unique string ID generator for Rust.")
    (license license:expat)))

(define-public rust-maud-macros-0.22
  (package
    (name "rust-maud-macros")
    (version "0.22.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "maud_macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "07jvcn3d99xbplimb3la1f6xriz9fy2jrgfqlc3i8rylmdc0383k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-maud-htmlescape"
          ,rust-maud-htmlescape-0.17)
         ("rust-proc-macro-error"
          ,rust-proc-macro-error-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://maud.lambda.xyz/")
    (synopsis "Compile-time HTML templates.")
    (description "Compile-time HTML templates.")
    (license (list license:expat license:asl2.0))))

(define-public rust-maud-htmlescape-0.17
  (package
    (name "rust-maud-htmlescape")
    (version "0.17.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "maud_htmlescape" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1dxzakhgpgbr7yy7z8vmywbi77d3yrwqdvg1s4m30hpwryy8byyh"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://maud.lambda.xyz/")
    (synopsis "Internal support code used by Maud.")
    (description
      "Internal support code used by Maud.")
    (license (list license:expat license:asl2.0))))

(define-public rust-maud-0.22
  (package
    (name "rust-maud")
    (version "0.22.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "maud" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1yk2a6gy6naq615qssy57yl18r4vvx4101y1cl1zh1hcif0881ys"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-actix-web" ,rust-actix-web-3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-iron" ,rust-iron-0.6)
         ("rust-maud-htmlescape"
          ,rust-maud-htmlescape-0.17)
         ("rust-maud-macros" ,rust-maud-macros-0.22)
         ("rust-rocket" ,rust-rocket-0.4))))
    (home-page "https://maud.lambda.xyz/")
    (synopsis "Compile-time HTML templates.")
    (description "Compile-time HTML templates.")
    (license (list license:expat license:asl2.0))))

(define-public rust-uncased-0.9
  (package
    (name "rust-uncased")
    (version "0.9.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "uncased" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1l3flz044hfdnsddahj08dflqprfydszkm4vkf458l724xryvbjv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1)
         ("rust-version-check" ,rust-version-check-0.9))))
    (home-page
      "https://github.com/SergioBenitez/uncased")
    (synopsis
      "Case-preserving, ASCII case-insensitive, no_std string types.")
    (description
      "Case-preserving, ASCII case-insensitive, no_std string types.")
    (license (list license:expat license:asl2.0))))

(define-public rust-phf-shared-0.9
  (package
    (name "rust-phf-shared")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "phf_shared" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1ng0hi2byifqah6bcdy3zcpbwq8jxgl4laz65gq40dp3dm11i0x6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-siphasher" ,rust-siphasher-0.3)
         ("rust-uncased" ,rust-uncased-0.9)
         ("rust-unicase" ,rust-unicase-2))))
    (home-page
      "https://github.com/sfackler/rust-phf")
    (synopsis "Support code shared by PHF libraries")
    (description
      "Support code shared by PHF libraries")
    (license license:expat)))

(define-public rust-async-fs-1
  (package
    (name "rust-async-fs")
    (version "1.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "async-fs" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1qnsqg0jjpda590w8nvbhh5mcmdyx5f43xx2g313fz0izzwa8g4b"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-async-lock" ,rust-async-lock-2)
         ("rust-blocking" ,rust-blocking-1)
         ("rust-futures-lite" ,rust-futures-lite-1))))
    (home-page
      "https://github.com/stjepang/async-fs")
    (synopsis "Async filesystem primitives")
    (description "Async filesystem primitives")
    (license (list license:asl2.0 license:expat))))

(define-public rust-smol-1
  (package
    (name "rust-smol")
    (version "1.2.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smol" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1r45zng0hymqx1kb2dmxkapbin7f9rhgrdcssz0q7rzka59kpkw5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-async-channel" ,rust-async-channel-1)
         ("rust-async-executor" ,rust-async-executor-1)
         ("rust-async-fs" ,rust-async-fs-1)
         ("rust-async-io" ,rust-async-io-1)
         ("rust-async-lock" ,rust-async-lock-2)
         ("rust-async-net" ,rust-async-net-1)
         ("rust-async-process" ,rust-async-process-1)
         ("rust-blocking" ,rust-blocking-1)
         ("rust-futures-lite" ,rust-futures-lite-1)
         ("rust-once-cell" ,rust-once-cell-1))))
    (home-page "https://github.com/stjepang/smol")
    (synopsis "A small and fast async runtime")
    (description
      "This package provides a small and fast async runtime")
    (license (list license:asl2.0 license:expat))))

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

(define-public rust-plotters-svg-0.3
  (package
    (name "rust-plotters-svg")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "plotters-svg" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1aavi3i4jrwydw3i6x0zxs3i3c7gki7jlhg9agff35x5ixisj7sj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-plotters-backend"
          ,rust-plotters-backend-0.3))))
    (home-page "https://plotters-rs.github.io")
    (synopsis "Plotters SVG backend")
    (description "Plotters SVG backend")
    (license license:expat)))

(define-public rust-gif-0.11
  (package
    (name "rust-gif")
    (version "0.11.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gif" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1pnqfg0k84v0cnqyf85jqvwy3jcs580bfjaps5rzbl3kk5lqyrjs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-color-quant" ,rust-color-quant-1)
         ("rust-weezl" ,rust-weezl-0.1))))
    (home-page
      "https://github.com/image-rs/image-gif")
    (synopsis "GIF de- and encoder")
    (description "GIF de- and encoder")
    (license (list license:expat license:asl2.0))))

(define-public rust-plotters-bitmap-0.3
  (package
    (name "rust-plotters-bitmap")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "plotters-bitmap" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0m0bq3fqrnhgg37k6lz0m328n3ifymc965pxmqc5cpk90nljydi1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-gif" ,rust-gif-0.11)
         ("rust-image" ,rust-image-0.23)
         ("rust-plotters-backend"
          ,rust-plotters-backend-0.3))))
    (home-page "https://plotters-rs.github.io")
    (synopsis "Plotters Bitmap Backend")
    (description "Plotters Bitmap Backend")
    (license license:expat)))

(define-public rust-plotters-backend-0.3
  (package
    (name "rust-plotters-backend")
    (version "0.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "plotters-backend" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "075ccyz814q46dkr93zz7crj9mmyqgk0w6mmrpyz1sm0ilqig16q"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://plotters-rs.github.io")
    (synopsis "Plotters Backend API")
    (description "Plotters Backend API")
    (license license:expat)))

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
    (license #f)))

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
    (license (list license:asl2.0))))

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
          ,rust-version-compare-0.0))))
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
      `(#:skip-build?
        #t
        #:cargo-inputs
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
         ("rust-tiff" ,rust-tiff-0.6))))
    (home-page "https://github.com/image-rs/image")
    (synopsis
      "Imaging library written in Rust. Provides basic filters and decoders for the most common image formats.")
    (description
      "Imaging library written in Rust.  Provides basic filters and decoders for the most common image formats.")
    (license license:expat)))

(define-public rust-pathfinder-simd-0.5
  (package
    (name "rust-pathfinder-simd")
    (version "0.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pathfinder_simd" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1zx6yjch2zwlnbrsq3ljnkwzs9jdf4cbh5wwjkjradahqnn4dzir"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rustc-version" ,rust-rustc-version-0.3))))
    (home-page "https://github.com/servo/pathfinder")
    (synopsis "A simple SIMD library")
    (description
      "This package provides a simple SIMD library")
    (license (list license:expat license:asl2.0))))

(define-public rust-pathfinder-geometry-0.5
  (package
    (name "rust-pathfinder-geometry")
    (version "0.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pathfinder_geometry" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1lssir0s1cmrpzzrk49jm31nkssh2j715gryww6700x79rxpwyqb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-log" ,rust-log-0.4)
         ("rust-pathfinder-simd"
          ,rust-pathfinder-simd-0.5))))
    (home-page "https://github.com/servo/pathfinder")
    (synopsis
      "Basic SIMD-accelerated geometry/linear algebra")
    (description
      "Basic SIMD-accelerated geometry/linear algebra")
    (license (list license:expat license:asl2.0))))

(define-public rust-freetype-0.7
  (package
    (name "rust-freetype")
    (version "0.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "freetype" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1ijxyd8isq0w7qkbhp7p1y536xg3d8b8vy5ljg31rnz3m5w87qxy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-freetype-sys" ,rust-freetype-sys-0.13)
         ("rust-libc" ,rust-libc-0.2))))
    (home-page
      "https://github.com/servo/rust-freetype")
    (synopsis "Bindings for Freetype used by Servo")
    (description
      "Bindings for Freetype used by Servo")
    (license (list license:asl2.0 license:expat))))

(define-public rust-font-kit-0.10
  (package
    (name "rust-font-kit")
    (version "0.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "font-kit" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0a7fm757af2s9sk2i02plpa280mmygjmchcwpjclk1iqxiba3ja6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-core-foundation"
          ,rust-core-foundation-0.9)
         ("rust-core-graphics" ,rust-core-graphics-0.22)
         ("rust-core-text" ,rust-core-text-19)
         ("rust-dirs-next" ,rust-dirs-next-2)
         ("rust-dwrote" ,rust-dwrote-0.11)
         ("rust-float-ord" ,rust-float-ord-0.2)
         ("rust-freetype" ,rust-freetype-0.7)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-pathfinder-geometry"
          ,rust-pathfinder-geometry-0.5)
         ("rust-pathfinder-simd"
          ,rust-pathfinder-simd-0.5)
         ("rust-servo-fontconfig"
          ,rust-servo-fontconfig-0.5)
         ("rust-walkdir" ,rust-walkdir-2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/servo/font-kit")
    (synopsis
      "A cross-platform font loading library")
    (description
      "This package provides a cross-platform font loading library")
    (license (list license:expat license:asl2.0))))

(define-public rust-plotters-0.3
  (package
    (name "rust-plotters")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "plotters" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0akgmm5kqghl2b1q1qkzjggiqnb9smaz54fd5374k5qbqfggv8rj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-font-kit" ,rust-font-kit-0.10)
         ("rust-image" ,rust-image-0.23)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-pathfinder-geometry"
          ,rust-pathfinder-geometry-0.5)
         ("rust-plotters-backend"
          ,rust-plotters-backend-0.3)
         ("rust-plotters-bitmap"
          ,rust-plotters-bitmap-0.3)
         ("rust-plotters-svg" ,rust-plotters-svg-0.3)
         ("rust-ttf-parser" ,rust-ttf-parser-0.12)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://plotters-rs.github.io/")
    (synopsis
      "A Rust drawing library focus on data plotting for both WASM and native applications")
    (description
      "This package provides a Rust drawing library focus on data plotting for both WASM and native applications")
    (license license:expat)))

(define-public rust-criterion-0.3
  (package
    (name "rust-criterion")
    (version "0.3.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "criterion" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "08rx789365x6l9kbsg2r9c5yg25rd3pj1giwyhpcqis56pbpwcmb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-async-std" ,rust-async-std-1)
         ("rust-atty" ,rust-atty-0.2)
         ("rust-cast" ,rust-cast-0.2)
         ("rust-clap" ,rust-clap-2)
         ("rust-criterion-plot" ,rust-criterion-plot-0.4)
         ("rust-csv" ,rust-csv-1)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-itertools" ,rust-itertools-0.10)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-oorandom" ,rust-oorandom-11.1)
         ("rust-plotters" ,rust-plotters-0.3)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-cbor" ,rust-serde-cbor-0.11)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-smol" ,rust-smol-1)
         ("rust-tinytemplate" ,rust-tinytemplate-1)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-walkdir" ,rust-walkdir-2))))
    (home-page
      "https://bheisler.github.io/criterion.rs/book/index.html")
    (synopsis
      "Statistics-driven micro-benchmarking library")
    (description
      "Statistics-driven micro-benchmarking library")
    (license (list license:asl2.0 license:expat))))

(define-public rust-phf-generator-0.9
  (package
    (name "rust-phf-generator")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "phf_generator" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "10ih96kaxnkn1yxk3ghpzgm09nc0rn69fd52kv68003fv4h34gyl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-criterion" ,rust-criterion-0.3)
         ("rust-phf-shared" ,rust-phf-shared-0.9)
         ("rust-rand" ,rust-rand-0.8))))
    (home-page
      "https://github.com/sfackler/rust-phf")
    (synopsis "PHF generation logic")
    (description "PHF generation logic")
    (license license:expat)))

(define-public rust-phf-macros-0.9
  (package
    (name "rust-phf-macros")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "phf_macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1rpc0jy5sfrk3ir87k2q0kk44a45nsrbwc131jmsi6f8hi3fqi7g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-phf-generator" ,rust-phf-generator-0.9)
         ("rust-phf-shared" ,rust-phf-shared-0.9)
         ("rust-proc-macro-hack"
          ,rust-proc-macro-hack-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1)
         ("rust-unicase" ,rust-unicase-2))))
    (home-page
      "https://github.com/sfackler/rust-phf")
    (synopsis
      "Macros to generate types in the phf crate")
    (description
      "Macros to generate types in the phf crate")
    (license license:expat)))

(define-public rust-phf-0.9
  (package
    (name "rust-phf")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "phf" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0sk9arhiv4hkg3hbmbxnpjvr0bffhyz7kpb2pn86mn6ia4c566xj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-phf-macros" ,rust-phf-macros-0.9)
         ("rust-phf-shared" ,rust-phf-shared-0.9)
         ("rust-proc-macro-hack"
          ,rust-proc-macro-hack-0.5))))
    (home-page
      "https://github.com/sfackler/rust-phf")
    (synopsis
      "Runtime support for perfect hash function data structures")
    (description
      "Runtime support for perfect hash function data structures")
    (license license:expat)))

(define-public rust-slotmap-0.4
  (package
    (name "rust-slotmap")
    (version "0.4.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "slotmap" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1cga58417vz6m0bazvicprb01mm1x690wy8rj7g8fyvnqn24dwvb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/orlp/slotmap")
    (synopsis "Slotmap data structure")
    (description "Slotmap data structure")
    (license license:zlib)))

(define-public rust-deepsize-derive-0.1
  (package
    (name "rust-deepsize-derive")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "deepsize_derive" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "14p92z0f5rzkvk85npw2k2r8zxd32l0gza0miw0wpg5yajvwiypf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-0.4)
         ("rust-quote" ,rust-quote-0.6)
         ("rust-syn" ,rust-syn-0.15))))
    (home-page
      "https://github.com/Aeledfyr/deepsize/")
    (synopsis
      "A crate for measuring the total size of object on the stack and heap")
    (description
      "This package provides a crate for measuring the total size of object on the stack and heap")
    (license license:expat)))

(define-public rust-deepsize-0.2
  (package
    (name "rust-deepsize")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "deepsize" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0v5rn98i6j4jfpcm93mg8by3ddwhanvjiyd3pszzfsvgqdz9inqw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arrayvec" ,rust-arrayvec-0.5)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-deepsize-derive"
          ,rust-deepsize-derive-0.1)
         ("rust-hashbrown" ,rust-hashbrown-0.9)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-slab" ,rust-slab-0.4)
         ("rust-slotmap" ,rust-slotmap-0.4)
         ("rust-smallvec" ,rust-smallvec-1))))
    (home-page
      "https://github.com/Aeledfyr/deepsize/")
    (synopsis
      "A crate for measuring the total size of object on the stack and heap")
    (description
      "This package provides a crate for measuring the total size of object on the stack and heap")
    (license license:expat)))

(define-public rust-lasso-0.5
  (package
    (name "rust-lasso")
    (version "0.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lasso" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "02ky9f3nj1w1qy30c3qifcvvdza9r7227hxjmj78gxz50657qr78"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-abomonation" ,rust-abomonation-0.7)
         ("rust-ahash" ,rust-ahash-0.7)
         ("rust-dashmap" ,rust-dashmap-4)
         ("rust-deepsize" ,rust-deepsize-0.2)
         ("rust-hashbrown" ,rust-hashbrown-0.11)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/Kixiron/lasso")
    (synopsis
      "A multithreaded and single threaded string interner that allows strings to be cached with a
minimal memory footprint, associating them with a unique key that can be used to retrieve them at any time.
")
    (description
      "This package provides a multithreaded and single threaded string interner that allows strings to be cached with a
minimal memory footprint, associating them with a unique key that can be used to retrieve them at any time.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-codemap-0.1
  (package
    (name "rust-codemap")
    (version "0.1.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "codemap" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "091azkslwkcijj3lp9ymb084y9a0wm4fkil7m613ja68r2snkrxr"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/kevinmehall/codemap")
    (synopsis
      "A data structure for efficiently storing source code position and span information
(e.g. in a compiler AST), and mapping it back to file/line/column locations for error
reporting and suggestions.
")
    (description
      "This package provides a data structure for efficiently storing source code position and span information
(e.g.  in a compiler AST), and mapping it back to file/line/column locations for error
reporting and suggestions.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-grass-0.10
  (package
    (name "rust-grass")
    (version "0.10.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "grass" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "15xlf3akaq31giy0p4npy0z10mrrxs6n4p26xqwg7jd07fhg0msd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-beef" ,rust-beef-0.5)
         ("rust-clap" ,rust-clap-2)
         ("rust-codemap" ,rust-codemap-0.1)
         ("rust-criterion" ,rust-criterion-0.3)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-lasso" ,rust-lasso-0.5)
         ("rust-num-bigint" ,rust-num-bigint-0.4)
         ("rust-num-rational" ,rust-num-rational-0.4)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-phf" ,rust-phf-0.9)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
    (home-page
      "https://github.com/connorskees/grass")
    (synopsis
      "A near-feature-complete Sass compiler written purely in Rust")
    (description
      "This package provides a near-feature-complete Sass compiler written purely in Rust")
    (license license:expat)))

(define-public rust-clap-generate-3
  (package
    (name "rust-clap-generate")
    (version "3.0.0-beta.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clap_generate" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0hrn3hmm36nwnjav138mnmxpdmlj1953rzrfjn8g4s9mz6z1m6rd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-clap" ,rust-clap-3))))
    (home-page "https://clap.rs/")
    (synopsis
      "A generator library used with clap for shell completion scripts, manpage, etc.")
    (description
      "This package provides a generator library used with clap for shell completion scripts, manpage, etc.")
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

(define-public rust-alphanumeric-sort-1
  (package
    (name "rust-alphanumeric-sort")
    (version "1.4.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "alphanumeric-sort" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "166nijqc05kqb3qn8mn8h5lscrdc2qz4jvxg8nzzn7scrcn9pr90"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://magiclen.org/alphanumeric-sort")
    (synopsis
      "This crate can help you sort order for files and folders whose names contain numerals.")
    (description
      "This crate can help you sort order for files and folders whose names contain numerals.")
    (license license:expat)))

(define-public rust-actix-web-httpauth-0.6
  (package
    (name "rust-actix-web-httpauth")
    (version "0.6.0-beta.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-web-httpauth" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0n7p1x05aaqcg6il142fiigi2dwqj71m8rf9mwy4jncdd6s0wk96"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-actix-service" ,rust-actix-service-2)
         ("rust-actix-web" ,rust-actix-web-4)
         ("rust-base64" ,rust-base64-0.13)
         ("rust-futures-util" ,rust-futures-util-0.3))))
    (home-page "https://actix.rs")
    (synopsis
      "HTTP authentication schemes for Actix web")
    (description
      "HTTP authentication schemes for Actix web")
    (license (list license:expat license:asl2.0))))

(define-public rust-twoway-0.2
  (package
    (name "rust-twoway")
    (version "0.2.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "twoway" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0iqb54firzb8jinl2674vz8s6c4h30842sa3v9pcs93w1m3gnzy5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-galil-seiferas" ,rust-galil-seiferas-0.1)
         ("rust-jetscii" ,rust-jetscii-0.3)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-unchecked-index"
          ,rust-unchecked-index-0.2))))
    (home-page "https://github.com/bluss/twoway")
    (synopsis
      "(Deprecated - use crate memchr instead.) Fast substring search for strings and byte strings. Optional SSE4.2 acceleration (if detected at runtime) using pcmpestri. Memchr is the only mandatory dependency. The two way algorithm is also used by rust's libstd itself, but here it is exposed both for byte strings, using memchr, and optionally using a SSE4.2 accelerated version.")
    (description
      "(Deprecated - use crate memchr instead.) Fast substring search for strings and byte strings.  Optional SSE4.2 acceleration (if detected at runtime) using pcmpestri.  Memchr is the only mandatory dependency.  The two way algorithm is also used by rust's libstd itself, but here it is exposed both for byte strings, using memchr, and optionally using a SSE4.2 accelerated version.")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-multipart-0.4
  (package
    (name "rust-actix-multipart")
    (version "0.4.0-beta.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-multipart" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "03f4n4ljpqyz7497lrlv8h2h53cy2lbpmlvz9jklnyyg7lna6sm4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-actix-utils" ,rust-actix-utils-3)
         ("rust-actix-web" ,rust-actix-web-4)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-derive-more" ,rust-derive-more-0.99)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-httparse" ,rust-httparse-1)
         ("rust-local-waker" ,rust-local-waker-0.1)
         ("rust-log" ,rust-log-0.4)
         ("rust-mime" ,rust-mime-0.3)
         ("rust-twoway" ,rust-twoway-0.2))))
    (home-page "https://actix.rs")
    (synopsis "Multipart form support for Actix Web")
    (description
      "Multipart form support for Actix Web")
    (license (list license:expat license:asl2.0))))

(define-public rust-http-range-0.1
  (package
    (name "rust-http-range")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "http-range" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1p4h9dj5vzwspqkz5g75hiw50f99d09j5czxhabc1dyrhd7nksgf"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/bancek/rust-http-range.git")
    (synopsis "HTTP Range header parser")
    (description "HTTP Range header parser")
    (license license:expat)))

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

(define-public rust-actix-web-codegen-0.5
  (package
    (name "rust-actix-web-codegen")
    (version "0.5.0-beta.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-web-codegen" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1pf6ym8a25lklrl69dx28hghp5d4y277fzij4d5sf81169pzs4aa"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-actix-router" ,rust-actix-router-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://actix.rs")
    (synopsis
      "Routing and runtime macros for Actix Web")
    (description
      "Routing and runtime macros for Actix Web")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-server-2
  (package
    (name "rust-actix-server")
    (version "2.0.0-beta.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-server" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "11xzz6hi6jclakj14qhf02xpbhmwm1b8gdmk31h1gc63zhar4di6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-actix-rt" ,rust-actix-rt-2)
         ("rust-actix-service" ,rust-actix-service-2)
         ("rust-actix-utils" ,rust-actix-utils-3)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-mio" ,rust-mio-0.7)
         ("rust-num-cpus" ,rust-num-cpus-1)
         ("rust-slab" ,rust-slab-0.4)
         ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://actix.rs")
    (synopsis
      "General purpose TCP server built for the Actix ecosystem")
    (description
      "General purpose TCP server built for the Actix ecosystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-firestorm-enabled-0.4
  (package
    (name "rust-firestorm-enabled")
    (version "0.4.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "firestorm-enabled" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1mnxldrs2fk0a0n1q9mvp5z92r945mzzg14m50jdckw1gm6xsqwi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-firestorm-core" ,rust-firestorm-core-0.1)
         ("rust-inferno" ,rust-inferno-0.10))))
    (home-page "")
    (synopsis
      "A dependency of firestorm. Do not use directly.")
    (description
      "This package provides a dependency of firestorm.  Do not use directly.")
    (license license:expat)))

(define-public rust-str-stack-0.1
  (package
    (name "rust-str-stack")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "str_stack" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1sxl8xd8kiaffsryqpfwcb02lnd3djfin7gf38ag5980908vd4ch"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/Stebalien/str_stack")
    (synopsis
      "A string allocator for allocating many write-once strings.

This library is primarily useful for parsing where you need to repeatedly build
many strings, use them, and then throw them away. Instead of allocating many independent strings, this library will put them all in the same buffer.
")
    (description
      "This package provides a string allocator for allocating many write-once strings.

This library is primarily useful for parsing where you need to repeatedly build
many strings, use them, and then throw them away.  Instead of allocating many independent strings, this library will put them all in the same buffer.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-env-logger-0.9
  (package
    (name "rust-env-logger")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "env_logger" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1hzr53r0wga51j0w5zid69ylbfizg4qdbq0vqdj6rvki94sg0b0b"))))
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
    (home-page
      "https://github.com/env-logger-rs/env_logger/")
    (synopsis
      "A logging implementation for `log` which is configured via an environment
variable.
")
    (description
      "This package provides a logging implementation for `log` which is configured via an environment
variable.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-inferno-0.10
  (package
    (name "rust-inferno")
    (version "0.10.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "inferno" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "11yw3vs9k1dbd1v76gspn79frnsa35fdgybhqvrzb2xk22dbv9dz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-atty" ,rust-atty-0.2)
         ("rust-crossbeam-channel"
          ,rust-crossbeam-channel-0.5)
         ("rust-crossbeam-utils"
          ,rust-crossbeam-utils-0.8)
         ("rust-dashmap" ,rust-dashmap-4)
         ("rust-env-logger" ,rust-env-logger-0.9)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-itoa" ,rust-itoa-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-num-format" ,rust-num-format-0.4)
         ("rust-num-cpus" ,rust-num-cpus-1)
         ("rust-quick-xml" ,rust-quick-xml-0.22)
         ("rust-rgb" ,rust-rgb-0.8)
         ("rust-str-stack" ,rust-str-stack-0.1)
         ("rust-structopt" ,rust-structopt-0.3))))
    (home-page
      "https://github.com/jonhoo/inferno.git")
    (synopsis
      "Rust port of the FlameGraph performance profiling tool suite")
    (description
      "Rust port of the FlameGraph performance profiling tool suite")
    (license license:cddl1.0)))

(define-public rust-amd64-timer-1
  (package
    (name "rust-amd64-timer")
    (version "1.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "amd64_timer" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0lcbk9a0kjl5fmpbcs8f2l89n1x6fj7q3k581pv2vv2q8pclwpnf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rustc-version" ,rust-rustc-version-0.2))))
    (home-page
      "https://github.com/valarauca/amd64_timer")
    (synopsis "Get CPU ticks.")
    (description "Get CPU ticks.")
    (license license:expat)))

(define-public rust-firestorm-core-0.1
  (package
    (name "rust-firestorm-core")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "firestorm-core" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "11hm5yd7b1iqg2q7zbvfdslrfqvixmdq26d2amv0xz0hdp51wjh5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-amd64-timer" ,rust-amd64-timer-1))))
    (home-page "")
    (synopsis "Internals for firestorm")
    (description "Internals for firestorm")
    (license license:expat)))

(define-public rust-firestorm-enabled-0.3
  (package
    (name "rust-firestorm-enabled")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "firestorm-enabled" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1qhmys2j0x25pxgixdd7pmkk0ibwvqwxcz7csy23v934vn0zzb4n"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-firestorm-core" ,rust-firestorm-core-0.1)
         ("rust-inferno" ,rust-inferno-0.10))))
    (home-page "")
    (synopsis
      "A dependency of firestorm. Do not use directly.")
    (description
      "This package provides a dependency of firestorm.  Do not use directly.")
    (license license:expat)))

(define-public rust-firestorm-0.3
  (package
    (name "rust-firestorm")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "firestorm" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1bkxid4m1ib88m8lkm4xnh7k5c65va05y09vvw7dgprmn3kfpyhn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-firestorm-enabled"
          ,rust-firestorm-enabled-0.3))))
    (home-page
      "https://github.com/That3Percent/firestorm")
    (synopsis
      "A low overhead intrusive flamegraph profiler.")
    (description
      "This package provides a low overhead intrusive flamegraph profiler.")
    (license license:expat)))

(define-public rust-firestorm-0.4
  (package
    (name "rust-firestorm")
    (version "0.4.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "firestorm" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "16a4cgc2hrigp86d93bh64bgrk86ln2k26iq5qb0cr0k3gd6nn1i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-firestorm" ,rust-firestorm-0.3)
         ("rust-firestorm-enabled"
          ,rust-firestorm-enabled-0.4))))
    (home-page
      "https://github.com/That3Percent/firestorm")
    (synopsis
      "A low overhead intrusive flamegraph profiler.")
    (description
      "This package provides a low overhead intrusive flamegraph profiler.")
    (license license:expat)))

(define-public rust-actix-router-0.5
  (package
    (name "rust-actix-router")
    (version "0.5.0-beta.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-router" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0gga89nrcfl4lr32amflkgwy1bbmfj0045v8igws46kdszh5rf9n"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytestring" ,rust-bytestring-0.1)
         ("rust-firestorm" ,rust-firestorm-0.4)
         ("rust-http" ,rust-http-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page
      "https://github.com/actix/actix-web.git")
    (synopsis "Resource path matching and router")
    (description "Resource path matching and router")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-web-4
  (package
    (name "rust-actix-web")
    (version "4.0.0-beta.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-web" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1dcvfd3arivmw62g9xghqf5b34bwyrc95kxkk6kwkiy97sra4jnk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-actix-codec" ,rust-actix-codec-0.4)
         ("rust-actix-http" ,rust-actix-http-3)
         ("rust-actix-macros" ,rust-actix-macros-0.2)
         ("rust-actix-router" ,rust-actix-router-0.5)
         ("rust-actix-rt" ,rust-actix-rt-2)
         ("rust-actix-server" ,rust-actix-server-2)
         ("rust-actix-service" ,rust-actix-service-2)
         ("rust-actix-tls" ,rust-actix-tls-3)
         ("rust-actix-utils" ,rust-actix-utils-3)
         ("rust-actix-web-codegen"
          ,rust-actix-web-codegen-0.5)
         ("rust-ahash" ,rust-ahash-0.7)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-cookie" ,rust-cookie-0.15)
         ("rust-derive-more" ,rust-derive-more-0.99)
         ("rust-either" ,rust-either-1)
         ("rust-encoding-rs" ,rust-encoding-rs-0.8)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-itoa" ,rust-itoa-0.4)
         ("rust-language-tags" ,rust-language-tags-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-mime" ,rust-mime-0.3)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-paste" ,rust-paste-1)
         ("rust-pin-project" ,rust-pin-project-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-serde-urlencoded"
          ,rust-serde-urlencoded-0.7)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-socket2" ,rust-socket2-0.4)
         ("rust-time" ,rust-time-0.2)
         ("rust-url" ,rust-url-2))))
    (home-page "https://actix.rs")
    (synopsis
      "Actix Web is a powerful, pragmatic, and extremely fast web framework for Rust")
    (description
      "Actix Web is a powerful, pragmatic, and extremely fast web framework for Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-zstd-sys-1
  (package
    (name "rust-zstd-sys")
    (version "1.5.0+zstd.1.4.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zstd-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0rf4pnp4palnmh846n7s511q6apfajq33dy6bw16j0r4811hjv2f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bindgen" ,rust-bindgen-0.57)
         ("rust-cc" ,rust-cc-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/gyscos/zstd-rs")
    (synopsis
      "Low-level bindings for the zstd compression library.")
    (description
      "Low-level bindings for the zstd compression library.")
    (license (list license:expat license:asl2.0))))

(define-public rust-zstd-safe-3
  (package
    (name "rust-zstd-safe")
    (version "3.1.0+zstd.1.4.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zstd-safe" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0vb6zc4fpigafd6ln4s8p5avaggpva3m6mchw03f8zxd4dk958as"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-zstd-sys" ,rust-zstd-sys-1))))
    (home-page "https://github.com/gyscos/zstd-rs")
    (synopsis
      "Safe low-level bindings for the zstd compression library.")
    (description
      "Safe low-level bindings for the zstd compression library.")
    (license (list license:expat license:asl2.0))))

(define-public rust-zstd-0.7
  (package
    (name "rust-zstd")
    (version "0.7.0+zstd.1.4.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zstd" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0lndq8ygzyz4c0n2vjhwfxnasyd132jrwxxzn4ajwdyqh4j7aa4l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-futures" ,rust-futures-0.1)
         ("rust-tokio-io" ,rust-tokio-io-0.1)
         ("rust-zstd-safe" ,rust-zstd-safe-3))))
    (home-page "https://github.com/gyscos/zstd-rs")
    (synopsis
      "Binding for the zstd compression library.")
    (description
      "Binding for the zstd compression library.")
    (license license:expat)))

(define-public rust-local-channel-0.1
  (package
    (name "rust-local-channel")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "local-channel" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "17zy0g5wv4i0crnj03mzk18zkshmgv4mj9ail02p424my66ccik2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-sink" ,rust-futures-sink-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-local-waker" ,rust-local-waker-0.1))))
    (home-page
      "https://github.com/actix/actix-net.git")
    (synopsis
      "A non-threadsafe multi-producer, single-consumer, futures-aware, FIFO queue")
    (description
      "This package provides a non-threadsafe multi-producer, single-consumer, futures-aware, FIFO queue")
    (license (list license:expat license:asl2.0))))

(define-public rust-language-tags-0.3
  (package
    (name "rust-language-tags")
    (version "0.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "language-tags" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "124k6w9nx33q4xs8rpa9f7klshrsa0x4f7qngdwq890lpdj5jd6l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1))))
    (home-page
      "https://github.com/pyfisch/rust-language-tags")
    (synopsis "Language tags for Rust")
    (description "Language tags for Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-httparse-1
  (package
    (name "rust-httparse")
    (version "1.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "httparse" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "00smbrgb9vyzbbj3j5d66iarjl5x2wpfwkmhcy5nizylw7dlzndc"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/seanmonstar/httparse")
    (synopsis
      "A tiny, safe, speedy, zero-copy HTTP/1.x parser.")
    (description
      "This package provides a tiny, safe, speedy, zero-copy HTTP/1.x parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-bytestring-1
  (package
    (name "rust-bytestring")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bytestring" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0ka9gkn2rrxms0d5s32ckpchh06qmgidbh4xw630gfcpkshnnw4h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytes" ,rust-bytes-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://actix.rs")
    (synopsis
      "An immutable UTF-8 encoded string using Bytes as storage")
    (description
      "An immutable UTF-8 encoded string using Bytes as storage")
    (license (list license:expat license:asl2.0))))

(define-public rust-http-0.2
  (package
    (name "rust-http")
    (version "0.2.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "http" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0sqqidxilz83h3nr9g3hwsa0z34mh6clrrdfvvd2f66l0mmhj8qk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytes" ,rust-bytes-1)
         ("rust-fnv" ,rust-fnv-1)
         ("rust-itoa" ,rust-itoa-0.4))))
    (home-page "https://github.com/hyperium/http")
    (synopsis
      "A set of types for representing HTTP requests and responses.
")
    (description
      "This package provides a set of types for representing HTTP requests and responses.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-local-waker-0.1
  (package
    (name "rust-local-waker")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "local-waker" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "194dvpx4drizq4jgcawvxa9n54bv3adv1l5aqgi9rsbwwb9s5yc4"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/actix/actix-net.git")
    (synopsis
      "A synchronization primitive for thread-local task wakeup")
    (description
      "This package provides a synchronization primitive for thread-local task wakeup")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-utils-3
  (package
    (name "rust-actix-utils")
    (version "3.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-utils" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "155aj87z8634mfmggfixyqy3pqhpyf7g97zrzy6piz77qamcp4g4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-local-waker" ,rust-local-waker-0.1)
         ("rust-pin-project-lite"
          ,rust-pin-project-lite-0.2))))
    (home-page "https://github.com/actix/actix-net")
    (synopsis
      "Various utilities used in the Actix ecosystem")
    (description
      "Various utilities used in the Actix ecosystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-tls-3
  (package
    (name "rust-actix-tls")
    (version "3.0.0-beta.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-tls" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0sgmzsxm00l0zw8qaw33nqn4v8kkgnjh3spp681yyqh9hihbpdv5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-actix-codec" ,rust-actix-codec-0.4)
         ("rust-actix-rt" ,rust-actix-rt-2)
         ("rust-actix-service" ,rust-actix-service-2)
         ("rust-actix-utils" ,rust-actix-utils-3)
         ("rust-derive-more" ,rust-derive-more-0.99)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-http" ,rust-http-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-openssl" ,rust-openssl-0.10)
         ("rust-tokio-native-tls"
          ,rust-tokio-native-tls-0.3)
         ("rust-tokio-openssl" ,rust-tokio-openssl-0.6)
         ("rust-tokio-rustls" ,rust-tokio-rustls-0.22)
         ("rust-tokio-util" ,rust-tokio-util-0.6)
         ("rust-webpki-roots" ,rust-webpki-roots-0.21))))
    (home-page "https://actix.rs")
    (synopsis
      "TLS acceptor and connector services for Actix ecosystem")
    (description
      "TLS acceptor and connector services for Actix ecosystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-service-2
  (package
    (name "rust-actix-service")
    (version "2.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-service" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0d2hf15clvxbnx08lql6h18yalap9x1g69icwvxd0c47dbbgkxbp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-paste" ,rust-paste-1)
         ("rust-pin-project-lite"
          ,rust-pin-project-lite-0.2))))
    (home-page "https://github.com/actix/actix-net")
    (synopsis
      "Service trait and combinators for representing asynchronous request/response operations.")
    (description
      "Service trait and combinators for representing asynchronous request/response operations.")
    (license (list license:expat license:asl2.0))))

(define-public rust-tokio-1
  (package
    (name "rust-tokio")
    (version "1.12.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tokio" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1k7g4hyvbibjdvx9y5ppv1hsycx63vg2fiabwhx49a6wvrpl3hn2"))))
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
         ("rust-pin-project-lite"
          ,rust-pin-project-lite-0.2)
         ("rust-signal-hook-registry"
          ,rust-signal-hook-registry-1)
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

(define-public rust-actix-macros-0.2
  (package
    (name "rust-actix-macros")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0dw88g9lzrhkzq8hxh1lvykr87wdm0cicyz5kxp5w4vwhpb6ry62"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/actix/actix-net")
    (synopsis "Macros for Actix system and runtime")
    (description
      "Macros for Actix system and runtime")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-rt-2
  (package
    (name "rust-actix-rt")
    (version "2.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-rt" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "181bwmsazdn7v8s6m9s7abv92lpsh6prcg3wi8l95vf9azcpqzdw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-actix-macros" ,rust-actix-macros-0.2)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://actix.rs")
    (synopsis
      "Tokio-based single-threaded async runtime for the Actix ecosystem")
    (description
      "Tokio-based single-threaded async runtime for the Actix ecosystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-codec-0.4
  (package
    (name "rust-actix-codec")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-codec" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "16h1q4qmq2r0dq71cl7wbgi9yzr1y5qc2z6ahg5l84z5v6rbwp8x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-sink" ,rust-futures-sink-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-pin-project-lite"
          ,rust-pin-project-lite-0.2)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-tokio-util" ,rust-tokio-util-0.6))))
    (home-page "https://github.com/actix/actix-net")
    (synopsis
      "Codec utilities for working with framed protocols")
    (description
      "Codec utilities for working with framed protocols")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-http-3
  (package
    (name "rust-actix-http")
    (version "3.0.0-beta.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-http" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1y8ndynk96dlal0wyp1nqzmq79dbh84mapp5gssd5skzz9iahf6x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-actix-codec" ,rust-actix-codec-0.4)
         ("rust-actix-rt" ,rust-actix-rt-2)
         ("rust-actix-service" ,rust-actix-service-2)
         ("rust-actix-tls" ,rust-actix-tls-3)
         ("rust-actix-utils" ,rust-actix-utils-3)
         ("rust-ahash" ,rust-ahash-0.7)
         ("rust-base64" ,rust-base64-0.13)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-brotli2" ,rust-brotli2-0.3)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-bytestring" ,rust-bytestring-1)
         ("rust-derive-more" ,rust-derive-more-0.99)
         ("rust-encoding-rs" ,rust-encoding-rs-0.8)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-h2" ,rust-h2-0.3)
         ("rust-http" ,rust-http-0.2)
         ("rust-httparse" ,rust-httparse-1)
         ("rust-itoa" ,rust-itoa-0.4)
         ("rust-language-tags" ,rust-language-tags-0.3)
         ("rust-local-channel" ,rust-local-channel-0.1)
         ("rust-log" ,rust-log-0.4)
         ("rust-mime" ,rust-mime-0.3)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-percent-encoding"
          ,rust-percent-encoding-2)
         ("rust-pin-project" ,rust-pin-project-1)
         ("rust-pin-project-lite"
          ,rust-pin-project-lite-0.2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-sha-1" ,rust-sha-1-0.9)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-time" ,rust-time-0.2)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-trust-dns-resolver"
          ,rust-trust-dns-resolver-0.20)
         ("rust-zstd" ,rust-zstd-0.7))))
    (home-page "https://actix.rs")
    (synopsis
      "HTTP primitives for the Actix ecosystem")
    (description
      "HTTP primitives for the Actix ecosystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-files-0.6
  (package
    (name "rust-actix-files")
    (version "0.6.0-beta.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "actix-files" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0mqn9ac963g40n6az06xcvy54ni1qpcpg6x78dcg7y796mkj692r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-actix-http" ,rust-actix-http-3)
         ("rust-actix-service" ,rust-actix-service-2)
         ("rust-actix-utils" ,rust-actix-utils-3)
         ("rust-actix-web" ,rust-actix-web-4)
         ("rust-askama-escape" ,rust-askama-escape-0.10)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-bytes" ,rust-bytes-1)
         ("rust-derive-more" ,rust-derive-more-0.99)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-http-range" ,rust-http-range-0.1)
         ("rust-log" ,rust-log-0.4)
         ("rust-mime" ,rust-mime-0.3)
         ("rust-mime-guess" ,rust-mime-guess-2)
         ("rust-percent-encoding"
          ,rust-percent-encoding-2))))
    (home-page "https://actix.rs")
    (synopsis "Static file serving for Actix Web")
    (description "Static file serving for Actix Web")
    (license (list license:expat license:asl2.0))))

(define-public rust-miniserve-0.17
  (package
    (name "rust-miniserve")
    (version "0.17.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "miniserve" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "10klf6fqlin6gchhv5mivpgp4m08pzz7a4rwrjdzgwi572gkmx7p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:rust ,rust-1.52                ;requires the "resolver" feature
	#:cargo-inputs
        (("rust-actix-files" ,rust-actix-files-0.6)
         ("rust-actix-multipart"
          ,rust-actix-multipart-0.4)
         ("rust-actix-web" ,rust-actix-web-4)
         ("rust-actix-web-httpauth"
          ,rust-actix-web-httpauth-0.6)
         ("rust-alphanumeric-sort"
          ,rust-alphanumeric-sort-1)
         ("rust-anyhow" ,rust-anyhow-1)
         ("rust-atty" ,rust-atty-0.2)
         ("rust-bytesize" ,rust-bytesize-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-chrono-humanize"
          ,rust-chrono-humanize-0.2)
         ("rust-clap" ,rust-clap-3)
         ("rust-clap-generate" ,rust-clap-generate-3)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-get-if-addrs" ,rust-get-if-addrs-0.5)
         ("rust-grass" ,rust-grass-0.10)
         ("rust-hex" ,rust-hex-0.4)
         ("rust-http" ,rust-http-0.2)
         ("rust-httparse" ,rust-httparse-1)
         ("rust-libflate" ,rust-libflate-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-maud" ,rust-maud-0.22)
         ("rust-mime" ,rust-mime-0.3)
         ("rust-nanoid" ,rust-nanoid-0.4)
         ("rust-percent-encoding"
          ,rust-percent-encoding-2)
         ("rust-port-check" ,rust-port-check-0.1)
         ("rust-qrcodegen" ,rust-qrcodegen-1)
         ("rust-rustls" ,rust-rustls-0.19)
         ("rust-serde" ,rust-serde-1)
         ("rust-sha2" ,rust-sha2-0.9)
         ("rust-simplelog" ,rust-simplelog-0.10)
         ("rust-socket2" ,rust-socket2-0.4)
         ("rust-strum" ,rust-strum-0.21)
         ("rust-strum-macros" ,rust-strum-macros-0.21)
         ("rust-tar" ,rust-tar-0.4)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-yansi" ,rust-yansi-0.5)
         ("rust-zip" ,rust-zip-0.5))
        #:cargo-development-inputs
        (("rust-assert-cmd" ,rust-assert-cmd-2)
         ("rust-assert-fs" ,rust-assert-fs-1)
         ("rust-predicates" ,rust-predicates-2)
         ("rust-pretty-assertions"
          ,rust-pretty-assertions-0.7)
         ("rust-regex" ,rust-regex-1)
         ("rust-reqwest" ,rust-reqwest-0.11)
         ("rust-rstest" ,rust-rstest-0.11)
         ("rust-select" ,rust-select-0.5)
         ("rust-url" ,rust-url-2))))
    (home-page
      "https://github.com/svenstaro/miniserve")
    (synopsis
      "For when you really just want to serve some files over HTTP right now!")
    (description
      "For when you really just want to serve some files over HTTP right now!")
    (license license:expat)))
