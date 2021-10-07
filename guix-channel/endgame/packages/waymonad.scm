(define-module (endgame packages waymonad)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages haskell-check)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system haskell)
  #:use-module ((guix licenses) #:prefix license:))

(define-public waymonad
  (let ((commit "ba576b4cb325a0b69e036efd8733c75a8cd2c49f")
	(revision "1"))
(package
  (name "waymonad")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/L-as/waymonad")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1ykqvj8vmy2lynb1dv5dgzjy48pzml29fwxij232p9hxmchznjxx"))))
  (build-system haskell-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(;"ghc-hfuse -any,
("ghc-clock" ,ghc-clock)
("ghc-composition" ,ghc-composition)
("ghc-config-schema" ,ghc-config-schema)
("ghc-config-value" ,ghc-config-value)
("ghc-data-default" ,ghc-data-default)
("ghc-formatting" ,ghc-formatting)
("ghc-hayland" ,ghc-hayland)
;;("ghc-hsroots" ,ghc-hsroots)
;;("ghc-libinput" ,ghc-libinput)
("ghc-network" ,ghc-network)
("ghc-safe" ,ghc-safe)
("ghc-semigroupoids" ,ghc-semigroupoids)
;;("ghc-unliftio" ,ghc-uniliftio)
;;("ghc-unliftio-core" ,ghc-unliftio-core)
;;("ghc-waymonad-scanner" ,ghc-waymonad-scanner)
("ghc-xdg-basedir" ,ghc-xdg-basedir)
;;("ghc-xkbcommon" ,ghc-xkbcommon))))
))
  (synopsis "Xmonad port to Wayland")
  (description "")
  (home-page "https://github.com/L-as/waymonad")
  (license license:lgpl2.1))))

(define-public ghc-config-value
  (package
    (name "ghc-config-value")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://hackage.haskell.org/package/config-value/config-value-"
               version
               ".tar.gz"))
        (sha256
          (base32 "086jv01a737547w6x9w1951vq0p7mx6vqw9ifw5kcs5nvhj5rx2q"))))
    (build-system haskell-build-system)
    (arguments
      `(#:cabal-revision
        ("1" "0wa3grq566fpkq5g9bcszwjv96drq6b3qg2w32rv8m00pd1j0n27")))
    (inputs `(("ghc-happy" ,ghc-happy)
	      ("ghc-alex" ,ghc-alex)))
    (home-page "https://github.com/glguy/config-value")
    (synopsis "Simple, layout-based value language similar to YAML or JSON")
    (description
      "This package implements a language similar to YAML or JSON but with fewer special cases and fewer dependencies. It emphasizes layout structure for sections and lists, and requires quotes around strings.")
    (license license:expat)))

(define-public ghc-config-schema
  (package
    (name "ghc-config-schema")
    (version "1.2.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://hackage.haskell.org/package/config-schema/config-schema-"
               version
               ".tar.gz"))
        (sha256
          (base32 "10mp76j2gxcb51865lb6cf3nkc2nc7fwarkghb6yz71q6sbrg3yx"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-config-value" ,ghc-config-value)
        ("ghc-free" ,ghc-free)
        ("ghc-kan-extensions" ,ghc-kan-extensions)
        ("ghc-semigroupoids" ,ghc-semigroupoids)))
    (arguments
      `(#:cabal-revision
        ("1" "0wswgb6m2whyxddm214fbrq69d9i2wrr6j2hhq1dn8p3gx91q3kv")))
    (home-page "https://github.com/glguy/config-schema")
    (synopsis "Schema definitions for the config-value package")
    (description
      "This package makes it possible to define schemas for use when loading configuration files using the config-value format. These schemas can be used to process a configuration file into a Haskell value or to automatically generate documentation for the file format.")
    (license license:isc)))

(define-public ghc-composition
  (package
    (name "ghc-composition")
    (version "1.0.2.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://hackage.haskell.org/package/composition/composition-"
               version
               ".tar.gz"))
        (sha256
          (base32 "0bnl8kmaqbjnznqgnjj2gr2qygln6y6493prk0anpd8zdylzf2xm"))))
    (build-system haskell-build-system)
    (home-page "http://hackage.haskell.org/package/composition")
    (synopsis "Combinators for unorthodox function composition")
    (description "")
    (license license:bsd-3)))

(define-public ghc-formatting
  (package
    (name "ghc-formatting")
    (version "7.1.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://hackage.haskell.org/package/formatting/formatting-"
               version
               ".tar.gz"))
        (sha256
          (base32 "1vrc2i1b6lxx2aq5hysfl3gl6miq2wbhxc384axvgrkqjbibnqc0"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-clock" ,ghc-clock)
        ("ghc-old-locale" ,ghc-old-locale)
        ("ghc-scientific" ,ghc-scientific)
        ("ghc-double-conversion" ,ghc-double-conversion)))
    (native-inputs `(("ghc-hspec" ,ghc-hspec)))
    (home-page "https://github.com/AJChapman/formatting#readme")
    (synopsis
      "Combinator-based type-safe formatting (like printf() or FORMAT)")
    (description
      "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package. . See the README at <https://github.com/AJChapman/formatting#readme> for more info.")
    (license license:bsd-3)))

(define-public ghc-data-flags
  (package
    (name "ghc-data-flags")
    (version "0.0.3.4")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://hackage.haskell.org/package/data-flags/data-flags-"
               version
               ".tar.gz"))
        (sha256
          (base32 "183h2dzqrp9wl4sg59sijlhqw5pgi10xgw7cx8vz1s86rkia3hj8"))))
    (build-system haskell-build-system)
    (home-page "https://github.com/mvv/data-flags")
    (synopsis "A package for working with bit masks and flags in general.")
    (description
      "This package provides type classes for flags and corresponding instances for standard numeric types viewed as bit masks.")
    (license license:bsd-3)))

