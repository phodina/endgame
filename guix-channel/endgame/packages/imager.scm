(define-module (endgame packages imager)
  #:use-module (guix build utils)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages image)
  #:use-module (gnu packages llvm)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages crates-graphics)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-webp-dev-0.4
  (package
    (name "rust-webp-dev")
    (version "0.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "webp-dev" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (modules '((guix build utils)))
        (snippet
          '(begin
             (delete-file "archive/webmproject-libwebp-8bac456.v1.0.3.tar.gz")))
        (patches '("endgame/packages/patches/rust-webp-dev-remove-build-steps.patch"))
        (sha256
          (base32 "0irq02ixh2mg882xxvnicyr65kwrpksl8cpk19cgyl63zcyxbkdz"))))
    (build-system cargo-build-system)
    (arguments
      `(;#:skip-build? #t
        #:cargo-inputs
        (("rust-bindgen" ,rust-bindgen-0.51)
         ("rust-cc" ,rust-cc-1)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-image" ,rust-image-0.22)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-tar" ,rust-tar-0.4))
        #:phases
;TODO: Check how to refer to sources
        (modify-phases %standard-phases
          (add-after 'unpack 'fix-webp-paths
            (substitute* "build.rs"
              ((".join\\(\"src\"") 
              ((".join\\(\"src/demux\"")
              (("out_path.join\\(\"webmproject-libwebp-8bac456\\"")
    (native-inputs `(("clang" ,clang)
                     ("pkg-config" ,pkg-config)
                     ("llvm" ,llvm)))
    (inputs `(("libwebp" ,libwebp)))
    (home-page "https://github.com/imager-io/webp-dev-rs")
    (synopsis
      "Rust bindings to libwebp (plus related) and some other miscellaneous stuff.")
    (description
      "Rust bindings to libwebp (plus related) and some other miscellaneous stuff.")
    (license license:expat)))

(define-public rust-vmaf-sys-0.0.10
  (package
    (name "rust-vmaf-sys")
    (version "0.0.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "vmaf-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "13761f3s6srld3zq6sfqawlij3mm8mp9nip0bpy6xph708kcx9jm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bindgen" ,rust-bindgen-0.50)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-reqwest" ,rust-reqwest-0.9)
         ("rust-tar" ,rust-tar-0.4)
         ("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/colbyn/vmaf-sys")
    (synopsis "Rust VMAF FFI")
    (description "Rust VMAF FFI")
    (license license:expat)))

(define-public rust-rgb2yuv420-0.2
  (package
    (name "rust-rgb2yuv420")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rgb2yuv420" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fs5yabi09h33f0npvwckwb5pyd99a0hkini9qhbp8lk2m1svwsc"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/marcellBan/rgb2yuv420-rs")
    (synopsis "Simple RGB to YUV420 converter")
    (description "Simple RGB to YUV420 converter")
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

(define-public rust-mozjpeg-sys-0.10
  (package
    (name "rust-mozjpeg-sys")
    (version "0.10.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mozjpeg-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1k6z468yvriivymh75h84sccrmdbrg0ci8y8j5j7mc1r3f97z2kr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-dunce" ,rust-dunce-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-nasm-rs" ,rust-nasm-rs-0.2))))
    (home-page "https://lib.rs/mozjpeg-sys")
    (synopsis
      "FFI bindings for MozJPEG v4.

MozJPEG is automatically built and linked statically. Requires nasm and a C compiler.")
    (description
      "FFI bindings for MozJPEG v4.

MozJPEG is automatically built and linked statically.  Requires nasm and a C compiler.")
    (license license:ijg)))

(define-public rust-lodepng-2
  (package
    (name "rust-lodepng")
    (version "2.7.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lodepng" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "036msl3jgrk0cqfn0f52yp2pky39azrhnbkcinv3hmljpnvvmv3p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2) ("rust-rgb" ,rust-rgb-0.8))))
    (home-page "https://lib.rs/crates/lodepng")
    (synopsis
      "Reading and writing PNG files without system dependencies. Pure Rust port of LodePNG.")
    (description
      "Reading and writing PNG files without system dependencies.  Pure Rust port of LodePNG.")
    (license license:bsd-3)))

(define-public rust-indicatif-0.12
  (package
    (name "rust-indicatif")
    (version "0.12.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indicatif" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07n3mrgsyfw8mfvjjc948z7kbvxzf8nn94k0k5319akfaylrdmd8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-console" ,rust-console-0.14)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-number-prefix" ,rust-number-prefix-0.3)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/mitsuhiko/indicatif")
    (synopsis "A progress bar and cli reporting library for Rust")
    (description
      "This package provides a progress bar and cli reporting library for Rust")
    (license license:expat)))

(define-public rust-unidiff-0.3
  (package
    (name "rust-unidiff")
    (version "0.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unidiff" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0b13vhp2x7jlvmkm44h5niqcxklyrmz6afmppvykp4zimhcjg9nq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-encoding-rs" ,rust-encoding-rs-0.8)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/messense/unidiff-rs")
    (synopsis "Unified diff parsing/metadata extraction library for Rust")
    (description "Unified diff parsing/metadata extraction library for Rust")
    (license license:expat)))

(define-public rust-proc-macro2-0.3
  (package
    (name "rust-proc-macro2")
    (version "0.3.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1m0ksg6hbm46zblq0dpkwrg3n1h7n90yq1zcgwc6vpbfmr9pr6bp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-unicode-xid" ,rust-unicode-xid-0.1))))
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

(define-public rust-bindgen-0.42
  (package
    (name "rust-bindgen")
    (version "0.42.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bindgen" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0p14hgi90wd4zbd8j1s4xrxf770cx0s6a2d32fg9ypmzpb69kwg0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cexpr" ,rust-cexpr-0.3)
         ("rust-cfg-if" ,rust-cfg-if-0.1)
         ("rust-clang-sys" ,rust-clang-sys-0.26)
         ("rust-clap" ,rust-clap-2)
         ("rust-env-logger" ,rust-env-logger-0.5)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-peeking-take-while" ,rust-peeking-take-while-0.1)
         ("rust-proc-macro2" ,rust-proc-macro2-0.3)
         ("rust-quote" ,rust-quote-0.5)
         ("rust-regex" ,rust-regex-1)
         ("rust-which" ,rust-which-1))))
    (home-page "https://rust-lang.github.io/rust-bindgen/")
    (synopsis
      "Automatically generates Rust FFI bindings to C and C++ libraries.")
    (description
      "Automatically generates Rust FFI bindings to C and C++ libraries.")
    (license license:bsd-3)))

(define-public rust-sdl2-sys-0.32
  (package
    (name "rust-sdl2-sys")
    (version "0.32.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sdl2-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11kz2bqkpcywpyd5hyqflbszpgdmh64zxb61wibpsabx0wji3rrl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bindgen" ,rust-bindgen-0.42)
         ("rust-cfg-if" ,rust-cfg-if-0.1)
         ("rust-cmake" ,rust-cmake-0.1)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-tar" ,rust-tar-0.4)
         ("rust-unidiff" ,rust-unidiff-0.3))))
    (home-page "https://github.com/rust-sdl2/rust-sdl2")
    (synopsis "Raw SDL2 bindings for Rust, used internally rust-sdl2")
    (description "Raw SDL2 bindings for Rust, used internally rust-sdl2")
    (license license:expat)))

(define-public rust-c-vec-1
  (package
    (name "rust-c-vec")
    (version "1.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "c_vec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0c3wgb15h97k6lzfm9qgkwk35ij2ad7w8fb5rbqvalyf3n8ii8zq"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/GuillaumeGomez/c_vec-rs.git")
    (synopsis "Structures to wrap C arrays")
    (description "Structures to wrap C arrays")
    (license (list license:asl2.0 license:expat))))

(define-public rust-sdl2-0.32
  (package
    (name "rust-sdl2")
    (version "0.32.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sdl2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0yyx7sl08y241ddyyfkk9ysxbxllfdpwny6s37vza0z365ra0lfh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-c-vec" ,rust-c-vec-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-num" ,rust-num-0.1)
         ("rust-rand" ,rust-rand-0.6)
         ("rust-sdl2-sys" ,rust-sdl2-sys-0.32))))
    (home-page "https://github.com/Rust-SDL2/rust-sdl2")
    (synopsis "SDL2 bindings for Rust")
    (description "SDL2 bindings for Rust")
    (license license:expat)))

(define-public rust-rulinalg-0.4
  (package
    (name "rust-rulinalg")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rulinalg" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bxi7g6bknm3fsvappyk0zwdnn5kja75f322lxr1spk8r41a5b84"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-csv" ,rust-csv-0.14)
         ("rust-matrixmultiply" ,rust-matrixmultiply-0.1)
         ("rust-num" ,rust-num-0.1)
         ("rust-rustc-serialize" ,rust-rustc-serialize-0.3))))
    (home-page "https://github.com/AtheMathmo/rulinalg")
    (synopsis "A linear algebra library.")
    (description "This package provides a linear algebra library.")
    (license license:expat)))

(define-public rust-imageproc-0.19
  (package
    (name "rust-imageproc")
    (version "0.19.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "imageproc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "02frs7gq558yb21mijz52ga229pq4wzpnjxrl2rysrqh6maz9ppz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-conv" ,rust-conv-0.3)
         ("rust-image" ,rust-image-0.22)
         ("rust-itertools" ,rust-itertools-0.7)
         ("rust-num" ,rust-num-0.2)
         ("rust-quickcheck" ,rust-quickcheck-0.8)
         ("rust-rand" ,rust-rand-0.6)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-rulinalg" ,rust-rulinalg-0.4)
         ("rust-rusttype" ,rust-rusttype-0.7)
         ("rust-sdl2" ,rust-sdl2-0.32))))
    (home-page "https://github.com/image-rs/imageproc")
    (synopsis "Image processing operations")
    (description "Image processing operations")
    (license license:expat)))

(define-public rust-exoquant-0.2
  (package
    (name "rust-exoquant")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "exoquant" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ap4wm1f2jcqjnjvibgjrxqn279jlm6sajmlcdd4bdw3vvnawj2h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-rand" ,rust-rand-0.3))))
    (home-page "https://github.com/exoticorn/exoquant-rs")
    (synopsis "Very high quality image quantization")
    (description "Very high quality image quantization")
    (license license:expat)))

(define-public rust-colourado-0.2
  (package
    (name "rust-colourado")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "colourado" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0zkj7cv8g1ikyya2zqvdjyhkq7i6nbhb5a3xj4x843z6qrzb8l8x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-rand" ,rust-rand-0.6))))
    (home-page "https://github.com/BrandtM/colourado")
    (synopsis
      "A small and minimalistic library to generate a random color palette")
    (description
      "This package provides a small and minimalistic library to generate a random color palette")
    (license license:expat)))

(define-public imager
  (package
    (name "imager")
    (version "0.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "imager" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0zsi4f04hks5bh4a64n8172hnz6rgb5l8glm0rb3bpahb1jx9b53"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-colourado" ,rust-colourado-0.2)
         ("rust-either" ,rust-either-1)
         ("rust-exoquant" ,rust-exoquant-0.2)
         ("rust-glob" ,rust-glob-0.3)
         ("rust-image" ,rust-image-0.22)
         ("rust-imageproc" ,rust-imageproc-0.19)
         ("rust-indicatif" ,rust-indicatif-0.12)
         ("rust-itertools" ,rust-itertools-0.8)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-lodepng" ,rust-lodepng-2)
         ("rust-mozjpeg-sys" ,rust-mozjpeg-sys-0.10)
         ("rust-png" ,rust-png-0.15)
         ("rust-rand" ,rust-rand-0.7)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-rgb2yuv420" ,rust-rgb2yuv420-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-structopt" ,rust-structopt-0.3)
         ("rust-vmaf-sys" ,rust-vmaf-sys-0.0.10)
         ("rust-webp-dev" ,rust-webp-dev-0.4))))
	(native-inputs `(("clang" ,clang)
	("pkg-config" ,pkg-config)))
	(inputs `(("libwebp" ,libwebp)
	("openssl" ,openssl)))
    (home-page "https://imager.io")
    (synopsis
      "Automated image compression; optimizes the compression using various heuristics.")
    (description
      "Automated image compression; optimizes the compression using various heuristics.")
    (license license:mpl2.0)))
