(define-module (endgame packages goatcounter)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public goatcounter
  (package
    (name "goatcounter")
    (version "2.0.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://github.com/zgoat/goatcounter")
	       (commit (string-append "v" version))))
        (sha256
          (base32
            "1r4af5rympch22l67f8cwla94bya2fhqndaac8f23b4qv11ikv9d"))))
    (build-system go-build-system)
    (home-page "https://www.goatcounter.com/")
    (synopsis "Easy web analytics. No tracking of personal data")
    (description "This package provides goatcounter that aims to offer easy
to use and meaningful privacy-friendly web analytics as an alternative to
Google Analytics or Matomo.")
    (license (list license:eupl1.2 license:isc license:expat license:silofl1.1))))

