(define-module (endgame packages wally)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages syncthing)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

; https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=zsa-wally
(define-public go-github-com-google-gousb
  (package
    (name "go-github-com-google-gousb")
    (version "1.1.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/google/gousb")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1sb3m97ddcw6imr7jspncmviyj08l5fxk87irip7kq6pmj9ln3la"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/google/gousb"))
    (home-page "https://github.com/google/gousb")
    (synopsis "Introduction")
    (description
      "Package gousb provides an low-level interface to attached USB devices.
")
    (license license:asl2.0)))

(define-public go-github-com-marcinbor85-gohex
  (package
    (name "go-github-com-marcinbor85-gohex")
    (version "0.0.0-20210308104911-55fb1c624d84")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/marcinbor85/gohex")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0klzqnvmkx6xvy9kc7hbsgpsdcrswnljsq8frf0jxddxi27qh1hn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/marcinbor85/gohex"))
    (home-page "https://github.com/marcinbor85/gohex")
    (synopsis "gohex")
    (description
      "This package provides a Go library for parsing Intel HEX files")
    (license license:expat)))

(define-public go-github-com-abadojack-whatlanggo
  (package
    (name "go-github-com-abadojack-whatlanggo")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/abadojack/whatlanggo")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1pidd5dqvcnqjjka12h0clj3mmq0j3bpanf9153schsx85xz7mzx"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/abadojack/whatlanggo"))
    (home-page "https://github.com/abadojack/whatlanggo")
    (synopsis "Whatlanggo")
    (description
      "Package whatlanggo detects natural languages and scripts ( writing systems ).
Languages are represented by a determined list of constants while scripts are
represented by *unicode.RangeTable.
")
    (license license:expat)))

(define-public go-github-com-go-playground-colors
  (package
    (name "go-github-com-go-playground-colors")
    (version "1.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-playground/colors")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "090z2m5ns9m66yhw7kasfq487rmn8v2fry1jkwj1lkchzwnmy08q"))))
    (build-system go-build-system)
    (arguments '(#:tests? #f
		 #:import-path "github.com/go-playground/colors"))
    (home-page "https://github.com/go-playground/colors")
    (synopsis "Package  colors")
    (description
      "Go color manipulation, conversion and printing library/utility")
    (license license:expat)))

(define-public go-github-com-gorilla-websocket
  (package
    (name "go-github-com-gorilla-websocket")
    (version "1.4.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gorilla/websocket")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0mkm9w6kjkrlzab5wh8p4qxkc0icqawjbvr01d2nk6ykylrln40s"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gorilla/websocket"))
    (home-page "https://github.com/gorilla/websocket")
    (synopsis "Gorilla WebSocket")
    (description
      "Package websocket implements the WebSocket protocol defined in @url{https://rfc-editor.org/rfc/rfc6455.html,RFC 6455}.
")
    (license license:bsd-2)))

(define-public go-github-com-jackmordaunt-icns
  (package
    (name "go-github-com-jackmordaunt-icns")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/JackMordaunt/icns")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1q0cliwgj24vb9fr6k1wbqmv9iq3bafl6i5rvw6afpq3ykxh37kr"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jackmordaunt/icns"))
    (home-page "https://github.com/jackmordaunt/icns")
    (synopsis "icns")
    (description
      "Package icns implements an encoder for Apple's `.icns` file format.
Reference: \"@url{https://en.wikipedia.org/wiki/Apple_Icon_Image_format,https://en.wikipedia.org/wiki/Apple_Icon_Image_format}\".
")
    (license license:expat)))

(define-public go-github-com-kennygrant-sanitize
  (package
    (name "go-github-com-kennygrant-sanitize")
    (version "1.2.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/kennygrant/sanitize")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "06f2ljnic3215ihzc5px1q25548ijpixhmn4537gf507n1sxg7iq"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/kennygrant/sanitize"))
    (home-page "https://github.com/kennygrant/sanitize")
    (synopsis "sanitize")
    (description "Package sanitize provides functions for sanitizing text.
")
    (license license:bsd-3)))

(define-public go-github-com-konsorten-go-windows-terminal-sequences
  (package
    (name "go-github-com-konsorten-go-windows-terminal-sequences")
    (version "1.0.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/konsorten/go-windows-terminal-sequences")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1yrsd4s8vhjnxhwbigirymz89dn6qfjnhn28i33vvvdgf96j6ypl"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/konsorten/go-windows-terminal-sequences"))
    (home-page "https://github.com/konsorten/go-windows-terminal-sequences")
    (synopsis "Windows Terminal Sequences")
    (description
      "This library allow for enabling Windows terminal color support for Go.")
    (license license:expat)))

