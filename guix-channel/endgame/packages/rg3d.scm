(define-module (endgame packages rg3d)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-tbc-0.3
  (package
    (name "rust-tbc")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tbc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1x9vsva4dk3ga1a7yjrmpzyq0432xaklxg31sqr0jlqkriz8122l"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/mrDIMAS/tbc")
    (synopsis "Texture Block Compression (BCn)")
    (description "Texture Block Compression (BCn)")
    (license license:expat)))

(define-public rust-libc-0.2
  (package
    (name "rust-libc")
    (version "0.2.103")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xpd65rnpdniyj565zvyn9pqr29vsrah1vr1yda76qksl5ap53yx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/rust-lang/libc")
    (synopsis "Raw FFI bindings to platform libraries like libc.
")
    (description "Raw FFI bindings to platform libraries like libc.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-sysinfo-0.20
  (package
    (name "rust-sysinfo")
    (version "0.20.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sysinfo" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vba5jrbk871c7yymbbin1mv9vm6iv4wj3r1jlgybvk1z814mzzz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-core-foundation-sys" ,rust-core-foundation-sys-0.8)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-ntapi" ,rust-ntapi-0.3)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/GuillaumeGomez/sysinfo")
    (synopsis
      "Library to get system information such as processes, processors, disks, components and networks")
    (description
      "Library to get system information such as processes, processors, disks, components and networks")
    (license license:expat)))

(define-public rust-ttf-parser-0.12
  (package
    (name "rust-ttf-parser")
    (version "0.12.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ttf-parser" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1rkj90w4k21y88i69rlwb8pyfvv5lnb7x2b8yvdan21gha5gbqks"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/RazrFalcon/ttf-parser")
    (synopsis "A high-level, safe, zero-allocation TrueType font parser.")
    (description
      "This package provides a high-level, safe, zero-allocation TrueType font parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-fontdue-0.5
  (package
    (name "rust-fontdue")
    (version "0.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fontdue" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07asb6bf2krglf46147mbq2vhlwqkz5ab9ganx8sqavhy7zi4my7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-freetype-rs" ,rust-freetype-rs-0.26)
         ("rust-hashbrown" ,rust-hashbrown-0.9)
         ("rust-ttf-parser" ,rust-ttf-parser-0.12))))
    (home-page "https://github.com/mooman219/fontdue")
    (synopsis "A simple no_std font parser and rasterizer.")
    (description
      "This package provides a simple no_std font parser and rasterizer.")
    (license license:expat)))

(define-public rust-rg3d-ui-0.14
  (package
    (name "rust-rg3d-ui")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rg3d-ui" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mni9i2hf8ax9d1s4azgx22sxgw53j7ffpy96yi0h18rn23lxlg8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-copypasta" ,rust-copypasta-0.7)
         ("rust-fontdue" ,rust-fontdue-0.5)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-notify" ,rust-notify-4)
         ("rust-rg3d-core" ,rust-rg3d-core-0.18)
         ("rust-sysinfo" ,rust-sysinfo-0.20))))
    (home-page "https://github.com/mrDIMAS/rg3d")
    (synopsis "Extendable UI library")
    (description "Extendable UI library")
    (license license:expat)))

(define-public rust-ogg-0.8
  (package
    (name "rust-ogg")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ogg" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vjxmqcv9252aj8byy70iy2krqfjknfcxg11lcyikj11pzlb8lb9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-byteorder" ,rust-byteorder-1)
         ("rust-bytes" ,rust-bytes-0.4)
         ("rust-futures" ,rust-futures-0.1)
         ("rust-tokio-io" ,rust-tokio-io-0.1))))
    (home-page "https://github.com/RustAudio/ogg")
    (synopsis "Ogg container decoder and encoder written in pure Rust")
    (description "Ogg container decoder and encoder written in pure Rust")
    (license license:bsd-3)))

(define-public rust-lewton-0.10
  (package
    (name "rust-lewton")
    (version "0.10.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lewton" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0c60fn004awg5c3cvx82d6na2pirf0qdz9w3b93mbcdakbglhyvp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-byteorder" ,rust-byteorder-1)
         ("rust-futures" ,rust-futures-0.1)
         ("rust-ogg" ,rust-ogg-0.8)
         ("rust-tinyvec" ,rust-tinyvec-1)
         ("rust-tokio-io" ,rust-tokio-io-0.1))))
    (home-page "https://github.com/RustAudio/lewton")
    (synopsis "Pure Rust vorbis decoder")
    (description "Pure Rust vorbis decoder")
    (license (list license:expat license:asl2.0))))

(define-public rust-transpose-0.2
  (package
    (name "rust-transpose")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "transpose" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17z34pdylj8mh2nbiai6cmrfrkah0mlgs9z2mr1ymdlqm80ckycm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-num-integer" ,rust-num-integer-0.1)
         ("rust-strength-reduce" ,rust-strength-reduce-0.2))))
    (home-page "http://github.com/ejmahler/transpose")
    (synopsis "Utility for transposing multi-dimensional data")
    (description "Utility for transposing multi-dimensional data")
    (license (list license:expat license:asl2.0))))

(define-public rust-strength-reduce-0.2
  (package
    (name "rust-strength-reduce")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strength_reduce" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0m12phq654mfxpmh2h5akqkag5ha6nlhjc2bp9jwarr5r1qjzzx3"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "http://github.com/ejmahler/strength_reduce")
    (synopsis "Faster integer division and modulus operations")
    (description "Faster integer division and modulus operations")
    (license (list license:expat license:asl2.0))))

(define-public rust-primal-check-0.3
  (package
    (name "rust-primal-check")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "primal-check" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07aihxa8pqhxi1738lw76z7vrqc3wj1kvqjl8nacm8f1fbp9qh81"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-num-integer" ,rust-num-integer-0.1))))
    (home-page "https://github.com/huonw/primal")
    (synopsis "Fast standalone primality testing.
")
    (description "Fast standalone primality testing.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-rustfft-6
  (package
    (name "rust-rustfft")
    (version "6.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rustfft" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hr5c0f9qf7y3993p1ynkgw9z11lfk59pwzmb6d648bmqpjqkl5i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-num-complex" ,rust-num-complex-0.4)
         ("rust-num-integer" ,rust-num-integer-0.1)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-primal-check" ,rust-primal-check-0.3)
         ("rust-strength-reduce" ,rust-strength-reduce-0.2)
         ("rust-transpose" ,rust-transpose-0.2))))
    (home-page "https://github.com/ejmahler/RustFFT")
    (synopsis "High-performance FFT library written in pure Rust.")
    (description "High-performance FFT library written in pure Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-realfft-2
  (package
    (name "rust-realfft")
    (version "2.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "realfft" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hi3f6g3pw0is7r6rxxb0fbnaizd7ydbagzjc13n9hqxyf3mqsfp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-rustfft" ,rust-rustfft-6))))
    (home-page "https://github.com/HEnquist/realfft")
    (synopsis "Real-to-complex FFT and complex-to-real iFFT for Rust")
    (description "Real-to-complex FFT and complex-to-real iFFT for Rust")
    (license license:expat)))

