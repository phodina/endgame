(define-module (endgame packages lbry)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages autotools)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public fastlbry-terminal
(package
  (name "fastlbry-terminal")
  (version "0.5")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://notabug.org/canadianotaku/FastLBRY-terminal")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1jprvlyd7507is0bmmakvfhzzvm1bgm8dq2m9c0xl6zh4kr2frhs"))))
  (build-system gnu-build-system)
  (native-inputs `(("autoconf" ,autoconf)
                   ("automake" ,automake)))
  (synopsis "Get date and time based on RFC 868")
  (description "This packages provides a fully featured, terminal application
to interact with LBRY. It will allow watching videos, download files, view
and send comments, upload new files.")
  (home-page "https://notabug.org/canadianotaku/FastLBRY-terminal")
  (license license:gpl3+)))
