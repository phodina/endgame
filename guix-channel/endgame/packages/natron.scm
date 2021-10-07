(define-module (endgame packages natron)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages networking)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system qt)
  #:use-module ((guix licenses) #:prefix license:))

(define-public natron
(package
  (name "natron")
  (version "2.4.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/NatronGitHub/Natron")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1vg8cj54x49kh7qfvhak6z41p436gw30jl9mxzb4fg114ifr3wk0"))))
  ; TODO: Build using .pro file
  (build-system qt-build-system)
  (arguments
    `(#:tests? #f))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("qtbase" ,qtbase-5)))
  (synopsis "Node graph based video compositing software")
  (description "Natron is a video compositor, similar in functionality
to Adobe After Effects, Foundry's Nuke, or Blackmagic Fusion.")
  (home-page "https://natrongithub.github.io/")
  (license license:gpl2)))
