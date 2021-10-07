(define-module (endgame packages delta)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-vte-0.10
  (package
    (name "rust-vte")
    (version "0.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "vte" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10srmy9ssircrwsb5lpx3fbhx71460j77kvz0krz38jcmf9fdg3c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arrayvec" ,rust-arrayvec-0.5)
         ("rust-utf8parse" ,rust-utf8parse-0.2)
         ("rust-vte-generate-state-changes"
          ,rust-vte-generate-state-changes-0.1))))
    (home-page "https://github.com/alacritty/vte")
    (synopsis "Parser for implementing terminal emulators")
    (description "Parser for implementing terminal emulators")
    (license (list license:asl2.0 license:expat))))

(define-public rust-structopt-derive-0.4
  (package
    (name "rust-structopt-derive")
    (version "0.4.16")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "structopt-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fnhfbvqasx2n9ak57vi3d2r6d55xmjz2vfg4lqsqhwr5j586k8k"))))
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
    (home-page "https://github.com/TeXitoi/structopt")
    (synopsis
      "Parse command line argument by defining a struct, derive crate.")
    (description
      "Parse command line argument by defining a struct, derive crate.")
    (license (list license:asl2.0 license:expat))))

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

(define-public rust-structopt-0.3
  (package
    (name "rust-structopt")
    (version "0.3.23")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "structopt" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yhb7kr7r0a7jvsz7wi6r1d7kllsivbg2g07vc5mxqk7y479b7dz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-clap" ,rust-clap-2)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-paw" ,rust-paw-1)
         ("rust-structopt-derive" ,rust-structopt-derive-0.4))))
    (home-page "https://github.com/TeXitoi/structopt")
    (synopsis "Parse command line argument by defining a struct.")
    (description "Parse command line argument by defining a struct.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-itertools-0.10
  (package
    (name "rust-itertools")
    (version "0.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "itertools" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bsyxnm20x05rwc5qskrqy4cfswrcadzlwc26dkqml6hz64vipb9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-either" ,rust-either-1))))
    (home-page "https://github.com/rust-itertools/itertools")
    (synopsis
      "Extra iterator adaptors, iterator methods, free functions, and macros.")
    (description
      "Extra iterator adaptors, iterator methods, free functions, and macros.")
    (license (list license:expat license:asl2.0))))

(define-public rust-error-chain-0.12
  (package
    (name "rust-error-chain")
    (version "0.12.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "error-chain" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1z6y5isg0il93jp287sv7pn10i4wrkik2cpyk376wl61rawhcbrd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/rust-lang-nursery/error-chain")
    (synopsis "Yet another error boilerplate library.")
    (description "Yet another error boilerplate library.")
    (license (list license:expat license:asl2.0))))

(define-public rust-bytelines-2
  (package
    (name "rust-bytelines")
    (version "2.2.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bytelines" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0pv1dwbbqws84v31f64g6b3nxi0jbhi59cipwpg6651ys504w7kr"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/whitfin/bytelines")
    (synopsis "Read input lines as byte slices for high efficiency")
    (description "Read input lines as byte slices for high efficiency")
    (license license:expat)))

(define-public rust-box-drawing-0.1
  (package
    (name "rust-box-drawing")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "box_drawing" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0jx4rrxy4xmgmplmgl398vrng67sfl8qny7n7d91fyw6zpaxh9za"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://gitlab.com/chronos.alfa/box_drawing.git")
    (synopsis
      "A very simple library containing constants for UTF-8 box drawing.")
    (description
      "This package provides a very simple library containing constants for UTF-8 box drawing.")
    (license license:expat)))

(define-public rust-ansi-colours-1
  (package
    (name "rust-ansi-colours")
    (version "1.0.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ansi_colours" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "13yjl5ywszm46nsc25xkvas64pnxrf68yv9wrgqxk6m471hzpqk0"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t #:cargo-inputs (("rust-cc" ,rust-cc-1))))
    (home-page "https://github.com/mina86/ansi_colours")
    (synopsis "true-colour â\x86\x94 ANSI terminal palette converter")
    (description "true-colour â\x86\x94 ANSI terminal palette converter")
    (license license:lgpl3+)))

(define-public rust-git-delta-0.8
  (package
    (name "rust-git-delta")
    (version "0.8.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "git-delta" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vk0b2l13w9yxkcrladh5gj8446fryryi08lrbzxy4klffwrk3zc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-ansi-colours" ,rust-ansi-colours-1)
         ("rust-ansi-term" ,rust-ansi-term-0.12)
         ("rust-atty" ,rust-atty-0.2)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-box-drawing" ,rust-box-drawing-0.1)
         ("rust-bytelines" ,rust-bytelines-2)
         ("rust-console" ,rust-console-0.14)
         ("rust-dirs-next" ,rust-dirs-next-2)
         ("rust-error-chain" ,rust-error-chain-0.12)
         ("rust-git2" ,rust-git2-0.13)
         ("rust-grep-cli" ,rust-grep-cli-0.1)
         ("rust-itertools" ,rust-itertools-0.10)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-pathdiff" ,rust-pathdiff-0.2)
         ("rust-regex" ,rust-regex-1)
         ("rust-shell-words" ,rust-shell-words-1)
         ("rust-structopt" ,rust-structopt-0.3)
         ("rust-syntect" ,rust-syntect-4)
         ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
         ("rust-unicode-width" ,rust-unicode-width-0.1)
         ("rust-vte" ,rust-vte-0.10)
         ("rust-xdg" ,rust-xdg-2))))
    (home-page "https://github.com/dandavison/delta")
    (synopsis "A syntax-highlighting pager for git")
    (description "This package provides a syntax-highlighting pager for git")
    (license license:expat)))