(define-public rust-rubato-0.8
  (package
    (name "rust-rubato")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rubato" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0j61kv5z3dygkkwn34a2bmpbchvzhrp383w55ljzlqpcpwjghbdk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-log" ,rust-log-0.4)
         ("rust-num-complex" ,rust-num-complex-0.4)
         ("rust-num-integer" ,rust-num-integer-0.1)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-realfft" ,rust-realfft-2))))
    (home-page "https://github.com/HEnquist/rubato")
    (synopsis "Asynchronous resampling library intended for audio data")
    (description "Asynchronous resampling library intended for audio data")
    (license license:expat)))

(define-public rust-hrtf-0.7
  (package
    (name "rust-hrtf")
    (version "0.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hrtf" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1nlmpqh93bvgpxgdalg289kdbbscfsrpb2gi77j6xm7x2wc0i2yr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-byteorder" ,rust-byteorder-1)
         ("rust-rubato" ,rust-rubato-0.8)
         ("rust-rustfft" ,rust-rustfft-6))))
    (home-page "https://github.com/mrDIMAS/hrtf")
    (synopsis "HRTF (Head-Related Transfer Function) audio signal processor")
    (description
      "HRTF (Head-Related Transfer Function) audio signal processor")
    (license license:expat)))

(define-public rust-hound-3
  (package
    (name "rust-hound")
    (version "3.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hound" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0jbm25p2nc8758dnfjan1yk7hz2i85y89nrbai14zzxfrsr4n5la"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/ruuda/hound")
    (synopsis "A wav encoding and decoding library")
    (description "This package provides a wav encoding and decoding library")
    (license license:asl2.0)))

(define-public rust-bindgen-0.56
  (package
    (name "rust-bindgen")
    (version "0.56.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bindgen" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fajmgk2064ca1z9iq1jjkji63qwwz38z3d67kv6xdy0xgdpk8rd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cexpr" ,rust-cexpr-0.4)
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
         ("rust-shlex" ,rust-shlex-0.1)
         ("rust-which" ,rust-which-3))))
    (home-page "https://rust-lang.github.io/rust-bindgen/")
    (synopsis
      "Automatically generates Rust FFI bindings to C and C++ libraries.")
    (description
      "Automatically generates Rust FFI bindings to C and C++ libraries.")
    (license license:bsd-3)))

