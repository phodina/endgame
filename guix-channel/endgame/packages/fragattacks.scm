(define-module (endgame packages fragattacks)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages autotools)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public fragattacks
(package
  (name "fragattacks")
  (version "1.3.3")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/vanhoefm/fragattacks")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0wdvir79jkwapq9dz9gf2w675m4vqjbghczqnkqcqbf221fjw2xs"))))
  (build-system gnu-build-system)
  (synopsis "Fragmentation & Aggregation Attacks")
  (description "This package contains the FragAttacks tool. It can test Wi-Fi clients and access points for fragmentation and aggregation attacks. These vulnerabilities affect all protected Wi-Fi networks.")
  (home-page "https://www.fragattacks.com/")
  ; TODO: and BSD, but which clause?
  (license license:gpl2)))
