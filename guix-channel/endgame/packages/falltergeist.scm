(define-module (endgame packages falltergeist)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public falltergeist
(package
  (name "falltergeist")
  (version "0.3.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/falltergeist/falltergeist")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "05cg58i2g32wbmrvmdsicic8xs83gld3qr1p7r4lnlckcl1l7dy4"))))
  (build-system cmake-build-system)
  (arguments
    `(#:tests? #f))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("sdl" ,(sdl-union (list sdl2
                                sdl2-image
                                sdl2-mixer)))
            ("glew" ,glew)
            ("glm" ,glm)))
  (synopsis "Opensource crossplatform Fallout 2 game engine")
  (description "Opensource crossplatform Fallout 2 game engine.  Game data
should be placed in ~/.local/share/falltergeist.")
  (home-page "https://falltergeist.org/")
  (license license:gpl3)))
