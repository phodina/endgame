(define-module (endgame packages responder)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages time)
  #:use-module (gnu packages xdisorg)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-oscrypto-tests
  (package
    (name "python-oscrypto-tests")
    (version "1.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "oscrypto-tests" version))
        (sha256
          (base32 "1ha68dsrbx6mlra44x0n81vscn17pajbl4yg7cqkk7mq1zfmjwks"))))
    (build-system python-build-system)
    (propagated-inputs `(("python-oscrypto" ,python-oscrypto)))
    (home-page "https://github.com/wbond/oscrypto")
    (synopsis "Test suite for oscrypto, separated due to file size")
    (description "Test suite for oscrypto, separated due to file size")
    (license license:expat)))

(define-public python-bson
  (package
    (name "python-bson")
    (version "0.5.10")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "bson" version))
        (sha256
          (base32
            "14355m3dchz446fl54ym78bn4wi20hddx1614f8rl4sin0m1nlfn"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-dateutil" ,python-dateutil)
        ("python-six" ,python-six)))
    (home-page "http://github.com/py-bson/bson")
    (synopsis "BSON codec for Python")
    (description "BSON codec for Python")
    (license license:bsd-3)))

(define-public python-certbuilder
  (package
    (name "python-certbuilder")
    (version "0.14.2")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "certbuilder" version))
        (sha256
          (base32
            "1yb3wg64bbpb8ig53c8vbmfw4pn8rpypsya7hrki38iixplaxa2n"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-asn1crypto" ,python-asn1crypto)
        ("python-oscrypto" ,python-oscrypto)))
    (home-page
      "https://github.com/wbond/certbuilder")
    (synopsis "Creates and signs X.509 certificates")
    (description
      "Creates and signs X.509 certificates")
    (license license:expat)))

(define-public python-oscrypto
  (package
    (name "python-oscrypto")
    (version "1.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "oscrypto" version))
        (sha256
          (base32
            "1546si2bdgkqnbvv4mw1hr4mhh6bq39d9z4wxgv1m7fq6miclb3x"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-asn1crypto" ,python-asn1crypto)
        ("python-oscrypto-tests" ,python-oscrypto-tests)))
    (home-page "https://github.com/wbond/oscrypto")
    (synopsis
      "TLS (SSL) sockets, key generation, encryption, decryption, signing, verification and KDFs using the OS crypto libraries. Does not require a compiler, and relies on the OS for patching. Works on Windows, OS X and Linux/BSD.")
    (description
      "TLS (SSL) sockets, key generation, encryption, decryption, signing, verification and KDFs using the OS crypto libraries. Does not require a compiler, and relies on the OS for patching. Works on Windows, OS X and Linux/BSD.")
    (license license:expat)))

(define-public python-responder3
  (package
    (name "python-responder3")
    (version "0.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "Responder3" version))
        (sha256
          (base32
            "061qzliz83nfksp2a0ybiqzrdjn09zr52131fpbpqk0dfwn9644k"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-asn1crypto" ,python-asn1crypto)
        ("python-bson" ,python-bson)
        ("python-certbuilder" ,python-certbuilder)
        ("python-oscrypto" ,python-oscrypto)
        ("python-rsa" ,python-rsa)
        ("python-websockets" ,python-websockets)))
    (home-page
      "https://github.com/skelsec/Responder3")
    (synopsis "Responder3")
    (description "Responder3")
    (license #f)))

; TODO: Python2 https://github.com/lgandx/Responder
