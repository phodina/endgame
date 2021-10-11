(define-module (endgame packages mkcert)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public go-github-com-jessevdk-go-flags
  (package
    (name "go-github-com-jessevdk-go-flags")
    (version "1.5.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jessevdk/go-flags")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "13ixw1yx4bvcj66lkc8zgwf9j7gkvj686g991gycdsafvdvca0lj"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jessevdk/go-flags"))
    (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://github.com/jessevdk/go-flags")
    (synopsis "go-flags: a go library for parsing command line arguments")
    (description
      "Package flags provides an extensive command line option parser.
The flags package is similar in functionality to the go built-in flag package
but provides more options and uses reflection to provide a convenient and
succinct way of specifying command line options.
")
    (license license:bsd-3)))

(define-public go-howett-net-plist
  (package
    (name "go-howett-net-plist")
    (version "0.0.0-20201203080718-1454fab16a06")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/DHowett/go-plist")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "01c9wmhny2rxywcjipq1xa0xw4qm7yd001239grwxcja3b4n45v8"))))
    (build-system go-build-system)
    (arguments '(#:import-path "howett.net/plist"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
        ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
        ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
        ("go-github-com-jessevdk-go-flags" ,go-github-com-jessevdk-go-flags)))
    (home-page "https://howett.net/plist")
    (synopsis "plist - A pure Go property list transcoder")
    (description
      "Package plist implements encoding and decoding of Apple's \"property list\" format.
Property lists come in three sorts: plain text (GNUStep and OpenStep), XML and binary.
plist supports all of them.
The mapping between property list and Go objects is described in the documentation for the Marshal and Unmarshal functions.
")
    (license unknown-license!)))

(define-public go-github-com-filosottile-mkcert
  (package
    (name "go-github-com-filosottile-mkcert")
    (version "1.4.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/FiloSottile/mkcert")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0q0069ripnpb027krc4yk47552xl5rp0ymxf1j2mln9wdmfq65ba"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/FiloSottile/mkcert"))
    (propagated-inputs
      `(("go-software-sslmate-com-src-go-pkcs12"
         ,go-software-sslmate-com-src-go-pkcs12)
        ("go-howett-net-plist" ,go-howett-net-plist)
        ("go-honnef-co-go-tools" ,go-honnef-co-go-tools)
        ("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-golang-org-x-net" ,go-golang-org-x-net)))
    (home-page "https://github.com/FiloSottile/mkcert")
    (synopsis "mkcert")
    (description
      "Command mkcert is a simple zero-config tool to make development certificates.
")
    (license license:bsd-3)))
