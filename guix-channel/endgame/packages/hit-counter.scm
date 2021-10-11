(define-module (endgame packages hit-counter)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages engineering)
  #:use-module (gnu packages package-management)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-hit-counter
  (let ((commit "19c9e6abac91668698a5cce9457cec5987fce7f7")
	(revision "1"))
  (package
    (name "python-hit-counter")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://github.com/brentvollebregt/hit-counter")
	       (commit version)))
        (sha256
          (base32
            "0vcb4wxzj6x0l0p5z1vhgh9dggmy70gzzklzh0is4jwf9yqr44iv"))))
    (build-system python-build-system)
    (home-page "https://github.com/brentvollebregt/hit-counter")
    (synopsis "Easily count hits on a website with svg image")
    (description "This package allows you to count hits on a website
by requesting a SVG that displays a hit count.")
    (license license:expat))))