(define-public rust-coreaudio-sys-0.2
  (package
    (name "rust-coreaudio-sys")
    (version "0.2.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "coreaudio-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yiipfq8gni2fkh62kzzprqgnfb77046d392p9mb82bapr3k6zib"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.56))))
    (home-page "https://github.com/RustAudio/coreaudio-sys")
    (synopsis
      "Bindings for Apple's CoreAudio frameworks generated via rust-bindgen")
    (description
      "Bindings for Apple's CoreAudio frameworks generated via rust-bindgen")
    (license license:expat)))

(define-public rust-alsa-sys-0.3
  (package
    (name "rust-alsa-sys")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "alsa-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "09qmmnpmlcj23zcgx2xsi4phcgm5i02g9xaf801y7i067mkfx3yv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/diwic/alsa-sys")
    (synopsis
      "FFI bindings for the ALSA project (Advanced Linux Sound Architecture)")
    (description
      "FFI bindings for the ALSA project (Advanced Linux Sound Architecture)")
    (license license:expat)))

(define-public rust-rg3d-sound-0.25
  (package
    (name "rust-rg3d-sound")
    (version "0.25.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rg3d-sound" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1s3g5jbwy4lda62v1849dir0xbvhcxs0m3s1r5491g52s2dj0gq0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-alsa-sys" ,rust-alsa-sys-0.3)
         ("rust-core-foundation-sys" ,rust-core-foundation-sys-0.8)
         ("rust-coreaudio-sys" ,rust-coreaudio-sys-0.2)
         ("rust-hound" ,rust-hound-3)
         ("rust-hrtf" ,rust-hrtf-0.7)
         ("rust-lewton" ,rust-lewton-0.10)
         ("rust-rg3d-core" ,rust-rg3d-core-0.18)
         ("rust-rg3d-resource" ,rust-rg3d-resource-0.2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/mrDIMAS/rg3d")
    (synopsis "Sound library for games.")
    (description "Sound library for games.")
    (license license:expat)))

(define-public rust-rg3d-resource-0.2
  (package
    (name "rust-rg3d-resource")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rg3d-resource" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0dxn5cfdvvaam8845cx4qrmsdzg6r762bwyhamma5gg9h16f1ais"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rg3d-core" ,rust-rg3d-core-0.18))))
    (home-page "https://github.com/mrDIMAS/rg3d")
    (synopsis "Asset management crate for rg3d engine")
    (description "Asset management crate for rg3d engine")
    (license license:expat)))

(define-public rust-web-sys-0.3
  (package
    (name "rust-web-sys")
    (version "0.3.55")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "web-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yz9dym9y9f9s1f99q5j5kl2dfc5kn2jpjfdnnkfmnar3igi1srq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-js-sys" ,rust-js-sys-0.3)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/web-sys/index.html")
    (synopsis
      "Bindings for all Web APIs, a procedurally generated crate from WebIDL
")
    (description
      "Bindings for all Web APIs, a procedurally generated crate from WebIDL
")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-futures-0.4
  (package
    (name "rust-wasm-bindgen-futures")
    (version "0.4.28")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-futures" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fax7x0iysa64iqmzq0lri8llw8v0f8acz1iq6b4qahzrcipb3cf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-js-sys" ,rust-js-sys-0.3)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "Bridging the gap between Rust Futures and JavaScript Promises")
    (description
      "Bridging the gap between Rust Futures and JavaScript Promises")
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
    (version "1.0.29")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gfj25ksq90ifcssfnwv46v856sxd885wmm9bhrj1ays9xfi1xdr"))))
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

(define-public rust-darling-macro-0.13
  (package
    (name "rust-darling-macro")
    (version "0.13.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "darling_macro" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1k0mky8zrz9ayzmjw2yp6l7jbh4ysimrq24zsgkfa3qk8zqvzrxd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-darling-core" ,rust-darling-core-0.13)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/TedDriggs/darling")
    (synopsis
      "Internal support for a proc-macro library for reading attributes into structs when
implementing custom derives. Use https://crates.io/crates/darling in your code.
")
    (description
      "Internal support for a proc-macro library for reading attributes into structs when
implementing custom derives.  Use https://crates.io/crates/darling in your code.
")
    (license license:expat)))

(define-public rust-fnv-1
  (package
    (name "rust-fnv")
    (version "1.0.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fnv" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hc2mcqha06aibcaza94vbi81j6pr9a1bbxrxjfhc91zin8yr7iz"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/servo/rust-fnv")
    (synopsis "Fowlerâ\x80\x93Nollâ\x80\x93Vo hash function")
    (description "Fowlerâ\x80\x93Nollâ\x80\x93Vo hash function")
    (license (list license:asl2.0 license:expat))))

(define-public rust-darling-core-0.13
  (package
    (name "rust-darling-core")
    (version "0.13.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "darling_core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qv6cjcrl2sb9502f0v8pa41ag66wmshzs7cc1zjs31dnvpxhd1c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-fnv" ,rust-fnv-1)
         ("rust-ident-case" ,rust-ident-case-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-strsim" ,rust-strsim-0.10)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/TedDriggs/darling")
    (synopsis
      "Helper crate for proc-macro library for reading attributes into structs when
implementing custom derives. Use https://crates.io/crates/darling in your code.
")
    (description
      "Helper crate for proc-macro library for reading attributes into structs when
implementing custom derives.  Use https://crates.io/crates/darling in your code.
")
    (license license:expat)))

(define-public rust-darling-0.13
  (package
    (name "rust-darling")
    (version "0.13.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "darling" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04mvk6yvvw9rb8zwyi680r5n5l9xcana3bjdkirqw7gi5bnhsz3m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-darling-core" ,rust-darling-core-0.13)
         ("rust-darling-macro" ,rust-darling-macro-0.13))))
    (home-page "https://github.com/TedDriggs/darling")
    (synopsis
      "A proc-macro library for reading attributes into structs when
implementing custom derives.
")
    (description
      "This package provides a proc-macro library for reading attributes into structs when
implementing custom derives.
")
    (license license:expat)))

(define-public rust-convert-case-0.4
  (package
    (name "rust-convert-case")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "convert_case" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03jaf1wrsyqzcaah9jf8l1iznvdw5mlsca2qghhzr9w27sddaib2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-rand" ,rust-rand-0.7))))
    (home-page "https://github.com/rutrum/convert-case")
    (synopsis "Convert strings into any case")
    (description "Convert strings into any case")
    (license license:expat)))

(define-public rust-rg3d-core-derive-0.13
  (package
    (name "rust-rg3d-core-derive")
    (version "0.13.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rg3d-core-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1anj889311x3vzian81d0g3bl6b9yfjv2llivlvapxb65j695pra"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-convert-case" ,rust-convert-case-0.4)
         ("rust-darling" ,rust-darling-0.13)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/mrDIMAS/rg3d")
    (synopsis "Proc-macro for Visit trait")
    (description "Proc-macro for Visit trait")
    (license license:expat)))

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

(define-public rust-wasm-bindgen-shared-0.2
  (package
    (name "rust-wasm-bindgen-shared")
    (version "0.2.78")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-shared" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1k27dc57h0brx5ish4dwmzibyif7m9lfagvph1a7s0ygi4kj6dq2"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
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
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0yw3ma0ahd1cz3afxpqcgwy9rwwgmz2g8pn8nas7c95sky7vy5x3"))))
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
         ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "Backend code generation of the wasm-bindgen tool
")
    (description "Backend code generation of the wasm-bindgen tool
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
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ay5qmbqh8hbsgf2dqkg7ia13srx3c1d6p2qvjmzhdaqlbpf00vq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1)
         ("rust-wasm-bindgen-backend" ,rust-wasm-bindgen-backend-0.2)
         ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
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
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ydcppds5qbj77c7kdinkg9qidcf7ahvwqvnb3v8nllmqkklcqfm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-quote" ,rust-quote-1)
         ("rust-wasm-bindgen-macro-support"
          ,rust-wasm-bindgen-macro-support-0.2))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
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
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kkzwj24z9ad7lq8c5ynlnpxpx8hwra6w6brl871a6dj6vi76bv3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-wasm-bindgen-macro" ,rust-wasm-bindgen-macro-0.2))))
    (home-page "https://rustwasm.github.io/")
    (synopsis "Easy support for interacting between JS and Rust.
")
    (description "Easy support for interacting between JS and Rust.
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
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "116cg9vn62cl3vifbs6cjdsg7hz98kr7sr8kpy31liccsg6gzjbw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis
      "Bindings for all JS global objects and functions in all JS environments like
Node.js and browsers, built on `#[wasm_bindgen]` using the `wasm-bindgen` crate.
")
    (description
      "Bindings for all JS global objects and functions in all JS environments like
Node.js and browsers, built on `#[wasm_bindgen]` using the `wasm-bindgen` crate.
")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-futures-macro-0.3
  (package
    (name "rust-futures-macro")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-macro" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fvriw31ippggp8496dpbvkykr2fgk57amhwrz5lqjzabjws9r0q"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-autocfg" ,rust-autocfg-1)
         ("rust-proc-macro-hack" ,rust-proc-macro-hack-0.5)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://rust-lang.github.io/futures-rs")
    (synopsis "The futures-rs procedural macro implementations.
")
    (description "The futures-rs procedural macro implementations.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-io-0.3
  (package
    (name "rust-futures-io")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-io" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xrk0xsrmhxrndhby79j31mkzbwg21s09fkpqldhyf1yzshf4baj"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://rust-lang.github.io/futures-rs")
    (synopsis
      "The `AsyncRead`, `AsyncWrite`, `AsyncSeek`, and `AsyncBufRead` traits for the futures-rs library.
")
    (description
      "The `AsyncRead`, `AsyncWrite`, `AsyncSeek`, and `AsyncBufRead` traits for the futures-rs library.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-util-0.3
  (package
    (name "rust-futures-util")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-util" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10al5ci74s6rk2d2wqqya0d4fwc6sqv525hzbvj6wfha45jq8min"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-autocfg" ,rust-autocfg-1)
         ("rust-futures" ,rust-futures-0.1)
         ("rust-futures-channel" ,rust-futures-channel-0.3)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-io" ,rust-futures-io-0.3)
         ("rust-futures-macro" ,rust-futures-macro-0.3)
         ("rust-futures-sink" ,rust-futures-sink-0.3)
         ("rust-futures-task" ,rust-futures-task-0.3)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
         ("rust-pin-utils" ,rust-pin-utils-0.1)
         ("rust-proc-macro-hack" ,rust-proc-macro-hack-0.5)
         ("rust-proc-macro-nested" ,rust-proc-macro-nested-0.1)
         ("rust-slab" ,rust-slab-0.4)
         ("rust-tokio-io" ,rust-tokio-io-0.1))))
    (home-page "https://rust-lang.github.io/futures-rs")
    (synopsis
      "Common utilities and extension traits for the futures-rs library.
")
    (description
      "Common utilities and extension traits for the futures-rs library.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-task-0.3
  (package
    (name "rust-futures-task")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-task" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "169fi44d8sbfpkkyhncj0pgkp1amrllg5523lncf8wyvxps00g8x"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://rust-lang.github.io/futures-rs")
    (synopsis "Tools for working with tasks.
")
    (description "Tools for working with tasks.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-executor-0.3
  (package
    (name "rust-futures-executor")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-executor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0p3lv18dr90c032yrr4k833npp23a0spykvq4lq7d7cn63h5n0j5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-task" ,rust-futures-task-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-num-cpus" ,rust-num-cpus-1))))
    (home-page "https://rust-lang.github.io/futures-rs")
    (synopsis
      "Executors for asynchronous tasks based on the futures-rs library.
")
    (description
      "Executors for asynchronous tasks based on the futures-rs library.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-sink-0.3
  (package
    (name "rust-futures-sink")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-sink" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04dwqbcwxil6iyv7fif2xjncz849mm63sghbb60f8kq22cy1bsin"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://rust-lang.github.io/futures-rs")
    (synopsis "The asynchronous `Sink` trait for the futures-rs library.
")
    (description "The asynchronous `Sink` trait for the futures-rs library.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-core-0.3
  (package
    (name "rust-futures-core")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gd5hfxcy5fqc3wm55a4yhcbh921wvzv09nkbhwh6dpjaxlw5lc8"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://rust-lang.github.io/futures-rs")
    (synopsis "The core traits and types in for the `futures` library.
")
    (description "The core traits and types in for the `futures` library.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-channel-0.3
  (package
    (name "rust-futures-channel")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-channel" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "121q4y5c10vihzgcb6fvp0gwzyh4hg6c37riqz9nbhdk7f6bm9jx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-sink" ,rust-futures-sink-0.3))))
    (home-page "https://rust-lang.github.io/futures-rs")
    (synopsis "Channels for asynchronous communication using futures-rs.
")
    (description "Channels for asynchronous communication using futures-rs.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-0.3
  (package
    (name "rust-futures")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jk6znbqrmb6xkgs4g0s7ivv1djq7dyaci9d7xfdb04hagms0am1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-futures-channel" ,rust-futures-channel-0.3)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-executor" ,rust-futures-executor-0.3)
         ("rust-futures-io" ,rust-futures-io-0.3)
         ("rust-futures-sink" ,rust-futures-sink-0.3)
         ("rust-futures-task" ,rust-futures-task-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3))))
    (home-page "https://rust-lang.github.io/futures-rs")
    (synopsis
      "An implementation of futures and streams featuring zero allocations,
composability, and iterator-like interfaces.
")
    (description
      "An implementation of futures and streams featuring zero allocations,
composability, and iterator-like interfaces.
")
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

(define-public rust-arrayvec-0.7
  (package
    (name "rust-arrayvec")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "arrayvec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kcgsfp0ns0345g580ny7hhl9y9a6l3m0pykfa09p9pz65qw0kdy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bluss/arrayvec")
    (synopsis
      "A vector with fixed capacity, backed by an array (it can be stored on the stack too). Implements fixed capacity ArrayVec and ArrayString.")
    (description
      "This package provides a vector with fixed capacity, backed by an array (it can be stored on the stack too).  Implements fixed capacity ArrayVec and ArrayString.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rg3d-core-0.18
  (package
    (name "rust-rg3d-core")
    (version "0.18.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rg3d-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jcym39zg28ialpch8s7zkglr89ykf8nrinw8g0jpswcrwjsc7wx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arrayvec" ,rust-arrayvec-0.7)
         ("rust-base64" ,rust-base64-0.13)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-instant" ,rust-instant-0.1)
         ("rust-js-sys" ,rust-js-sys-0.3)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-memoffset" ,rust-memoffset-0.6)
         ("rust-nalgebra" ,rust-nalgebra-0.29)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-rg3d-core-derive" ,rust-rg3d-core-derive-0.13)
         ("rust-uuid" ,rust-uuid-0.8)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-wasm-bindgen-futures" ,rust-wasm-bindgen-futures-0.4)
         ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://github.com/mrDIMAS/rg3d")
    (synopsis "Shared core for rg3d engine and its external crates.")
    (description "Shared core for rg3d engine and its external crates.")
    (license license:expat)))

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

(define-public rust-parry3d-0.7
  (package
    (name "rust-parry3d")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "parry3d" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1s7cn65d16mhxvk73ps162kcfrwdbxn7kybffli41k7pyx5s8zq6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-approx" ,rust-approx-0.5)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-downcast-rs" ,rust-downcast-rs-1)
         ("rust-either" ,rust-either-1)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-nalgebra" ,rust-nalgebra-0.29)
         ("rust-num-derive" ,rust-num-derive-0.3)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-simba" ,rust-simba-0.6)
         ("rust-slab" ,rust-slab-0.4)
         ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "http://parry.rs")
    (synopsis "3 dimensional collision detection library in Rust.")
    (description "3 dimensional collision detection library in Rust.")
    (license license:asl2.0)))

(define-public rust-rapier3d-0.11
  (package
    (name "rust-rapier3d")
    (version "0.11.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rapier3d" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1b5j76fw1xjgnk9827i10nxv8l96s50wr3wk2c4brz9f6pidvj6g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-approx" ,rust-approx-0.5)
         ("rust-arrayvec" ,rust-arrayvec-0.7)
         ("rust-bit-vec" ,rust-bit-vec-0.6)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-crossbeam" ,rust-crossbeam-0.8)
         ("rust-downcast-rs" ,rust-downcast-rs-1)
         ("rust-instant" ,rust-instant-0.1)
         ("rust-nalgebra" ,rust-nalgebra-0.29)
         ("rust-num-derive" ,rust-num-derive-0.3)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-parry3d" ,rust-parry3d-0.7)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-simba" ,rust-simba-0.6)
         ("rust-vec-map" ,rust-vec-map-0.8))))
    (home-page "http://rapier.rs")
    (synopsis "3-dimensional physics engine in Rust.")
    (description "3-dimensional physics engine in Rust.")
    (license license:asl2.0)))

(define-public rust-parry2d-0.7
  (package
    (name "rust-parry2d")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "parry2d" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1slfkapvwdx0ay358rbqp0xp5gfscs5gbi1zzb0hhrzxfr7720qf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-approx" ,rust-approx-0.5)
         ("rust-arrayvec" ,rust-arrayvec-0.7)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-downcast-rs" ,rust-downcast-rs-1)
         ("rust-either" ,rust-either-1)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-nalgebra" ,rust-nalgebra-0.29)
         ("rust-num-derive" ,rust-num-derive-0.3)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-simba" ,rust-simba-0.6)
         ("rust-slab" ,rust-slab-0.4)
         ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "http://parry.rs")
    (synopsis "2 dimensional collision detection library in Rust.")
    (description "2 dimensional collision detection library in Rust.")
    (license license:asl2.0)))

(define-public rust-safe-arch-0.6
  (package
    (name "rust-safe-arch")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "safe_arch" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ad5ykwgq9ll1ymp83d9cayzj8q191rik71ga5wzkndhrkj22j3r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-bytemuck" ,rust-bytemuck-1))))
    (home-page "https://github.com/Lokathor/safe_arch")
    (synopsis "Crate that exposes `core::arch` safely via `#[cfg()]`.")
    (description "Crate that exposes `core::arch` safely via `#[cfg()]`.")
    (license (list license:zlib license:asl2.0 license:expat))))

(define-public rust-wide-0.7
  (package
    (name "rust-wide")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wide" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14y8js69x0hb4pkg249ahz5a4ncyx4hd0h614vd1jrjgjn759wnj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytemuck" ,rust-bytemuck-1)
         ("rust-safe-arch" ,rust-safe-arch-0.6))))
    (home-page "https://github.com/Lokathor/wide")
    (synopsis "A crate to help you go wide.")
    (description "This package provides a crate to help you go wide.")
    (license (list license:zlib license:asl2.0 license:expat))))

(define-public rust-simba-0.6
  (package
    (name "rust-simba")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "simba" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0px0nncs3ki86pjcldz40mhvraywh7y9jypfcqqdcihs287q9dzh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-approx" ,rust-approx-0.5)
         ("rust-cordic" ,rust-cordic-0.1)
         ("rust-decimal" ,rust-decimal-2)
         ("rust-fixed" ,rust-fixed-1)
         ("rust-libm" ,rust-libm-0.2)
         ("rust-num-complex" ,rust-num-complex-0.4)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-packed-simd-2" ,rust-packed-simd-2-0.3)
         ("rust-paste" ,rust-paste-1)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-wide" ,rust-wide-0.7))))
    (home-page "https://github.com/dimforge/simba")
    (synopsis "SIMD algebra for Rust")
    (description "SIMD algebra for Rust")
    (license license:asl2.0)))

(define-public rust-seahash-4
  (package
    (name "rust-seahash")
    (version "4.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "seahash" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0sxsb64np6bvnppjz5hg4rqpnkczhsl8w8kf2a5lr1c08xppn40w"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://gitlab.redox-os.org/redox-os/seahash")
    (synopsis
      "A blazingly fast, portable hash function with proven statistical guarantees.")
    (description
      "This package provides a blazingly fast, portable hash function with proven statistical guarantees.")
    (license license:expat)))

(define-public rust-rkyv-derive-0.6
  (package
    (name "rust-rkyv-derive")
    (version "0.6.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rkyv_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mc7rnps41gdywahsffqlypsp9jqmp0r6hlh2nxm31bddfgli3xs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/rkyv/rkyv")
    (synopsis "Derive macro for rkyv")
    (description "Derive macro for rkyv")
    (license license:expat)))

(define-public rust-ptr-meta-derive-0.1
  (package
    (name "rust-ptr-meta-derive")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ptr_meta_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1b69cav9wn67cixshizii0q5mlbl0lihx706vcrzm259zkdlbf0n"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/djkoloski/ptr_meta")
    (synopsis "Macros for ptr_meta")
    (description "Macros for ptr_meta")
    (license license:expat)))

(define-public rust-ptr-meta-0.1
  (package
    (name "rust-ptr-meta")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ptr_meta" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wd4wy0wxrcays4f1gy8gwcmxg7mskmivcv40p0hidh6xbvwqf07"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ptr-meta-derive" ,rust-ptr-meta-derive-0.1))))
    (home-page "https://github.com/djkoloski/ptr_meta")
    (synopsis "A radioactive stabilization of the ptr_meta rfc")
    (description
      "This package provides a radioactive stabilization of the ptr_meta rfc")
    (license license:expat)))

(define-public rust-bytecheck-derive-0.5
  (package
    (name "rust-bytecheck-derive")
    (version "0.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bytecheck_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0grbkwwv5j91n7zrimci6fh4k79flxga3mkjg50jysnyraizi088"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/djkoloski/bytecheck")
    (synopsis "Derive macro for bytecheck")
    (description "Derive macro for bytecheck")
    (license license:expat)))

(define-public rust-bytecheck-0.5
  (package
    (name "rust-bytecheck")
    (version "0.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bytecheck" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0q11ap6nqj0rsc8ypwjh918916zlrcrzdgqm175gnpb2yn9axyh1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytecheck-derive" ,rust-bytecheck-derive-0.5)
         ("rust-log" ,rust-log-0.4)
         ("rust-ptr-meta" ,rust-ptr-meta-0.1)
         ("rust-simdutf8" ,rust-simdutf8-0.1))))
    (home-page "https://github.com/djkoloski/bytecheck")
    (synopsis "Derive macro for bytecheck")
    (description "Derive macro for bytecheck")
    (license license:expat)))

(define-public rust-rkyv-0.6
  (package
    (name "rust-rkyv")
    (version "0.6.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rkyv" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "01wsn0i8gsw958j892w8i4fyzjdsyhrh7c5zajig049kbqz5n4yb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytecheck" ,rust-bytecheck-0.5)
         ("rust-memoffset" ,rust-memoffset-0.6)
         ("rust-ptr-meta" ,rust-ptr-meta-0.1)
         ("rust-rkyv-derive" ,rust-rkyv-derive-0.6)
         ("rust-seahash" ,rust-seahash-4))))
    (home-page "https://github.com/rkyv/rkyv")
    (synopsis "Zero-copy deserialization framework for Rust")
    (description "Zero-copy deserialization framework for Rust")
    (license license:expat)))

(define-public rust-rand-distr-0.4
  (package
    (name "rust-rand-distr")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_distr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0brd2946xfapm2bmhmczfbwck041x7khsfhqxw1f24kxis7m8kcn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://rust-random.github.io/book")
    (synopsis "Sampling from random number distributions
")
    (description "Sampling from random number distributions
")
    (license (list license:expat license:asl2.0))))

(define-public rust-rand-xorshift-0.3
  (package
    (name "rust-rand-xorshift")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_xorshift" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "13vcag7gmqspzyabfl1gr9ykvxd2142q2agrj8dkyjmfqmgg4nyj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rand-core" ,rust-rand-core-0.6) ("rust-serde" ,rust-serde-1))))
    (home-page "https://rust-random.github.io/book")
    (synopsis "Xorshift random number generator
")
    (description "Xorshift random number generator
")
    (license (list license:expat license:asl2.0))))

(define-public rust-quick-error-2
  (package
    (name "rust-quick-error")
    (version "2.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "quick-error" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18z6r2rcjvvf8cn92xjhm2qc3jpd1ljvcbf12zv0k9p565gmb4x9"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "http://github.com/tailhook/quick-error")
    (synopsis "    A macro which makes error types pleasant to write.
")
    (description "    A macro which makes error types pleasant to write.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-proptest-1
  (package
    (name "rust-proptest")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proptest" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1rdhjnf0xma5rmsq04d31n2vq1pgbm42pjc6jn3jsj8qgz09q38y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bit-set" ,rust-bit-set-0.5)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-quick-error" ,rust-quick-error-2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-rand-chacha" ,rust-rand-chacha-0.3)
         ("rust-rand-xorshift" ,rust-rand-xorshift-0.3)
         ("rust-regex-syntax" ,rust-regex-syntax-0.6)
         ("rust-rusty-fork" ,rust-rusty-fork-0.3)
         ("rust-tempfile" ,rust-tempfile-3)
         ("rust-x86" ,rust-x86-0.33))))
    (home-page "https://altsysrq.github.io/proptest-book/proptest/index.html")
    (synopsis "Hypothesis-like property-based testing and shrinking.
")
    (description "Hypothesis-like property-based testing and shrinking.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-nalgebra-macros-0.1
  (package
    (name "rust-nalgebra-macros")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "nalgebra-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "063jvvvlwmzzxfr4wyiil2cn1yqj3arvghwsr2nk4ilv2jwc1z01"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://nalgebra.org")
    (synopsis "Procedural macros for nalgebra")
    (description "Procedural macros for nalgebra")
    (license license:asl2.0)))

(define-public rust-matrixcompare-core-0.1
  (package
    (name "rust-matrixcompare-core")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "matrixcompare-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0wqaj028ws2x2h16rf10arwvmpfbmk7afg8b57ahb25i1nrspgdh"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/Andlon/matrixcompare")
    (synopsis "Core traits for matrixcompare")
    (description "Core traits for matrixcompare")
    (license license:expat)))

(define-public rust-glam-0.16
  (package
    (name "rust-glam")
    (version "0.16.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "glam" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "05izbgx93hnjk200144h9yxhy51cbygp2bbaqdj8czngki3w09j1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-approx" ,rust-approx-0.4)
         ("rust-bytemuck" ,rust-bytemuck-1)
         ("rust-mint" ,rust-mint-0.5)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bitshifter/glam-rs")
    (synopsis "A simple and fast 3D math library for games and graphics")
    (description
      "This package provides a simple and fast 3D math library for games and graphics")
    (license (list license:expat license:asl2.0))))

(define-public rust-glam-0.15
  (package
    (name "rust-glam")
    (version "0.15.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "glam" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0jx587lxz9v9m0ph4dlshfgy0abax1zhlbjj5nvkchz4ir7mbfrs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytemuck" ,rust-bytemuck-1)
         ("rust-mint" ,rust-mint-0.5)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-spirv-std" ,rust-spirv-std-0.4))))
    (home-page "https://github.com/bitshifter/glam-rs")
    (synopsis "A simple and fast 3D math library for games and graphics")
    (description
      "This package provides a simple and fast 3D math library for games and graphics")
    (license (list license:expat license:asl2.0))))

(define-public rust-glam-0.14
  (package
    (name "rust-glam")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "glam" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1njk0cskaspc62ywxlzpiszbcb9hhh1yqg2ka105sg0hxgajhf9k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytemuck" ,rust-bytemuck-1)
         ("rust-mint" ,rust-mint-0.5)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-spirv-std" ,rust-spirv-std-0.4))))
    (home-page "https://github.com/bitshifter/glam-rs")
    (synopsis "A simple and fast 3D math library for games and graphics")
    (description
      "This package provides a simple and fast 3D math library for games and graphics")
    (license (list license:expat license:asl2.0))))

(define-public rust-spirv-types-0.4
  (package
    (name "rust-spirv-types")
    (version "0.4.0-alpha.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "spirv-types" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0sxcic2n04xzywww3c7mj9ah8iwr20vz3d6xvsgla1y7gs7lpk3i"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/EmbarkStudios/rust-gpu")
    (synopsis "SPIR-V types shared between spirv-std and spirv-std-macros")
    (description "SPIR-V types shared between spirv-std and spirv-std-macros")
    (license (list license:expat license:asl2.0))))

(define-public rust-heck-0.3
  (package
    (name "rust-heck")
    (version "0.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "heck" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0b0kkr790p66lvzn9nsmfjvydrbmh9z5gb664jchwgw64vxiwqkd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-unicode-segmentation" ,rust-unicode-segmentation-1))))
    (home-page "https://github.com/withoutboats/heck")
    (synopsis "heck is a case conversion library.")
    (description "heck is a case conversion library.")
    (license (list license:expat license:asl2.0))))

(define-public rust-spirv-std-macros-0.4
  (package
    (name "rust-spirv-std-macros")
    (version "0.4.0-alpha.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "spirv-std-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19cc15vq9ybdap39qxpf4vsz5q6li21mzgv47zqbyj5vvwaqazi0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-heck" ,rust-heck-0.3)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-spirv-types" ,rust-spirv-types-0.4)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/EmbarkStudios/rust-gpu")
    (synopsis "Macros for spirv-std")
    (description "Macros for spirv-std")
    (license (list license:expat license:asl2.0))))

(define-public rust-spirv-std-0.4
  (package
    (name "rust-spirv-std")
    (version "0.4.0-alpha.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "spirv-std" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1b8j1cvjvk5xp930b2m1sqwdbhl2nq89nvzldv74mb1jv38wpm4j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-glam" ,rust-glam-0.17)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-spirv-std-macros" ,rust-spirv-std-macros-0.4)
         ("rust-spirv-types" ,rust-spirv-types-0.4))))
    (home-page "https://github.com/EmbarkStudios/rust-gpu")
    (synopsis "Standard functions and types for SPIR-V")
    (description "Standard functions and types for SPIR-V")
    (license (list license:expat license:asl2.0))))

(define-public rust-glam-0.13
  (package
    (name "rust-glam")
    (version "0.13.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "glam" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ps7f44844ydj7cjr7wk1hn2d83ds1ilq7p9b2vvhr0711b5n5bh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytemuck" ,rust-bytemuck-1)
         ("rust-mint" ,rust-mint-0.5)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rand" ,rust-rand-0.7)
         ("rust-serde" ,rust-serde-1)
         ("rust-spirv-std" ,rust-spirv-std-0.4))))
    (home-page "https://github.com/bitshifter/glam-rs")
    (synopsis "A simple and fast 3D math library for games and graphics")
    (description
      "This package provides a simple and fast 3D math library for games and graphics")
    (license (list license:expat license:asl2.0))))

(define-public rust-glam-0.17
  (package
    (name "rust-glam")
    (version "0.17.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "glam" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xm7jdygbxchdvk6k1l1pdag843nkwdm8fikwgp0i1gxgawk45z0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-approx" ,rust-approx-0.5)
         ("rust-bytemuck" ,rust-bytemuck-1)
         ("rust-mint" ,rust-mint-0.5)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bitshifter/glam-rs")
    (synopsis "A simple and fast 3D math library for games and graphics")
    (description
      "This package provides a simple and fast 3D math library for games and graphics")
    (license (list license:expat license:asl2.0))))

(define-public rust-bytemuck-1
  (package
    (name "rust-bytemuck")
    (version "1.7.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bytemuck" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0nrcrwj7giny1ds3g67g4y1fpb9h70a8cm4az272pf0xqi3755bj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytemuck-derive" ,rust-bytemuck-derive-1))))
    (home-page "https://github.com/Lokathor/bytemuck")
    (synopsis "A crate for mucking around with piles of bytes.")
    (description
      "This package provides a crate for mucking around with piles of bytes.")
    (license (list license:zlib license:asl2.0 license:expat))))

(define-public rust-nalgebra-0.29
  (package
    (name "rust-nalgebra")
    (version "0.29.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "nalgebra" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zri11vkrbk3ayvy8xqcdvvyjvfcbl5a18x8z82racnn11zfn1nm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-abomonation" ,rust-abomonation-0.7)
         ("rust-alga" ,rust-alga-0.9)
         ("rust-approx" ,rust-approx-0.5)
         ("rust-bytemuck" ,rust-bytemuck-1)
         ("rust-glam" ,rust-glam-0.17)
         ("rust-glam" ,rust-glam-0.13)
         ("rust-glam" ,rust-glam-0.14)
         ("rust-glam" ,rust-glam-0.15)
         ("rust-glam" ,rust-glam-0.16)
         ("rust-matrixcompare-core" ,rust-matrixcompare-core-0.1)
         ("rust-matrixmultiply" ,rust-matrixmultiply-0.3)
         ("rust-mint" ,rust-mint-0.5)
         ("rust-nalgebra-macros" ,rust-nalgebra-macros-0.1)
         ("rust-num-complex" ,rust-num-complex-0.4)
         ("rust-num-rational" ,rust-num-rational-0.4)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-pest" ,rust-pest-2)
         ("rust-pest-derive" ,rust-pest-derive-2)
         ("rust-proptest" ,rust-proptest-1)
         ("rust-quickcheck" ,rust-quickcheck-1)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-rand-distr" ,rust-rand-distr-0.4)
         ("rust-rkyv" ,rust-rkyv-0.6)
         ("rust-serde" ,rust-serde-1)
         ("rust-simba" ,rust-simba-0.6)
         ("rust-typenum" ,rust-typenum-1))))
    (home-page "https://nalgebra.org")
    (synopsis
      "General-purpose linear algebra library with transformations and statically-sized or dynamically-sized matrices.")
    (description
      "General-purpose linear algebra library with transformations and statically-sized or dynamically-sized matrices.")
    (license license:bsd-3)))

(define-public rust-approx-0.5
  (package
    (name "rust-approx")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "approx" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17p9g3yl061zdlrqj10npybmng81jz71dzmcanmjgcb35qhgfb87"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-num-complex" ,rust-num-complex-0.4)
         ("rust-num-traits" ,rust-num-traits-0.2))))
    (home-page "https://github.com/brendanzab/approx")
    (synopsis
      "Approximate floating point equality comparisons and assertions.")
    (description
      "Approximate floating point equality comparisons and assertions.")
    (license license:asl2.0)))

(define-public rust-rapier2d-0.11
  (package
    (name "rust-rapier2d")
    (version "0.11.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rapier2d" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11pa020la7llf2ngq5w13yias3kshzd217ggf4dr8yfjvc82jpf4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-approx" ,rust-approx-0.5)
         ("rust-arrayvec" ,rust-arrayvec-0.7)
         ("rust-bit-vec" ,rust-bit-vec-0.6)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-crossbeam" ,rust-crossbeam-0.8)
         ("rust-downcast-rs" ,rust-downcast-rs-1)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-instant" ,rust-instant-0.1)
         ("rust-nalgebra" ,rust-nalgebra-0.29)
         ("rust-num-derive" ,rust-num-derive-0.3)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-parry2d" ,rust-parry2d-0.7)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-simba" ,rust-simba-0.6)
         ("rust-vec-map" ,rust-vec-map-0.8))))
    (home-page "http://rapier.rs")
    (synopsis "2-dimensional physics engine in Rust.")
    (description "2-dimensional physics engine in Rust.")
    (license license:asl2.0)))

(define-public rust-lexical-write-integer-0.8
  (package
    (name "rust-lexical-write-integer")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lexical-write-integer" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vsn3zg2hyqnyapwmzb2aw0w5f53ad6s6n46xyazsh0f5r4mdsgc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lexical-util" ,rust-lexical-util-0.8)
         ("rust-static-assertions" ,rust-static-assertions-1))))
    (home-page "https://github.com/Alexhuszagh/rust-lexical")
    (synopsis "Efficient formatting of integers to strings.")
    (description "Efficient formatting of integers to strings.")
    (license (list license:expat license:asl2.0))))

