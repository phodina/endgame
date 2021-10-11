(define-module (endgame packages visitor-badge)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages engineering)
  #:use-module (gnu packages package-management)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-visitor-badge
  (package
    (name "python-visitor-badge")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://github.com/jwenjian/visitor-badge")
	       (commit (string-append "v" version))))
        (sha256
          (base32
            "05kyj7xa20npxqmqpndf159ljfw4p8khm6rffw9gymvx24qd4d21"))))
    (build-system python-build-system)
    (home-page "https://github.com/jwenjian/visitor-badge")
    (synopsis "Badge generator service to count visitors")
    (description "This package provides a badge generator service to count visitors.")
    (license license:gpl3+)))
