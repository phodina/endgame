(define-module (endgame packages sherlock)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages engineering)
  #:use-module (gnu packages package-management)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

; check for https://github.com/yhay81/socialname
(define-public python-sherlock
  (let ((commit "7d42be795f837dcea7711203973a26a548d6d632")
	(revision "1"))
  (package
    (name "python-sherlock")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://github.com/sherlock-project/sherlock")
	       (commit commit)))
        (sha256
          (base32
            "1qh64a2fa9k4ly3z8dwl9xnfg335a16nhdah7mm8az9q3v41mgcp"))))
    (build-system python-build-system)
    (home-page "https://github.com/sherlock-project/sherlock")
    (synopsis "Hunt down social media accounts")
    (description "This package allows to  hunt down social media accountsby username across social networks.")
    (license license:expat))))