(define-public go-github-com-matryer-is
  (package
    (name "go-github-com-matryer-is")
    (version "1.4.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/matryer/is")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0bs452ba2qh2a9ir7r8ixpf2slc6vpyg0041v9kn5c0d1zbb5wsc"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/matryer/is"))
    (home-page "https://github.com/matryer/is")
    (synopsis "is")
    (description
      "Package is provides a lightweight extension to the
standard library's testing capabilities.
")
    (license license:expat)))

(define-public go-github-com-leaanthony-slicer
  (package
    (name "go-github-com-leaanthony-slicer")
    (version "1.6.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/leaanthony/slicer")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "17kij9rd35s9f8j92390zisv7l06hli1p9fks33bi708ls3w35v7"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/leaanthony/slicer"))
    (propagated-inputs
      `(("go-github-com-matryer-is" ,go-github-com-matryer-is)))
    (home-page "https://github.com/leaanthony/slicer")
    (synopsis "Install")
    (description
      "Package slicer contains utility classes for handling slices
")
    (license license:expat)))

(define-public go-github-com-leaanthony-synx
  (package
    (name "go-github-com-leaanthony-synx")
    (version "0.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/leaanthony/synx")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0cfhmfa85jzjkjg7gpqhairsfwcdlikihjh061pwvz0240jyk36r"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/leaanthony/synx"))
    (home-page "https://github.com/leaanthony/synx")
    (synopsis "Synx")
    (description "Simple wrappers to allow concurrent writes to scalar types.")
    (license license:expat)))

(define-public go-github-com-leaanthony-wincursor
  (package
    (name "go-github-com-leaanthony-wincursor")
    (version "0.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/leaanthony/wincursor")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0c2vfq7i9h4d9j752yl4p9x98xyygwyznfy8h7ysz0rc7vq5l2jf"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/leaanthony/wincursor"))
    (home-page "https://github.com/leaanthony/wincursor")
    (synopsis "WinCursor")
    (description
      "This is a simple library to show/hide the cursor in the windows terminal.  Works in both Command Prompt and PowerShell.")
    (license license:expat)))

(define-public go-github-com-leaanthony-spinner
  (package
    (name "go-github-com-leaanthony-spinner")
    (version "0.5.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/leaanthony/spinner")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0fql5srdvhkqsx6wr2jhn7vvl8j0ad0jsxl4x7lwgyy5f0gq38pq"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/leaanthony/spinner"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-leaanthony-wincursor"
         ,go-github-com-leaanthony-wincursor)
        ("go-github-com-leaanthony-synx" ,go-github-com-leaanthony-synx)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)))
    (home-page "https://github.com/leaanthony/spinner")
    (synopsis "Spinner")
    (description
      "This package provides a simple, configurable, multi-platform terminal spinner.")
    (license license:expat)))

(define-public go-github-com-nfnt-resize
  (package
    (name "go-github-com-nfnt-resize")
    (version "0.0.0-20180221191011-83c6a9932646")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nfnt/resize")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "005cpiwq28krbjf0zjwpfh63rp4s4is58700idn24fs3g7wdbwya"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nfnt/resize"))
    (home-page "https://github.com/nfnt/resize")
    (synopsis
      "This package is no longer being updated! Please look for alternatives if that bothers you.")
    (description "Package resize implements various image resizing methods.
")
    (license license:isc)))

(define-public go-github-com-pkg-browser
  (package
    (name "go-github-com-pkg-browser")
    (version "0.0.0-20210911075715-681adbf594b8")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/pkg/browser")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1d40cz35x6f5hhals00d2h08l2r9vchpdmc9742s80qbl9fmr615"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/pkg/browser"))
    (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://github.com/pkg/browser")
    (synopsis "browser")
    (description
      "Package browser provides helpers to open files, readers, and urls in a browser window.
")
    (license license:bsd-2)))

(define-public go-github-com-syossan27-tebata
  (package
    (name "go-github-com-syossan27-tebata")
    (version "0.0.0-20180602121909-b283fe4bc5ba")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/syossan27/tebata")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1m7n3xr35vzm8p51jx0i4la379zpi4w5jl5m34js9yv9h8yi87ym"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/syossan27/tebata"))
    (home-page "https://github.com/syossan27/tebata")
    (synopsis "Tebataï¼\x88æ\x89\x8bæ\x97\x97ï¼\x89")
    (description "Simple linux signal handler for Go")
    (license license:expat)))

(define-public go-github-com-alecaivazis-survey-v2
  (package
    (name "go-github-com-alecaivazis-survey-v2")
    (version "2.3.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/AlecAivazis/survey")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1ipzr2p3j7il4rl4fdi6zsn739p81k2achsbj1s4z5vfrb3jj5kn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/AlecAivazis/survey/v2"))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-term" ,go-golang-org-x-term)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
        ("go-github-com-mgutz-ansi" ,go-github-com-mgutz-ansi)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-kr-pty" ,go-github-com-kr-pty)
        ("go-github-com-kballard-go-shellquote"
         ,go-github-com-kballard-go-shellquote)
        ("go-github-com-hinshun-vt10x" ,go-github-com-hinshun-vt10x)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
        ("go-github-com-netflix-go-expect" ,go-github-com-netflix-go-expect)))
    (home-page "https://github.com/AlecAivazis/survey")
    (synopsis "Survey")
    (description
      "This package provides a library for building interactive and accessible prompts on terminals supporting ANSI escape sequences.")
    (license license:expat)))

(define-public go-github-com-creack-pty
  (package
    (name "go-github-com-creack-pty")
    (version "1.1.17")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/creack/pty")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "09lcq5bw1dwppxjia05sj4fy7gbk62vishfz1bgrbd1r06i57mjf"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/creack/pty"))
    (home-page "https://github.com/creack/pty")
    (synopsis "pty")
    (description
      "Package pty provides functions for working with Unix terminals.
")
    (license license:expat)))

(define-public go-github-com-kr-pty
  (package
    (name "go-github-com-kr-pty")
    (version "1.1.8")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/kr/pty")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1vcl6f90n0f8s8b4fyh0832ilybjqcypqyj233lqj1hx62fvgdbk"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/kr/pty"))
    (propagated-inputs
      `(("go-github-com-creack-pty" ,go-github-com-creack-pty)))
    (home-page "https://github.com/kr/pty")
    (synopsis "pty")
    (description
      "Package pty is a wrapper for github.com/creack/pty, which provides
functions for working with Unix terminals.
")
    (license license:expat)))

(define-public go-github-com-netflix-go-expect
  (package
    (name "go-github-com-netflix-go-expect")
    (version "0.0.0-20211003183012-e1a7c020ce25")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Netflix/go-expect")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0614jfhr1an59mqdns3p6fjcjdbadvpbq4j5azjh7warq21qf6i4"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/Netflix/go-expect"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-kr-pty" ,go-github-com-kr-pty)))
    (home-page "https://github.com/Netflix/go-expect")
    (synopsis "go-expect")
    (description
      "Package expect provides an expect-like interface to automate control of
applications.  It is unlike expect in that it does not spawn or manage
process lifecycle.  This package only focuses on expecting output and sending
input through it's psuedoterminal.
")
    (license license:asl2.0)))

