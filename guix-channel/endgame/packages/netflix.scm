(define-module (endgame packages netflix)
  #:use-module (guix build utils)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

; https://pimylifeup.com/raspberry-pi-netflix/
(define-public python-castagnait
  (let ((commit "97c6ea586b006d1b56bc51a42c7f200af35f88e5")
	(revision "1"))
  (package
    (name "python-castagnait")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/castagnait/repository.castagnait")
	       (commit version)))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "08z5cx0fwiqv01j0xxnh6y4ar1x981q0qpf2yz7hlz683as935b6"))))
    (build-system python-build-system)
    (home-page "https://github.com/castagnait/repository.castagnait")
    (synopsis "Kodi Netflix addon")
    (description "This package provides Kodi addon to enable Netflix.")
    (license license:gpl2))))
