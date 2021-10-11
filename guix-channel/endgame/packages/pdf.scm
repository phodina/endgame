(define-module (endgame packages pdf)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-printpdf-0.3
  (package
    (name "rust-printpdf")
    (version "0.3.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "printpdf" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1m02jcn8zflc0jfzs52yk8ji1l0ipngbarfvwg82icdwhjhp490s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-image" ,rust-image-0.23)
         ("rust-js-sys" ,rust-js-sys-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-lopdf" ,rust-lopdf-0.26)
         ("rust-rusttype" ,rust-rusttype-0.8)
         ("rust-time" ,rust-time-0.2))))
    (home-page "https://github.com/fschutt/printpdf")
    (synopsis "Rust library for writing PDF files")
    (description "Rust library for writing PDF files")
    (license license:expat)))

(define-public rust-genpdf-0.2
  (package
    (name "rust-genpdf")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "genpdf" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0d1cf3la35g8pl2vbizy4k6ihygjalzwyhxq5nrqqw428hs25i51"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-derive-more" ,rust-derive-more-0.99)
         ("rust-hyphenation" ,rust-hyphenation-0.8)
         ("rust-image" ,rust-image-0.23)
         ("rust-lopdf" ,rust-lopdf-0.26)
         ("rust-printpdf" ,rust-printpdf-0.3)
         ("rust-rusttype" ,rust-rusttype-0.8))
        #:cargo-development-inputs
        (("rust-float-cmp" ,rust-float-cmp-0.8)
         ("rust-hyphenation" ,rust-hyphenation-0.8))))
    (home-page "https://sr.ht/~ireas/genpdf-rs")
    (synopsis "User-friendly PDF generator written in pure Rust")
    (description "User-friendly PDF generator written in pure Rust")
    (license (list license:asl2.0 license:expat))))

(define-public rust-lopdf-0.26
  (package
    (name "rust-lopdf")
    (version "0.26.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lopdf" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wqnmibs8qzi6pr3ig4h3sg6bfkkgyv4ngdng81x069725r056ml"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-dtoa" ,rust-dtoa-0.4)
         ("rust-encoding" ,rust-encoding-0.2)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-image" ,rust-image-0.23)
         ("rust-itoa" ,rust-itoa-0.4)
         ("rust-linked-hash-map" ,rust-linked-hash-map-0.5)
         ("rust-log" ,rust-log-0.4)
         ("rust-lzw" ,rust-lzw-0.10)
         ("rust-nom" ,rust-nom-6)
         ("rust-pom" ,rust-pom-3)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-time" ,rust-time-0.2))))
    (home-page "https://github.com/J-F-Liu/lopdf")
    (synopsis "A Rust library for PDF document manipulation.")
    (description
      "This package provides a Rust library for PDF document manipulation.")
    (license license:expat)))

(define-public rust-snafu-derive-0.6
  (package
    (name "rust-snafu-derive")
    (version "0.6.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "snafu-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0nri7ma06g5kimpcdcm8359a55nmps5f3kcngy0j6bin7jhfy20m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/shepmaster/snafu")
    (synopsis "An ergonomic error handling library")
    (description "An ergonomic error handling library")
    (license (list license:expat license:asl2.0))))

(define-public rust-snafu-0.6
  (package
    (name "rust-snafu")
    (version "0.6.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "snafu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19wwqxwb85pl040qk5xylj0vlznib3xzy9hcv2q0h8qv4qy2vcga"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-doc-comment" ,rust-doc-comment-0.3)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-futures" ,rust-futures-0.1)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-pin-project" ,rust-pin-project-0.4)
         ("rust-snafu-derive" ,rust-snafu-derive-0.6))))
    (home-page "https://github.com/shepmaster/snafu")
    (synopsis "An ergonomic error handling library")
    (description "An ergonomic error handling library")
    (license (list license:expat license:asl2.0))))

(define-public rust-pdf-derive-0.1
  (package
    (name "rust-pdf-derive")
    (version "0.1.22")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pdf_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1y5lsj79vdlpw93wivl7xvvxbbpi9k3cn5bvx26pkl3m4wk0fh3z"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/pdf-rs")
    (synopsis "helper for pdf-rs.")
    (description "helper for pdf-rs.")
    (license license:expat)))