(define-public rust-lexical-write-float-0.8
  (package
    (name "rust-lexical-write-float")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lexical-write-float" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xn5dpdmld2nvj7jvz3xrvjjbrnsh4jhymjimax7labvija8clcb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lexical-util" ,rust-lexical-util-0.8)
         ("rust-lexical-write-integer" ,rust-lexical-write-integer-0.8)
         ("rust-static-assertions" ,rust-static-assertions-1))))
    (home-page "https://github.com/Alexhuszagh/rust-lexical")
    (synopsis "Efficient formatting of floats to strings.")
    (description "Efficient formatting of floats to strings.")
    (license (list license:expat license:asl2.0))))

(define-public rust-lexical-util-0.8
  (package
    (name "rust-lexical-util")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lexical-util" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14g224mm2li0q6jnnqh92dzx3zjyflji3i8dz4xf6vp1mb66kxkg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-static-assertions" ,rust-static-assertions-1))))
    (home-page "https://github.com/Alexhuszagh/rust-lexical")
    (synopsis "Shared utilities for lexical creates.")
    (description "Shared utilities for lexical creates.")
    (license (list license:expat license:asl2.0))))

(define-public rust-lexical-parse-integer-0.8
  (package
    (name "rust-lexical-parse-integer")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lexical-parse-integer" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1b2kxprq3636x3j1qy68202q7yzsmq5c7h9w7m7zrh4cvanjpjgj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lexical-util" ,rust-lexical-util-0.8)
         ("rust-static-assertions" ,rust-static-assertions-1))))
    (home-page "https://github.com/Alexhuszagh/rust-lexical")
    (synopsis "Efficient parsing of integers from strings.")
    (description "Efficient parsing of integers from strings.")
    (license (list license:expat license:asl2.0))))

