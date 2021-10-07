(define-module (endgame packages rigelengine)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rigelengine
(package
  (name "rigelengine")
  (version "0.8.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/lethal-guitar/RigelEngine")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0xajkx7v9gf4p4wgmjy3z25b7kgqxnsqhzgjfagb6vz3zzg0bcn3"))))
  (build-system cmake-build-system)
  (arguments
    `(#:tests? #f))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("sdl" ,(sdl-union (list sdl2
                                sdl2-mixer)))
	     ("boost" ,boost)))
  (synopsis "Modern re-implementation of the classic DOS game Duke Nukem II")
  (description "Re-implementation of the game Duke Nukem II, originally
released by Apogee Software in 1993 for MS-DOS. RigelEngine works as a drop-in
replacement for the original executable.")
  (home-page "https://rigelengine.nikolai-wuttke.de")
  (license license:gpl2)))

(define-public entityx
(package
  (name "entityx")
  (version "1.1.2")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/alecthomas/entityx")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0x9z5fan99qi9r7mf830520l9hrlbivgmbqissvw0nm5mq5gqk90"))))
  (build-system cmake-build-system)
  ;(arguments
  ;  `(#:tests? #f))
  ;(native-inputs `(("pkg-config" ,pkg-config)))
  (synopsis "Fast, type-safe C++ Entity-Component system")
  (description "@code{EntityX} provides an EC system that uses C++11 features
for type-safe component management, event delivery, etc.")
  (home-page "https://github.com/alecthomas/entityx")
  (license license:expat)))
