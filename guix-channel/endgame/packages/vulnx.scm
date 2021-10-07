(define-module (endgame packages vulnx)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-web)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: error: [Errno 2] No such file or directory: 'logs/Dorks'
(define-public python-vulnx
  (package
    (name "python-vulnx")
    (version "1.6")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "vulnx" version))
        (sha256
          (base32 "0yj259q8a36c0g83maq3dimfbwhz2jx9fb8x78zdlnxscxxrzfzm"))))
    (build-system python-build-system)
    (native-inputs `(("python-requests" ,python-requests)))
    (home-page "https://github.com/anouarbensaad/vulnx")
    (synopsis
      "Vulnerabilites detection in CMS")
    (description
      "This packages provides Intelligent Bot Auto Shell Injector that detects
vulnerabilities in multiple types of CMS.")
    (license license:gpl3+)))