(define-public rust-lexical-parse-float-0.8
  (package
    (name "rust-lexical-parse-float")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lexical-parse-float" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03mzjx8k2jzv2vbl1xb589p9zfs5i2m23vcmm6fjsxps0k86dl5l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lexical-parse-integer" ,rust-lexical-parse-integer-0.8)
         ("rust-lexical-util" ,rust-lexical-util-0.8)
         ("rust-static-assertions" ,rust-static-assertions-1))))
    (home-page "https://github.com/Alexhuszagh/rust-lexical")
    (synopsis "Efficient parsing of floats from strings.")
    (description "Efficient parsing of floats from strings.")
    (license (list license:expat license:asl2.0))))

(define-public rust-lexical-core-0.8
  (package
    (name "rust-lexical-core")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lexical-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1152ll9xa7v4jz2mjvz0048gy32yg39mzgjaps89h0any7c2cfba"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lexical-parse-float" ,rust-lexical-parse-float-0.8)
         ("rust-lexical-parse-integer" ,rust-lexical-parse-integer-0.8)
         ("rust-lexical-util" ,rust-lexical-util-0.8)
         ("rust-lexical-write-float" ,rust-lexical-write-float-0.8)
         ("rust-lexical-write-integer" ,rust-lexical-write-integer-0.8))))
    (home-page "https://github.com/Alexhuszagh/rust-lexical")
    (synopsis "Lexical, to- and from-string conversion routines.")
    (description "Lexical, to- and from-string conversion routines.")
    (license (list license:expat license:asl2.0))))

