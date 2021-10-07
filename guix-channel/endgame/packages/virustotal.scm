(define-module (endgame packages virustotal)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-build)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-vt-py
  (package
    (name "python-vt-py")
    (version "0.7.4")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "vt-py" version))
        (sha256
          (base32 "0x31nq92ngg0mbpyz56a9qqa44icyflq9ld55p6gc5d1jla43br7"))))
    (build-system python-build-system)
    (propagated-inputs `(("python-aiohttp" ,python-aiohttp)))
    (native-inputs
      `(("python-pytest" ,python-pytest)
	("python-pytest-runner" ,python-pytest-runner)
        ("python-pytest-asyncio" ,python-pytest-asyncio)
        ("python-pytest-httpserver" ,python-pytest-httpserver)))
    (home-page "https://github.com/VirusTotal/vt-py")
    (synopsis "The official Python client library for VirusTotal")
    (description "The official Python client library for VirusTotal")
    (license #f)))
