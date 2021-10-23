(define-module (endgame packages swc)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-graphics)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; Enable unstable features rust-sourcemap #![feature(inner_deref)]
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

(define-public rust-testing-macros-0.2
  (package
    (name "rust-testing-macros")
    (version "0.2.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "testing_macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "079xa3mjijgrlbpmq0zkc904r1bm26nw2nzd5z2fm6kgbi37l8iq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-glob" ,rust-glob-0.3)
         ("rust-pmutil" ,rust-pmutil-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-relative-path" ,rust-relative-path-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "General purpose testing macros")
    (description "General purpose testing macros")
    (license (list license:asl2.0 license:expat))))

(define-public rust-testing-0.14
  (package
    (name "rust-testing")
    (version "0.14.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "testing" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0nzajbqivky9nk7071ms50646lkzg2x4yy555jckchi00h02s60w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ansi-term" ,rust-ansi-term-0.12)
         ("rust-difference" ,rust-difference-2)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-pretty-assertions" ,rust-pretty-assertions-0.7)
         ("rust-regex" ,rust-regex-1)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-testing-macros" ,rust-testing-macros-0.2)
         ("rust-tracing" ,rust-tracing-0.1)
         ("rust-tracing-subscriber" ,rust-tracing-subscriber-0.2))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Testing utilities for the swc project.")
    (description "Testing utilities for the swc project.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-mimalloc-rust-sys-1
  (package
    (name "rust-mimalloc-rust-sys")
    (version "1.7.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mimalloc-rust-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "144m1va3dmbr6c5nj1aqnnfrp0fc4yyqn10n25w7ksvsrhnz7xwn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1) ("rust-cty" ,rust-cty-0.2))))
    (home-page "")
    (synopsis "mimalloc_rust hand writted sys binding")
    (description "mimalloc_rust hand writted sys binding")
    (license license:expat)))

(define-public rust-mimalloc-rust-0.1
  (package
    (name "rust-mimalloc-rust")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mimalloc-rust" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06l2jya6va9j146lyd7rqsz3s0pasvx010dmi6dz8nav7k4xbz1g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cty" ,rust-cty-0.2)
         ("rust-mimalloc-rust-sys" ,rust-mimalloc-rust-sys-1))))
    (home-page "https://github.com/lemonhx/mimalloc-rust")
    (synopsis "the best binding for mimalloc in rust")
    (description "the best binding for mimalloc in rust")
    (license license:expat)))