(define-public rust-lexical-6
  (package
    (name "rust-lexical")
    (version "6.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lexical" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1y8v2s8g2hjinwf5hbm1ncbazw9q4qbp111q2mwacq6hi0grhkn3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lexical-core" ,rust-lexical-core-0.8))))
    (home-page "https://github.com/Alexhuszagh/rust-lexical")
    (synopsis "Lexical, to- and from-string conversion routines.")
    (description "Lexical, to- and from-string conversion routines.")
    (license (list license:expat license:asl2.0))))

(define-public rust-smithay-client-toolkit-0.12
  (package
    (name "rust-smithay-client-toolkit")
    (version "0.12.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smithay-client-toolkit" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "100bm0wk7agfk1dmfnqfjq55kn53srkyc3yq7vx9bb6ksmpwfl27"))))
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
         ("rust-wayland-protocols" ,rust-wayland-protocols-0.28))))
    (home-page "https://github.com/smithay/client-toolkit")
    (synopsis "Toolkit for making client wayland applications.")
    (description "Toolkit for making client wayland applications.")
    (license license:expat)))

(define-public rust-android-log-sys-0.2
  (package
    (name "rust-android-log-sys")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "android_log-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bhhs1cgzp9vzjvkn2q31ppc7w4am5s273hkvl5iac5475kmp5l5"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/nercury/android_log-sys-rs")
    (synopsis "FFI bindings to Android log Library.
")
    (description "FFI bindings to Android log Library.
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
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0wspwzkn3fakpyz3ka0lh6h4pa66zk9kkvic2q9n70jx30y37hif"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-android-log-sys" ,rust-android-log-sys-0.2)
         ("rust-env-logger" ,rust-env-logger-0.7)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4))))
    (home-page "https://github.com/Nercury/android_logger-rs")
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
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11cksaj1f2sy4dwqyssrvvhbnd86zajfvm17bj81rb2i9p1g1jn5"))))
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
    (home-page "https://github.com/rust-windowing/android-ndk-rs")
    (synopsis "Startup code for android binaries")
    (description "Startup code for android binaries")
    (license (list license:expat license:asl2.0))))