(define-public rust-ordermap-0.4
  (package
    (name "rust-ordermap")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ordermap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1m0vxmlm1x92m1ydgpddzg5mrfk3ddy8gk3r9dmpml18qrs9ch4i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bluss/ordermap")
    (synopsis
      "A hash table with consistent order and fast iteration. NOTE: This crate was renamed to indexmap. Please use it under its new name.")
    (description
      "This package provides a hash table with consistent order and fast iteration.  NOTE: This crate was renamed to indexmap.  Please use it under its new name.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-fax-derive-0.1
  (package
    (name "rust-fax-derive")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fax_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fas9nvz2yqidlv2my7lvp0n1p4gkjlq2ln791ik3j1dkzy7y79w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/pdf-rs/fax")
    (synopsis "Bitstream matcher for the fax crate")
    (description "Bitstream matcher for the fax crate")
    (license license:expat)))

(define-public rust-fax-0.1
  (package
    (name "rust-fax")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fax" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xb35dd2sn3k22gfwc429dzvsvk6lqkbd04ih95asf0cncmfp7i9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-fax-derive" ,rust-fax-derive-0.1))))
    (home-page "https://github.com/pdf-rs/fax")
    (synopsis
      "Decoder and Encoder for CCITT Group 3 and 4 bi-level image encodings used by fax machines TIFF and PDF.")
    (description
      "Decoder and Encoder for CCITT Group 3 and 4 bi-level image encodings used by fax machines TIFF and PDF.")
    (license license:expat)))

(define-public rust-deflate-0.9
  (package
    (name "rust-deflate")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "deflate" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0w0ww0hrq4bjnihxgbnrri4lj5c8yzg31fyzx36fd9pvvw2vz5az"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-adler32" ,rust-adler32-1)
         ("rust-gzip-header" ,rust-gzip-header-0.3))))
    (home-page "https://github.com/image-rs/deflate-rs")
    (synopsis "A DEFLATE, zlib and gzip encoder written in rust.
")
    (description
      "This package provides a DEFLATE, zlib and gzip encoder written in rust.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-block-modes-0.7
  (package
    (name "rust-block-modes")
    (version "0.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "block-modes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w3jc3n7k4xq98b9mfina4wwpg1fq1s3b0mm5whqialb7q3yi82p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-block-padding" ,rust-block-padding-0.2)
         ("rust-cipher" ,rust-cipher-0.2))))
    (home-page "https://github.com/RustCrypto/block-ciphers")
    (synopsis "Block cipher modes of operation")
    (description "Block cipher modes of operation")
    (license (list license:expat license:asl2.0))))

(define-public rust-aesni-0.10
  (package
    (name "rust-aesni")
    (version "0.10.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aesni" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kmh07fp9hbi1aa8dr2rybbgw8vqz6hjmk34c4w7sbscx7si2bpa"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cipher" ,rust-cipher-0.2)
         ("rust-opaque-debug" ,rust-opaque-debug-0.3))))
    (home-page "https://github.com/RustCrypto/block-ciphers/tree/master/aes")
    (synopsis "DEPRECATED: replaced by the `aes` crate")
    (description "DEPRECATED: replaced by the `aes` crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-aes-soft-0.6
  (package
    (name "rust-aes-soft")
    (version "0.6.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aes-soft" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0wj0fi2pvmlw09yvb1aqf0mfkzrfxmjsf90finijh255ir4wf55y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cipher" ,rust-cipher-0.2)
         ("rust-opaque-debug" ,rust-opaque-debug-0.3))))
    (home-page "https://github.com/RustCrypto/block-ciphers/tree/master/aes")
    (synopsis "DEPRECATED: replaced by the `aes` crate")
    (description "DEPRECATED: replaced by the `aes` crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-aes-0.6
  (package
    (name "rust-aes")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0q85mw70mgr4glza9y9lrs9nxfa1cdcqzfk6wx0smb3623pr2hw8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-aes-soft" ,rust-aes-soft-0.6)
         ("rust-aesni" ,rust-aesni-0.10)
         ("rust-cipher" ,rust-cipher-0.2))))
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

(define-public rust-pdf-0.7
  (package
    (name "rust-pdf")
    (version "0.7.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pdf" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1n9h8k1r02p92pn831bw2vxkv0lvbskizhypd0s3z72f5x5n8j3g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-aes" ,rust-aes-0.6)
         ("rust-block-modes" ,rust-block-modes-0.7)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-deflate" ,rust-deflate-0.9)
         ("rust-fax" ,rust-fax-0.1)
         ("rust-glob" ,rust-glob-0.3)
         ("rust-inflate" ,rust-inflate-0.4)
         ("rust-itertools" ,rust-itertools-0.10)
         ("rust-jpeg-decoder" ,rust-jpeg-decoder-0.1)
         ("rust-log" ,rust-log-0.4)
         ("rust-md5" ,rust-md5-0.7)
         ("rust-memmap" ,rust-memmap-0.7)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-ordermap" ,rust-ordermap-0.4)
         ("rust-pdf-derive" ,rust-pdf-derive-0.1)
         ("rust-sha2" ,rust-sha2-0.9)
         ("rust-snafu" ,rust-snafu-0.6)
         ("rust-stringprep" ,rust-stringprep-0.1)
         ("rust-tempfile" ,rust-tempfile-3)
         ("rust-weezl" ,rust-weezl-0.1))))
    (home-page "https://github.com/pdf-rs")
    (synopsis "PDF reader")
    (description "PDF reader")
    (license license:expat)))
