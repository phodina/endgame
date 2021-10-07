(define-module (endgame packages prof)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public go-github-com-chzyer-logex
  (package
    (name "go-github-com-chzyer-logex")
    (version "1.1.10")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/chzyer/logex")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "08pbjj3wx9acavlwyr055isa8a5hnmllgdv5k6ra60l5y1brmlq4"))))
    (build-system go-build-system)
    (arguments 
      '(#:tests? #f
	#:import-path "github.com/chzyer/logex"))
    (home-page "https://github.com/chzyer/logex")
    (synopsis #f)
    (description #f)
    (license #f)))

(define-public go-github-com-chzyer-readline
  (package
    (name "go-github-com-chzyer-readline")
    (version "0.0.0-20180603132655-2972be24d48e")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/chzyer/readline")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "104q8dazj8yf6b089jjr82fy9h1g80zyyzvp3g8b44a7d8ngjj6r"))))
    (build-system go-build-system)
    (arguments 
      '(#:tests? #f
	#:import-path "github.com/chzyer/readline"))
    (home-page "https://github.com/chzyer/readline")
    (synopsis "Guide")
    (description
      "Readline is a pure go implementation for GNU-Readline kind library.
")
    (license license:expat)))

(define-public go-github-com-chzyer-test
  (package
    (name "go-github-com-chzyer-test")
    (version "0.0.0-20210722231415-061457976a23")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/chzyer/test")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1jjskijacwzz0qxzrbwsglpg5vil7v4xaq8l40r2fhd2icl9hz7a"))))
    (build-system go-build-system)
    (arguments 
      '(#:tests? #f
	#:import-path "github.com/chzyer/test"))
    (propagated-inputs
       `(("go-github-com-chzyer-logex" ,go-github-com-chzyer-logex)))
    (home-page "https://github.com/chzyer/test")
    (synopsis "test")
    (description #f)
    (license license:expat)))

(define-public go-github-com-ianlancetaylor-demangle
  (package
    (name "go-github-com-ianlancetaylor-demangle")
    (version "0.0.0-20210905161508-09a460cdf81d")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ianlancetaylor/demangle")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "05qsmnv4vjy5xz916955frhna8jfg87mmqpznmygkd7qlh9gvki9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ianlancetaylor/demangle"))
    (home-page "https://github.com/ianlancetaylor/demangle")
    (synopsis "github.com/ianlancetaylor/demangle")
    (description
      "Package demangle defines functions that demangle GCC/LLVM
C++ and Rust symbol names.
This package recognizes names that were mangled according to the C++ ABI
defined at @url{http://codesourcery.com/cxx-abi/,http://codesourcery.com/cxx-abi/} and the Rust ABI
defined at
@url{https://rust-lang.github.io/rfcs/2603-rust-symbol-name-mangling-v0.html,https://rust-lang.github.io/rfcs/2603-rust-symbol-name-mangling-v0.html}
")
    (license license:bsd-3)))

(define-public go-github-com-google-pprof
  (package
    (name "go-github-com-google-pprof")
    (version "0.0.0-20211001005136-7fe48b4c820b")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/google/pprof")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "05nr3igdigs1586qplwfm17hfw0v81jy745g6vayq7cbplljfjb1"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/google/pprof"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-ianlancetaylor-demangle"
         ,go-github-com-ianlancetaylor-demangle)
        ("go-github-com-chzyer-test" ,go-github-com-chzyer-test)
        ("go-github-com-chzyer-readline" ,go-github-com-chzyer-readline)
        ("go-github-com-chzyer-logex" ,go-github-com-chzyer-logex)))
    (home-page "https://github.com/google/pprof")
    (synopsis "Introduction")
    (description
      "pprof is a tool for collection, manipulation and visualization
of performance profiles.
")
    (license license:asl2.0)))
go-github-com-google-pprof