(define-public rust-num-enum-derive-0.5
  (package
    (name "rust-num-enum-derive")
    (version "0.5.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "num_enum_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1nfdz1c7cmcq3hdjkiba2hrr0vdj82vshyg6dl4iia64c4cs0vj8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro-crate" ,rust-proc-macro-crate-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/illicitonion/num_enum")
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
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vzdcrmfx70izz3ns1avaf00jgvbrlsmvm2p9y7ly33kzdax16rz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-derivative" ,rust-derivative-2)
         ("rust-num-enum-derive" ,rust-num-enum-derive-0.5))))
    (home-page "https://github.com/illicitonion/num_enum")
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
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1avk39s8w21inkzq09x83yghgq3v8rmhrycba8prg6rif8hk5547"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-jni" ,rust-jni-0.14)
         ("rust-jni-glue" ,rust-jni-glue-0.0.10)
         ("rust-jni-sys" ,rust-jni-sys-0.3)
         ("rust-ndk-sys" ,rust-ndk-sys-0.2)
         ("rust-num-enum" ,rust-num-enum-0.5)
         ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/rust-windowing/android-ndk-rs")
    (synopsis "Safe Rust bindings to the Android NDK")
    (description "Safe Rust bindings to the Android NDK")
    (license (list license:expat license:asl2.0))))

