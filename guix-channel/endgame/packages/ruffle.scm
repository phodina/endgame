(define-module (endgame packages ruffle)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public ruffle
(package
  (name "ruffle")
  (version "2021-10-15")
  (source (origin
            (method git-fetch)
            (uri (git-reference
              (url "https://github.com/ruffle-rs/ruffle")
              (commit (string-append "nightly-" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "17jmvczbrrsx8wssi56vfr284ady5sf64qiaw5vgk4dazpqr5s1w"))))
  (build-system cargo-build-system)
  (synopsis "Flash Player emulator written in Rust")
  (description "This package provides an alternative ActionScript 1.0/2.0
emulator to Adobe Flash Player.  Ruffle targets both the desktop and the web
using WebAssembly.")
  (home-page "https://ruffle.rs/")
  (license (list license:expat license:asl2.0))))