(define-public go-github-com-hinshun-vt10x
  (package
    (name "go-github-com-hinshun-vt10x")
    (version "0.0.0-20180809195222-d55458df857c")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hinshun/vt10x")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0vwsp5iii7pf4na8pkd7cn3bawkwnsimkv1sysy7bslclg5jm370"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hinshun/vt10x"))
    (home-page "https://github.com/hinshun/vt10x")
    (synopsis "vt10x")
    (description
      "Package terminal is a vt10x terminal emulation backend, influenced
largely by st, rxvt, xterm, and iTerm as reference.  Use it for terminal
muxing, a terminal emulation frontend, or wherever else you need
terminal emulation.
")
    (license license:expat)))

(define-public go-gopkg-in-alecaivazis-survey-v1
  (package
    (name "go-gopkg-in-alecaivazis-survey-v1")
    (version "1.8.8")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://gopkg.in/AlecAivazis/survey.v1")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "10b5x3bpfplvqisd8klmiag7r2hkysprswdjyrdq8kscwmpnsh9b"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "gopkg.in/AlecAivazis/survey.v1"
        #:unpack-path
        "gopkg.in/AlecAivazis/survey.v1"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-mgutz-ansi" ,go-github-com-mgutz-ansi)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-kballard-go-shellquote"
         ,go-github-com-kballard-go-shellquote)
        ("go-github-com-hinshun-vt10x" ,go-github-com-hinshun-vt10x)
        ("go-github-com-netflix-go-expect" ,go-github-com-netflix-go-expect)
        ("go-github-com-alecaivazis-survey-v2"
         ,go-github-com-alecaivazis-survey-v2)))
    (home-page "https://gopkg.in/AlecAivazis/survey.v1")
    (synopsis "Survey")
    (description
      "This package provides a library for building interactive prompts.")
    (license license:expat)))

