(define-module (endgame packages uv3dp)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public go-github-com-go-restruct-restruct
  (package
    (name "go-github-com-go-restruct-restruct")
    (version "1.2.0-alpha")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-restruct/restruct")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "1vpb5zr6cl4k0npdhi1pfzhzfivym04zci6bj9gbrgrckji5bcvd"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/go-restruct/restruct"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify"
         ,go-github-com-stretchr-testify)
        ("go-github-com-pkg-errors"
         ,go-github-com-pkg-errors)))
    (home-page
      "https://github.com/go-restruct/restruct")
    (synopsis "restruct")
    (description
      "Package restruct implements packing and unpacking of raw binary formats.
")
    (license license:isc)))

(define-public go-github-com-google-go-cmp
  (package
    (name "go-github-com-google-go-cmp")
    (version "0.5.6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/google/go-cmp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "0lrb0pacv5iy3m6fn1qb3nv7zwimfhpzqq8f6hwpwx88cx3g6p1s"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/google/go-cmp"))
    (propagated-inputs
      `(("go-golang-org-x-xerrors"
         ,go-golang-org-x-xerrors)))
    (home-page "https://github.com/google/go-cmp")
    (synopsis "Package for equality of Go values")
    (description
      "This package is intended to be a more powerful and safer alternative to
@code{reflect.DeepEqual} for comparing whether two values are semantically equal.")
    (license license:bsd-3)))

(define-public go-github-com-ezrec-uv3dp
  (package
    (name "go-github-com-ezrec-uv3dp")
    (version "1.2.11")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ezrec/uv3dp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "19rd281h7fsv614ahc7673cl2h9iim5h9dz043waqqxf2fn6ilrj"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/ezrec/uv3dp"))
    (propagated-inputs
      `(("go-golang-org-x-image" ,go-golang-org-x-image)
        ("go-github-com-spf13-pflag"
         ,go-github-com-spf13-pflag)
        ("go-github-com-google-go-cmp-cmp"
         ,go-github-com-google-go-cmp-cmp)
        ("go-github-com-go-restruct-restruct"
         ,go-github-com-go-restruct-restruct)))
    (home-page "https://github.com/ezrec/uv3dp")
    (synopsis "uv3dp")
    (description
      "Package uv3dp is a set of tools for data exchange between UV Resin based 3D printers
")
    (license license:expat)))
