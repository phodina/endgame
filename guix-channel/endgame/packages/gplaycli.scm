(define-module (endgame packages gplaycli)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public gplaycli
  (package
    (name "gplaycli")
    (version "3.29")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://github.com/matlink/gplaycli")
	       (commit version)))
        (sha256
          (base32
            "10gc1wr259z5hxyk834wyyggvyh82agfq0zp711s4jf334inp45r"))))
    (build-system python-build-system)
    (home-page "https://github.com/matlink/gplaycli")
    (synopsis "Google Play Downloader via Command line")
    (description "")
    (license license:gpl3+)))
