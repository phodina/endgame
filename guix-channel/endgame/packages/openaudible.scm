(define-module (endgame packages openaudible)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system maven)
  #:use-module ((guix licenses) #:prefix license:))

(define-public openaudible
(package
  (name "openaudible")
  (version "3.1.2")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/openaudible/openaudible")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "17pj4lwn8m71qr7gbidxfz5aylnpmn395v47g93kw17yx5gc0s15"))))
  (build-system maven-build-system)
  (synopsis "Audible Manager")
  (description "")
  (home-page "http://openaudible.org/")
  (license license:gpl2)))

; Missing http://maven.apache.org/plugins/maven-assembly-plugin/