(define-public rust-swc-node-base-0.4
  (package
    (name "rust-swc-node-base")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_node_base" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0j4njig2lp9palg18r0rksy67qj33adii41rig0585y6lbnw5mym"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-dashmap" ,rust-dashmap-4)
         ("rust-mimalloc-rust" ,rust-mimalloc-rust-0.1)
         ("rust-swc-common" ,rust-swc-common-0.13))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Speedy web compiler")
    (description "Speedy web compiler")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-dep-graph-0.42
  (package
    (name "rust-swc-ecma-dep-graph")
    (version "0.42.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_dep_graph" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ylpkmjzf208sdrvilxsb98b17ch4vzhpb1n71k28asdxklzs9wf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Dependency graph for the ecmascript")
    (description "Dependency graph for the ecmascript")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecmascript-0.75
  (package
    (name "rust-swc-ecmascript")
    (version "0.75.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecmascript" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0k5f7vw63csyq90nfja2y69r2ssgwcwlja0hcmgacmpzyf8nqw69"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-codegen" ,rust-swc-ecma-codegen-0.75)
         ("rust-swc-ecma-dep-graph" ,rust-swc-ecma-dep-graph-0.42)
         ("rust-swc-ecma-minifier" ,rust-swc-ecma-minifier-0.39)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-preset-env" ,rust-swc-ecma-preset-env-0.54)
         ("rust-swc-ecma-transforms" ,rust-swc-ecma-transforms-0.83)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Ecmascript")
    (description "Ecmascript")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-preset-env-0.54
  (package
    (name "rust-swc-ecma-preset-env")
    (version "0.54.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_preset_env" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "01lv2q447fkfb17fb46d3cwc2hs87fh0zk5czmkyydnmwvgpacj6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-dashmap" ,rust-dashmap-4)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-semver" ,rust-semver-0.9)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-st-map" ,rust-st-map-0.1)
         ("rust-string-enum" ,rust-string-enum-0.3)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-transforms" ,rust-swc-ecma-transforms-0.83)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40)
         ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "")
    (synopsis "preset-env for the swc")
    (description "preset-env for the swc")
    (license (list license:asl2.0 license:expat))))

(define-public rust-unicode-xid-0.2
  (package
    (name "rust-unicode-xid")
    (version "0.2.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-xid" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wrkgcw557v311dkdb6n2hrix9dm2qdsb1zpw7pn79l03zb85jwc"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/unicode-rs/unicode-xid")
    (synopsis
      "Determine whether characters have the XID_Start
or XID_Continue properties according to
Unicode Standard Annex #31.
")
    (description
      "Determine whether characters have the XID_Start
or XID_Continue properties according to
Unicode Standard Annex #31.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-swc-ecma-transforms-typescript-0.50
  (package
    (name "rust-swc-ecma-transforms-typescript")
    (version "0.50.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_transforms_typescript" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1iqd5wzb67l8kk0cj7qckw9pmh44a552g54r8nd2li3an5zfb6rz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-transforms-react"
          ,rust-swc-ecma-transforms-react-0.49)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "rust port of babel and closure compiler.")
    (description "rust port of babel and closure compiler.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-sha1-asm-0.5
  (package
    (name "rust-sha1-asm")
    (version "0.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sha1-asm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1b7ab7f4n87pqdmbl1a5jrc2axf27pvbndsz9qiwwgxw01qlygan"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t #:cargo-inputs (("rust-cc" ,rust-cc-1))))
    (home-page "https://github.com/RustCrypto/asm-hashes")
    (synopsis "Assembly implementation of SHA-1 compression function")
    (description "Assembly implementation of SHA-1 compression function")
    (license license:expat)))

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

(define-public rust-sha-1-0.9
  (package
    (name "rust-sha-1")
    (version "0.9.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sha-1" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19jibp8l9k5v4dnhj5kfhaczdfd997h22qz0hin6pw9wvc9ngkcr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-block-buffer" ,rust-block-buffer-0.9)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-cpufeatures" ,rust-cpufeatures-0.2)
         ("rust-digest" ,rust-digest-0.9)
         ("rust-opaque-debug" ,rust-opaque-debug-0.3)
         ("rust-sha1-asm" ,rust-sha1-asm-0.5))))
    (home-page "https://github.com/RustCrypto/hashes")
    (synopsis "SHA-1 hash function")
    (description "SHA-1 hash function")
    (license (list license:expat license:asl2.0))))

(define-public rust-swc-ecma-transforms-react-0.49
  (package
    (name "rust-swc-ecma-transforms-react")
    (version "0.49.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_transforms_react" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1nc6y7dw7z6drg7gq2nyb3lzmvg2qsgvql3vyycakqlcq3qrapgb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-base64" ,rust-base64-0.13)
         ("rust-dashmap" ,rust-dashmap-4)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-sha-1" ,rust-sha-1-0.9)
         ("rust-string-enum" ,rust-string-enum-0.3)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "rust port of babel and closure compiler.")
    (description "rust port of babel and closure compiler.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-transforms-proposal-0.47
  (package
    (name "rust-swc-ecma-transforms-proposal")
    (version "0.47.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_transforms_proposal" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xvs53haxzn9djsal6l5c1vwv0dfz8spxk1qk1lcxakvwp9836aw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-either" ,rust-either-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-loader" ,rust-swc-ecma-loader-0.21)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-transforms-classes"
          ,rust-swc-ecma-transforms-classes-0.24)
         ("rust-swc-ecma-transforms-macros"
          ,rust-swc-ecma-transforms-macros-0.2)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "rust port of babel and closure compiler.")
    (description "rust port of babel and closure compiler.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-transforms-module-0.47
  (package
    (name "rust-swc-ecma-transforms-module")
    (version "0.47.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_transforms_module" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "017nhbysy0zbm6r4c2jf5zm6955mxy256af59gi2d17nxlb33w2z"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-anyhow" ,rust-anyhow-1)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-inflector" ,rust-inflector-0.11)
         ("rust-pathdiff" ,rust-pathdiff-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-loader" ,rust-swc-ecma-loader-0.21)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "rust port of babel and closure compiler.")
    (description "rust port of babel and closure compiler.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-transforms-macros-0.2
  (package
    (name "rust-swc-ecma-transforms-macros")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_transforms_macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1g00m07nyfyc3iik0g2h1dqnc5d3zd78cciz9hbc48psc7d0ls7p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pmutil" ,rust-pmutil-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-swc-macros-common" ,rust-swc-macros-common-0.3)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Macros for swc_ecma_transforms.")
    (description "Macros for swc_ecma_transforms.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-transforms-classes-0.24
  (package
    (name "rust-swc-ecma-transforms-classes")
    (version "0.24.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_transforms_classes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ld9gqvy35m00spp0pxwc27r7qla2la6pg90z8h85whc2fivgl1m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Helper for transforms for the swc project")
    (description "Helper for transforms for the swc project")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-transforms-compat-0.43
  (package
    (name "rust-swc-ecma-transforms-compat")
    (version "0.43.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_transforms_compat" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03bf4zjshygysn97aavzai67m91c5dgnngj5khsi1hs957hzddlz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-arrayvec" ,rust-arrayvec-0.5)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-is-macro" ,rust-is-macro-0.1)
         ("rust-num-bigint" ,rust-num-bigint-0.2)
         ("rust-ordered-float" ,rust-ordered-float-2)
         ("rust-serde" ,rust-serde-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-transforms-classes"
          ,rust-swc-ecma-transforms-classes-0.24)
         ("rust-swc-ecma-transforms-macros"
          ,rust-swc-ecma-transforms-macros-0.2)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "rust port of babel and closure compiler.")
    (description "rust port of babel and closure compiler.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-transforms-0.83
  (package
    (name "rust-swc-ecma-transforms")
    (version "0.83.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_transforms" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10kb8msdgan2wh407g09jicjzmisqplr9swpwcn6qafswba6cx8f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-transforms-compat"
          ,rust-swc-ecma-transforms-compat-0.43)
         ("rust-swc-ecma-transforms-module"
          ,rust-swc-ecma-transforms-module-0.47)
         ("rust-swc-ecma-transforms-optimization"
          ,rust-swc-ecma-transforms-optimization-0.53)
         ("rust-swc-ecma-transforms-proposal"
          ,rust-swc-ecma-transforms-proposal-0.47)
         ("rust-swc-ecma-transforms-react"
          ,rust-swc-ecma-transforms-react-0.49)
         ("rust-swc-ecma-transforms-typescript"
          ,rust-swc-ecma-transforms-typescript-0.50)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40)
         ("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "rust port of babel and closure compiler.")
    (description "rust port of babel and closure compiler.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-serde-regex-1
  (package
    (name "rust-serde-regex")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_regex" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pxsnxb8c198szghk1hvzvhva36w2q5zs70hqkmdf5d89qd6y4x8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-regex" ,rust-regex-1) ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/tailhook/serde-regex")
    (synopsis "    A serde wrapper that (de)serializes regex as strings
")
    (description "    A serde wrapper that (de)serializes regex as strings
")
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

(define-public rust-swc-ecma-minifier-0.39
  (package
    (name "rust-swc-ecma-minifier")
    (version "0.39.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_minifier" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14kgyqnd9m7yqw5vz8qbannpjvy56djswnkirskd3qclvjhyxrc8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-pretty-assertions" ,rust-pretty-assertions-0.6)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-retain-mut" ,rust-retain-mut-0.1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-serde-regex" ,rust-serde-regex-1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-codegen" ,rust-swc-ecma-codegen-0.75)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-transforms" ,rust-swc-ecma-transforms-0.83)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40)
         ("rust-tracing" ,rust-tracing-0.1)
         ("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "EcmaScript code minifier.")
    (description "EcmaScript code minifier.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-ext-transforms-0.32
  (package
    (name "rust-swc-ecma-ext-transforms")
    (version "0.32.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_ext_transforms" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0cr7hzmxjwj8241bp40aa3qqp15ssbd804f5lbs2z81b0gqysb5a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-phf" ,rust-phf-0.8)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40))))
    (home-page "")
    (synopsis "Extensions for @swc/core (nodejs)")
    (description "Extensions for @swc/core (nodejs)")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-transforms-optimization-0.53
  (package
    (name "rust-swc-ecma-transforms-optimization")
    (version "0.53.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_transforms_optimization" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0rvzvqv9s717wdcwligh6nfkwsldyb1m1y1lzcwncag7xbrvax1v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-dashmap" ,rust-dashmap-4)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-retain-mut" ,rust-retain-mut-0.1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40)
         ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "rust port of babel and closure compiler.")
    (description "rust port of babel and closure compiler.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-rayon-core-1
  (package
    (name "rust-rayon-core")
    (version "1.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rayon-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "13kdcnqp2p1a5a3amamfjpnm7ay463vq4dfxy4rrh9shr3i210fp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
         ("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8)
         ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-num-cpus" ,rust-num-cpus-1))))
    (home-page "https://github.com/rayon-rs/rayon")
    (synopsis "Core APIs for Rayon")
    (description "Core APIs for Rayon")
    (license (list license:asl2.0 license:expat))))

(define-public rust-rayon-1
  (package
    (name "rust-rayon")
    (version "1.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rayon" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "143dl2453bazgk7rwjrickmyqd0ks3q69nfz8axcins19n0clsn0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-autocfg" ,rust-autocfg-1)
         ("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8)
         ("rust-either" ,rust-either-1)
         ("rust-rayon-core" ,rust-rayon-core-1))))
    (home-page "https://github.com/rayon-rs/rayon")
    (synopsis "Simple work-stealing parallelism for Rust")
    (description "Simple work-stealing parallelism for Rust")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-utils-0.47
  (package
    (name "rust-swc-ecma-utils")
    (version "0.47.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_utils" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17vw3hzry97ri6a4y0w287799bani8ndzlkqarigm5fdfvs2gr73"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-once-cell" ,rust-once-cell-1)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-scoped-tls" ,rust-scoped-tls-1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40)
         ("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Utilities for swc ecmascript ast nodes")
    (description "Utilities for swc ecmascript ast nodes")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-transforms-base-0.38
  (package
    (name "rust-swc-ecma-transforms-base")
    (version "0.38.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_transforms_base" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03m3mgkp4wayajcmg2nhlm0n5djzb828q8pk9icfpap52nj3faff"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-once-cell" ,rust-once-cell-1)
         ("rust-phf" ,rust-phf-0.8)
         ("rust-scoped-tls" ,rust-scoped-tls-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "rust port of babel and closure compiler.")
    (description "rust port of babel and closure compiler.")
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

(define-public rust-normpath-0.2
  (package
    (name "rust-normpath")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "normpath" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0y354v327vbcxap7ag88j81y4zifzhnjgxvn7l1s2d9cjb4si79a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/dylni/normpath")
    (synopsis "More reliable path manipulation
")
    (description "More reliable path manipulation
")
    (license (list license:expat license:asl2.0))))

(define-public rust-anyhow-1
  (package
    (name "rust-anyhow")
    (version "1.0.44")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "anyhow" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ha2lam408ni6vb5zc64lirwz3f60a5qzmzx54r5q79fhs7llq31"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3))))
    (home-page "https://github.com/dtolnay/anyhow")
    (synopsis "Flexible concrete Error type built on std::error::Error")
    (description "Flexible concrete Error type built on std::error::Error")
    (license (list license:expat license:asl2.0))))

(define-public rust-swc-ecma-loader-0.21
  (package
    (name "rust-swc-ecma-loader")
    (version "0.21.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_loader" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1b47qbdj0ddd1ivc3sgl3gs5l2q6x2vgrqavmcsxm0h17vlpj74a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-anyhow" ,rust-anyhow-1)
         ("rust-dashmap" ,rust-dashmap-4)
         ("rust-lru" ,rust-lru-0.6)
         ("rust-normpath" ,rust-normpath-0.2)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-path-clean" ,rust-path-clean-0.1)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40)
         ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "General ecmascript loader used for transforms")
    (description "General ecmascript loader used for transforms")
    (license (list license:asl2.0 license:expat))))

(define-public rust-typed-arena-2
  (package
    (name "rust-typed-arena")
    (version "2.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "typed-arena" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bnhphrksp9krxhsfhfimrxvkbah2pa6rf9ygmpw5lalbm6wi186"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/SimonSapin/rust-typed-arena")
    (synopsis "The arena, a fast but limited type of allocator")
    (description "The arena, a fast but limited type of allocator")
    (license license:expat)))

(define-public rust-swc-ecma-visit-0.40
  (package
    (name "rust-swc-ecma-visit")
    (version "0.40.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_visit" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0c19mv4svwv631q4gv7fz60imk6a4zzr7394ydykv0b101haf91c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-num-bigint" ,rust-num-bigint-0.2)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-visit" ,rust-swc-visit-0.2))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Visitors for swc ecmascript nodes which works on stable rustc")
    (description
      "Visitors for swc ecmascript nodes which works on stable rustc")
    (license (list license:asl2.0 license:expat))))

(define-public rust-enum-kind-0.2
  (package
    (name "rust-enum-kind")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "enum_kind" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "16gd5cb29lgv3n4nr5fkj7qg9f07h91alpkcjbq1xs2a6pd41fbq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pmutil" ,rust-pmutil-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-swc-macros-common" ,rust-swc-macros-common-0.3)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Easily manage values related to enum.")
    (description "Easily manage values related to enum.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-parser-0.73
  (package
    (name "rust-swc-ecma-parser")
    (version "0.73.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_parser" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ivcycm7lg7fn7bvy95drrpv42151qx1h923xki7i5icis60j55v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-either" ,rust-either-1)
         ("rust-enum-kind" ,rust-enum-kind-0.2)
         ("rust-lexical" ,rust-lexical-5)
         ("rust-num-bigint" ,rust-num-bigint-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40)
         ("rust-tracing" ,rust-tracing-0.1)
         ("rust-typed-arena" ,rust-typed-arena-2)
         ("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Feature-complete es2019 parser.")
    (description "Feature-complete es2019 parser.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-codegen-macros-0.6
  (package
    (name "rust-swc-ecma-codegen-macros")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_codegen_macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "098fiynpyfhjwwq7aa5i2lffm1km3byq6f62nfrwv0cjfdn85gxx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pmutil" ,rust-pmutil-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-swc-macros-common" ,rust-swc-macros-common-0.3)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Macros for swc_ecma_codegen.")
    (description "Macros for swc_ecma_codegen.")
    (license (list license:asl2.0 license:expat))))

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

(define-public rust-swc-ecma-codegen-0.75
  (package
    (name "rust-swc-ecma-codegen")
    (version "0.75.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_codegen" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0grb31ibl8i7355yxn1sx7sfxk9kb61f0kdlvxza2pdpd0w7a7jz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-num-bigint" ,rust-num-bigint-0.2)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-sourcemap" ,rust-sourcemap-6)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-codegen-macros" ,rust-swc-ecma-codegen-macros-0.6)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Ecmascript code generator for the swc project.")
    (description "Ecmascript code generator for the swc project.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-string-enum-0.3
  (package
    (name "rust-string-enum")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "string_enum" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07w7n805fpqv0x0z531pws7hvhwlm9208yw2pzb1ypwy3s4cr17m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pmutil" ,rust-pmutil-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-swc-macros-common" ,rust-swc-macros-common-0.3)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "String based enum.")
    (description "String based enum.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-ecma-ast-0.54
  (package
    (name "rust-swc-ecma-ast")
    (version "0.54.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_ecma_ast" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03y4f3v7jsmsg232kmavgqk0ilmhjhizg7q6a3g24a160dk4mqpa"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arbitrary" ,rust-arbitrary-1)
         ("rust-is-macro" ,rust-is-macro-0.1)
         ("rust-num-bigint" ,rust-num-bigint-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-string-enum" ,rust-string-enum-0.3)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Ecmascript ast.")
    (description "Ecmascript ast.")
    (license (list license:asl2.0 license:expat))))

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

(define-public rust-swc-visit-macros-0.2
  (package
    (name "rust-swc-visit-macros")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_visit_macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w21frfma1rz111mf9yvj6wjz1kskkkm1rp8cq0hvwbrxrgq5cp3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-inflector" ,rust-inflector-0.11)
         ("rust-pmutil" ,rust-pmutil-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-swc-macros-common" ,rust-swc-macros-common-0.3)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Visitor generator for stable rustc")
    (description "Visitor generator for stable rustc")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-visit-0.2
  (package
    (name "rust-swc-visit")
    (version "0.2.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_visit" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1h1jj4qb9il49p6dw98b6ylsk4mmaanz3n5s9lb1hlaqnjhcl8x4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-either" ,rust-either-1)
         ("rust-swc-visit-macros" ,rust-swc-visit-macros-0.2))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Visitor generator for stable rustc")
    (description "Visitor generator for stable rustc")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-eq-ignore-macros-0.1
  (package
    (name "rust-swc-eq-ignore-macros")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_eq_ignore_macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0plgi4sw7jykf8jzd9bxw6ljzm76csmgm1d6q7kkindf5q5213wc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pmutil" ,rust-pmutil-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Macros for EqIgnoreSpan and TypeEq.")
    (description "Macros for EqIgnoreSpan and TypeEq.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-from-variant-0.1
  (package
    (name "rust-from-variant")
    (version "0.1.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "from_variant" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gf6gh6b9b01f7j0gwv3km1k6lily3banx47izlpniya4x866l89"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pmutil" ,rust-pmutil-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-swc-macros-common" ,rust-swc-macros-common-0.3)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Automatically derive From impls for enums")
    (description "Automatically derive From impls for enums")
    (license (list license:asl2.0 license:expat))))

(define-public rust-syn-1
  (package
    (name "rust-syn")
    (version "1.0.65")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syn" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0qyn28h2bm0q7ayrz2bv3y6yhm746xdzgybfjl9adi91q84dg8gk"))))
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

(define-public rust-swc-macros-common-0.3
  (package
    (name "rust-swc-macros-common")
    (version "0.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_macros_common" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0y4syp526i14jcwy3gwlbl707xlnlb9hzjb2zrql06js1y9jxv88"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pmutil" ,rust-pmutil-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Common utilities for swc macros.")
    (description "Common utilities for swc macros.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-ast-node-0.7
  (package
    (name "rust-ast-node")
    (version "0.7.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ast_node" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10ckab3sfccpal8l7bc9ympzpci9mxmly54amknq0c1gn1258vg9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-darling" ,rust-darling-0.10)
         ("rust-pmutil" ,rust-pmutil-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-swc-macros-common" ,rust-swc-macros-common-0.3)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Macros for ast nodes.")
    (description "Macros for ast nodes.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-swc-common-0.13
  (package
    (name "rust-swc-common")
    (version "0.13.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_common" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wxp68npcm1vrrikskjy74nklrx6mawg1v9vqa38s5vywm497ci6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-arbitrary" ,rust-arbitrary-1)
         ("rust-ast-node" ,rust-ast-node-0.7)
         ("rust-atty" ,rust-atty-0.2)
         ("rust-cfg-if" ,rust-cfg-if-0.1)
         ("rust-either" ,rust-either-1)
         ("rust-from-variant" ,rust-from-variant-0.1)
         ("rust-num-bigint" ,rust-num-bigint-0.2)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-owning-ref" ,rust-owning-ref-0.4)
         ("rust-parking-lot" ,rust-parking-lot-0.7)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-scoped-tls" ,rust-scoped-tls-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-sourcemap" ,rust-sourcemap-6)
         ("rust-string-cache" ,rust-string-cache-0.8)
         ("rust-swc-eq-ignore-macros" ,rust-swc-eq-ignore-macros-0.1)
         ("rust-swc-visit" ,rust-swc-visit-0.2)
         ("rust-termcolor" ,rust-termcolor-1)
         ("rust-tracing" ,rust-tracing-0.1)
         ("rust-unicode-width" ,rust-unicode-width-0.1)
         ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Common utilities for the swc project.")
    (description "Common utilities for the swc project.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-retain-mut-0.1
  (package
    (name "rust-retain-mut")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "retain_mut" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jd8hc0vrhcj3xn114k0nlbjqbrhl7m1snbk270rcjq33lj9d0j4"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/upsuper/retain_mut")
    (synopsis
      "Provide retain_mut method that has the same functionality as retain but gives mutable borrow to the predicate.")
    (description
      "Provide retain_mut method that has the same functionality as retain but gives mutable borrow to the predicate.")
    (license license:expat)))

(define-public rust-swc-bundler-0.70
  (package
    (name "rust-swc-bundler")
    (version "0.70.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_bundler" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06dwcgx4pp1h6k32xpi12r69cxn3n7h3n1hjc8632ma8igzwjxaq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-anyhow" ,rust-anyhow-1)
         ("rust-crc" ,rust-crc-1)
         ("rust-dashmap" ,rust-dashmap-4)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-is-macro" ,rust-is-macro-0.1)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-petgraph" ,rust-petgraph-0.5)
         ("rust-radix-fmt" ,rust-radix-fmt-1)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-relative-path" ,rust-relative-path-1)
         ("rust-retain-mut" ,rust-retain-mut-0.1)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-codegen" ,rust-swc-ecma-codegen-0.75)
         ("rust-swc-ecma-loader" ,rust-swc-ecma-loader-0.21)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-transforms-optimization"
          ,rust-swc-ecma-transforms-optimization-0.53)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40)
         ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Very fast ecmascript bundler")
    (description "Very fast ecmascript bundler")
    (license (list license:asl2.0 license:expat))))

(define-public rust-string-cache-0.8
  (package
    (name "rust-string-cache")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "string_cache" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1in0va6rj884r795swff18jln4q2aqiyf6p77k93fz96nqwhygwj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-new-debug-unreachable" ,rust-new-debug-unreachable-1)
         ("rust-parking-lot" ,rust-parking-lot-0.11)
         ("rust-phf-shared" ,rust-phf-shared-0.8)
         ("rust-precomputed-hash" ,rust-precomputed-hash-0.1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/servo/string-cache")
    (synopsis
      "A string interning library for Rust, developed as part of the Servo project.")
    (description
      "This package provides a string interning library for Rust, developed as part of the Servo project.")
    (license (list license:expat license:asl2.0))))

(define-public rust-swc-atoms-0.2
  (package
    (name "rust-swc-atoms")
    (version "0.2.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc_atoms" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0zjwx4kp80azzf9cw4wrdyzgbzl4ydr0ig5grfsng6bc8gzy083a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-string-cache" ,rust-string-cache-0.8)
         ("rust-string-cache-codegen" ,rust-string-cache-codegen-0.5))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Atoms for the swc project.")
    (description "Atoms for the swc project.")
    (license (list license:asl2.0 license:expat))))

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

(define-public swc
  (package
    (name "swc")
    (version "0.69.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "swc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xf86cysb30aqh8b0jbrcir9kpj5byqfidfc5w04mlxvriwryrfa"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-anyhow" ,rust-anyhow-1)
         ("rust-base64" ,rust-base64-0.13)
         ("rust-dashmap" ,rust-dashmap-4)
         ("rust-either" ,rust-either-1)
         ("rust-lru" ,rust-lru-0.6)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-pathdiff" ,rust-pathdiff-0.2)
         ("rust-regex" ,rust-regex-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-sourcemap" ,rust-sourcemap-6)
         ("rust-swc-atoms" ,rust-swc-atoms-0.2)
         ("rust-swc-bundler" ,rust-swc-bundler-0.70)
         ("rust-swc-common" ,rust-swc-common-0.13)
         ("rust-swc-ecma-ast" ,rust-swc-ecma-ast-0.54)
         ("rust-swc-ecma-codegen" ,rust-swc-ecma-codegen-0.75)
         ("rust-swc-ecma-ext-transforms" ,rust-swc-ecma-ext-transforms-0.32)
         ("rust-swc-ecma-loader" ,rust-swc-ecma-loader-0.21)
         ("rust-swc-ecma-minifier" ,rust-swc-ecma-minifier-0.39)
         ("rust-swc-ecma-parser" ,rust-swc-ecma-parser-0.73)
         ("rust-swc-ecma-preset-env" ,rust-swc-ecma-preset-env-0.54)
         ("rust-swc-ecma-transforms" ,rust-swc-ecma-transforms-0.83)
         ("rust-swc-ecma-transforms-base" ,rust-swc-ecma-transforms-base-0.38)
         ("rust-swc-ecma-utils" ,rust-swc-ecma-utils-0.47)
         ("rust-swc-ecma-visit" ,rust-swc-ecma-visit-0.40)
         ("rust-swc-ecmascript" ,rust-swc-ecmascript-0.75)
         ("rust-swc-visit" ,rust-swc-visit-0.2)
         ("rust-tracing" ,rust-tracing-0.1))
        #:cargo-development-inputs
        (("rust-rayon" ,rust-rayon-1)
         ("rust-swc-node-base" ,rust-swc-node-base-0.4)
         ("rust-testing" ,rust-testing-0.14)
         ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://github.com/swc-project/swc.git")
    (synopsis "Speedy web compiler")
    (description "Speedy web compiler")
    (license (list license:asl2.0 license:expat))))
