(define-module (endgame packages zola)
  #:use-module (guix packages)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages pulseaudio)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: package dependencies
(define-public zola
  (package
    (name "zola")
    (version "0.14.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/getzola/zola")
             (commit (string-append "v" version))))
       (sha256
        (base32
         "1cvvxiginwf1rldijzwk9gh63qc0ls5d7j3j8ri7yhk21pz9f6bi"))))
    (build-system cargo-build-system)
    (home-page "https://www.getzola.org/")
    (synopsis "Fast static site generator")
    (description "This package provides a fast static site generator in a single
binary with everything built-in.")
    (license license:expat)))