(define-public rust-mio-misc-1
  (package
    (name "rust-mio-misc")
    (version "1.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mio-misc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hlxwq64cqz32m1h8mp65dbv8v5nmw101c8vh2swsndi3d0hbpqd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crossbeam" ,rust-crossbeam-0.8)
         ("rust-crossbeam-queue" ,rust-crossbeam-queue-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-mio" ,rust-mio-0.7))))
    (home-page "https://github.com/onurzdg/mio-misc")
    (synopsis "Miscellaneous components for use with Mio")
    (description "Miscellaneous components for use with Mio")
    (license license:expat)))

(define-public rust-mint-0.5
  (package
    (name "rust-mint")
    (version "0.5.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mint" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1v0jfmns6kazpyzfmjpgcbw78diy5an7y2bmai522qws7zzq8gkr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/kvark/mint")
    (synopsis "Math interoperability standard types")
    (description "Math interoperability standard types")
    (license license:expat)))

(define-public rust-winit-0.25
  (package
    (name "rust-winit")
    (version "0.25.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winit" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1y62hqgb93yz02yxx54cmk5mj8agc0zpdxry8yz8cpjdb6a0fqbr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cocoa" ,rust-cocoa-0.24)
         ("rust-core-foundation" ,rust-core-foundation-0.9)
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
         ("rust-percent-encoding" ,rust-percent-encoding-2)
         ("rust-raw-window-handle" ,rust-raw-window-handle-0.3)
         ("rust-scopeguard" ,rust-scopeguard-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-smithay-client-toolkit" ,rust-smithay-client-toolkit-0.12)
         ("rust-stdweb" ,rust-stdweb-0.4)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-wayland-client" ,rust-wayland-client-0.28)
         ("rust-web-sys" ,rust-web-sys-0.3)
         ("rust-winapi" ,rust-winapi-0.3)
         ("rust-x11-dl" ,rust-x11-dl-2))))
    (home-page "https://github.com/rust-windowing/winit")
    (synopsis "Cross-platform window creation library.")
    (description "Cross-platform window creation library.")
    (license license:asl2.0)))

(define-public rust-glutin-0.27
  (package
    (name "rust-glutin")
    (version "0.27.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "glutin" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w58vcni5sq0h03s5a9rmj2rsraqj3693rgbd2bdjmdqw796qbbn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-android-glue" ,rust-android-glue-0.2)
         ("rust-cgl" ,rust-cgl-0.3)
         ("rust-cocoa" ,rust-cocoa-0.24)
         ("rust-core-foundation" ,rust-core-foundation-0.9)
         ("rust-glutin-egl-sys" ,rust-glutin-egl-sys-0.1)
         ("rust-glutin-emscripten-sys" ,rust-glutin-emscripten-sys-0.1)
         ("rust-glutin-gles2-sys" ,rust-glutin-gles2-sys-0.1)
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
         ("rust-winit" ,rust-winit-0.25))))
    (home-page "https://github.com/rust-windowing/glutin")
    (synopsis "Cross-platform OpenGL context provider.")
    (description "Cross-platform OpenGL context provider.")
    (license license:asl2.0)))

(define-public rust-slotmap-1
  (package
    (name "rust-slotmap")
    (version "1.0.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "slotmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hhkvsc3x79c7fh97b3padjhssd19hzdyyiv291mr3qf3lk8xq71"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1)
         ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/orlp/slotmap")
    (synopsis "Slotmap data structure")
    (description "Slotmap data structure")
    (license license:zlib)))

(define-public rust-glow-0.11
  (package
    (name "rust-glow")
    (version "0.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "glow" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "084mr46dpvr37ak23cmdwpdbnh2xnkfxmx5y7i4c4fs94f8n812g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-js-sys" ,rust-js-sys-0.3)
         ("rust-slotmap" ,rust-slotmap-1)
         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
         ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://github.com/grovesNL/glow.git")
    (synopsis
      "GL on Whatever: a set of bindings to run GL (Open GL, OpenGL ES, and WebGL) anywhere, and avoid target-specific code.")
    (description
      "GL on Whatever: a set of bindings to run GL (Open GL, OpenGL ES, and WebGL) anywhere, and avoid target-specific code.")
    (license (list license:expat license:asl2.0))))

(define-public rust-ddsfile-0.4
  (package
    (name "rust-ddsfile")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ddsfile" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ffalziivn52hn5xc0czz0317b2nm6sz5x5n32227d25cklmgwrl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-enum-primitive" ,rust-enum-primitive-0.1))))
    (home-page "https://github.com/SiegeEngine/ddsfile")
    (synopsis "DirectDraw Surface file format parser/composer")
    (description "DirectDraw Surface file format parser/composer")
    (license license:expat)))

(define-public rust-bitflags-1
  (package
    (name "rust-bitflags")
    (version "1.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bitflags" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/bitflags/bitflags")
    (synopsis "A macro to generate structures which behave like bitflags.
")
    (description
      "This package provides a macro to generate structures which behave like bitflags.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-rg3d-0.23
  (package
    (name "rust-rg3d")
    (version "0.23.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rg3d" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bqibrbk887k819l1rr8ym3ag2yqkspz6lb3ymfp7lkdfl4c5xgq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-ddsfile" ,rust-ddsfile-0.4)
         ("rust-glow" ,rust-glow-0.11)
         ("rust-glutin" ,rust-glutin-0.27)
         ("rust-image" ,rust-image-0.23)
         ("rust-inflate" ,rust-inflate-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-lexical" ,rust-lexical-6)
         ("rust-lexical-parse-float" ,rust-lexical-parse-float-0.8)
         ("rust-rapier2d" ,rust-rapier2d-0.11)
         ("rust-rapier3d" ,rust-rapier3d-0.11)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-rg3d-core" ,rust-rg3d-core-0.18)
         ("rust-rg3d-resource" ,rust-rg3d-resource-0.2)
         ("rust-rg3d-sound" ,rust-rg3d-sound-0.25)
         ("rust-rg3d-ui" ,rust-rg3d-ui-0.14)
         ("rust-ron" ,rust-ron-0.6)
         ("rust-serde" ,rust-serde-1)
         ("rust-tbc" ,rust-tbc-0.3)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-walkdir" ,rust-walkdir-2)
         ("rust-winit" ,rust-winit-0.25))))
    (home-page "https://rg3d.rs")
    (synopsis "3D Game engine")
    (description "3D Game engine")
    (license license:expat)))