(define-public ghc-hayland
  (package
    (name "ghc-hayland")
    (version "0.1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://hackage.haskell.org/package/hayland/hayland-"
               version
               ".tar.gz"))
        (sha256
          (base32 "0dpisbqfsay8lwpfihw5fmpzi2ajc8qshsawbr4r6x8indy4kdy0"))))
    (build-system haskell-build-system)
    (inputs `(;("ghc-base" ,ghc-base)
              ("ghc-time" ,ghc-time)
	      ("ghc-xml" ,ghc-xml) ("ghc-data-flags" ,ghc-data-flags)))
    (home-page "http://hackage.haskell.org/package/hayland")
    (synopsis "Haskell bindings for the C Wayland library.")
    (description
      "This package contains bindings to the Wayland library, which is used to interface display devices, drawable clients, and window managers. . Wayland exposes a \"fixed\" set of functions, and additionally generates a part of its API from a \"protocol\" file. This package locates that protocol file using pkg-config. . If you want to interface with other protocols (such as Weston's), refer to the readme for instructions.")
    (license license:expat)))

(define-public ghc-data-flags
  (package
    (name "ghc-data-flags")
    (version "0.0.3.4")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://hackage.haskell.org/package/data-flags/data-flags-"
               version
               ".tar.gz"))
        (sha256
          (base32 "183h2dzqrp9wl4sg59sijlhqw5pgi10xgw7cx8vz1s86rkia3hj8"))))
    (build-system haskell-build-system)
    (home-page "https://github.com/mvv/data-flags")
    (synopsis "A package for working with bit masks and flags in general.")
    (description
      "This package provides type classes for flags and corresponding instances for standard numeric types viewed as bit masks.")
    (license license:bsd-3)))

(define-public ghc-cpphs
  (package
    (name "ghc-cpphs")
    (version "1.20.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://hackage.haskell.org/package/cpphs/cpphs-"
               version
               ".tar.gz"))
        (sha256
          (base32 "17wi7fma2qaqdm1hwgaam3fd140v9bpa8ky0wg708h1pqc5v2nbz"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-polyparse" ,ghc-polyparse)))
    (home-page "http://projects.haskell.org/cpphs/")
    (synopsis "A liberalised re-implementation of cpp, the C pre-processor.")
    (description
      "Cpphs is a re-implementation of the C pre-processor that is both more compatible with Haskell, and itself written in Haskell so that it can be distributed with compilers. . This version of the C pre-processor is pretty-much feature-complete and compatible with traditional (K&R) pre-processors.  Additional features include: a plain-text mode; an option to unlit literate code files; and an option to turn off macro-expansion.")
    (license license:lgpl2.0)))

(define-public ghc-time
  (package
    (name "ghc-time")
    (version "1.12")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://hackage.haskell.org/package/time/time-"
               version
               ".tar.gz"))
        (sha256
          (base32 "0xavlg1lsq0fip6mwvphr4xz2iykys4wsn468hr8qdg6xqab0x0b"))))
    (build-system haskell-build-system)
    (native-inputs
      `(("ghc-random" ,ghc-random)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)
        ("ghc-random" ,ghc-random)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)))
    (home-page "https://github.com/haskell/time")
    (synopsis "A time library")
    (description "Time, clocks and calendars")
    (license #f)))

;(define-public ghc-xkbcommon
;  (package
;    (name "ghc-xkbcommon")
;    (version "0.0.3")
;    (source
;      (origin
;        (method url-fetch)
;        (uri (string-append
;               "https://hackage.haskell.org/package/xkbcommon/xkbcommon-"
;               version
;               ".tar.gz"))
;        (sha256
;          (base32 "1zispc65aas383qdjr2sxziyigbi7k9zxdnnlkj8d0q7sq71dd00"))))
;    (build-system haskell-build-system)
;    (inputs
;      `(("ghc-storable-record" ,ghc-storable-record)
;        ("ghc-cpphs" ,ghc-cpphs)
;        ("ghc-data-flags" ,ghc-data-flags)))
;    (home-page "http://hackage.haskell.org/package/xkbcommon")
;    (synopsis "Haskell bindings for libxkbcommon")
;    (description
;      "Wrapper library for libxkbcommon, which is the new alternative for the X11 XKB.h keyboard input API. Specifically, it finds keymap files from disk based on Rule\\/Model\\/Layout\\/Variant\\/Option specifications, and compiles them into a 'Keymap'. From this 'Keymap', a 'KeyboardState' can be constructed which represents the states of various physical buttons such as the shift/alt/ctrl keys, and can give the correct key symbol based on keyboard events. E.g., pressing the @\\<h\\>@ key while @\\<shift\\>@ is pressed produces the @H@ symbol in the common QWERTY keymaps, but in e.g. the Dvorak keymap, it produces the D symbol. . After keymap creation, which libxkbcommon can do based on locale preferences and enviroment variables, this is all handled by routing keyboard events through libxkbcommon. . At this stage, these haskell bindings do not make libxkbcommon look much like a haskell library. For example, in principle the entire libxkbcommon library is just a stateful processor, and has nothing to do with the IO monad. However, because I am not yet a very good haskell programmer, and because in most realistic use cases input data comes from the IO monad anyway, the stateful operations are encoded in the IO monad anyway. . Note that these bindings load the keysym constants from the libxkbcommon C header files at compile time using TH, and similarly keycodes from the Linux header files. These should be present for correct compilation.")
;    (license license:expat)))
; TODO missing dependencies