(define-public go-github-com-wailsapp-wails
  (package
    (name "go-github-com-wailsapp-wails")
    (version "1.16.7")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/wailsapp/wails")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "11yxkwvg1xjsczzg0adljw7j94anljql6xg339a287irgs8hg9xc"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/wailsapp/wails"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
        ("go-gopkg-in-alecaivazis-survey-v1"
         ,go-gopkg-in-alecaivazis-survey-v1)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-image" ,go-golang-org-x-image)
        ("go-github-com-syossan27-tebata" ,go-github-com-syossan27-tebata)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-pkg-browser" ,go-github-com-pkg-browser)
        ("go-github-com-nfnt-resize" ,go-github-com-nfnt-resize)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-leaanthony-spinner" ,go-github-com-leaanthony-spinner)
        ("go-github-com-leaanthony-slicer" ,go-github-com-leaanthony-slicer)
        ("go-github-com-konsorten-go-windows-terminal-sequences"
         ,go-github-com-konsorten-go-windows-terminal-sequences)
        ("go-github-com-kennygrant-sanitize"
         ,go-github-com-kennygrant-sanitize)
        ("go-github-com-jackmordaunt-icns" ,go-github-com-jackmordaunt-icns)
        ("go-github-com-gorilla-websocket" ,go-github-com-gorilla-websocket)
        ("go-github-com-go-playground-colors"
         ,go-github-com-go-playground-colors)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-abadojack-whatlanggo"
         ,go-github-com-abadojack-whatlanggo)
        ("go-github-com-masterminds-semver"
         ,go-github-com-masterminds-semver)))
    (home-page "https://github.com/wailsapp/wails")
    (synopsis "Internationalization")
    (description
      "
   Build desktop applications using Go & Web Technologies.
   @url{https://github.com/wailsapp/wails/blob/master/LICENSE,(img (@ (src https://img.shields.io/badge/License-MIT-blue.svg)))}
   @url{https://goreportcard.com/report/github.com/wailsapp/wails,(img (@ (src https://goreportcard.com/badge/github.com/wailsapp/wails)))}
   @url{http://godoc.org/github.com/wailsapp/wails,(img (@ (src https://img.shields.io/badge/godoc-reference-blue.svg)))}
   @url{https://www.codefactor.io/repository/github/wailsapp/wails,(img (@ (src https://www.codefactor.io/repository/github/wailsapp/wails/badge) (alt CodeFactor)))}
   @url{https://github.com/wailsapp/wails/issues,(img (@ (src https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat) (alt CodeFactor)))}
   @url{https://app.fossa.io/projects/git%2Bgithub.com%2Fwailsapp%2Fwails?ref=badge_shield,(img (@ (src https://app.fossa.io/api/projects/git%2Bgithub.com%2Fwailsapp%2Fwails.svg?type=shield)))}
   @url{https://houndci.com,(img (@ (src https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)))}
   @url{https://github.com/avelino/awesome-go,(img (@ (src https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg) (alt Awesome)))}
   @url{https://github.com/wailsapp/wails/workflows/release/badge.svg?branch=master,(img (@ (src https://github.com/wailsapp/wails/workflows/release/badge.svg?branch=master) (alt Release Pipelines)))}
")
    (license license:expat)))

(define-public go-github-com-zsa-wally
  (package
    (name "go-github-com-zsa-wally")
    (version "0.0.0-20211004233800-549dd2aef377")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/zsa/wally")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1z6xgnmw1w4zpwfjrjvgqfkimjda5f9n29pap6lri43ypkk50ghp"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/zsa/wally"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-image" ,go-golang-org-x-image)
        ("go-github-com-wailsapp-wails" ,go-github-com-wailsapp-wails)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-pkg-browser" ,go-github-com-pkg-browser)
        ("go-github-com-marcinbor85-gohex" ,go-github-com-marcinbor85-gohex)
        ("go-github-com-leaanthony-slicer" ,go-github-com-leaanthony-slicer)
        ("go-github-com-google-gousb" ,go-github-com-google-gousb)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-masterminds-semver"
         ,go-github-com-masterminds-semver)))
    (home-page "https://github.com/zsa/wally")
    (synopsis "Wally")
    (description
      "Flash your @url{https://ergodox-ez.com,ZSA Keyboard} the EZ way.")
    (license license:expat)))
