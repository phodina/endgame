(define-module (endgame packages regoth)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages cpp)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: package the submodules and then remove them
(define-public regoth
  (let ((commit "7f6fe1edbfd1b48218bd014e081e15677f643edc")
	(revision "1"))
(package
  (name "regoth")
  (version (git-version "" revision commit))
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/REGoth-project/REGoth-bs")
             (commit commit)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "06hqycvcbb6gc0r32jfakn0msca1mr0l94jl3pzbz0i7qiqqwjz9"))))
  (build-system cmake-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("sdl" ,(sdl-union (list sdl2
                                sdl2-mixer)))
	    ("cxxopts" ,cxxopts)
	    ("wildmidi" ,wildmidi)
	     ("boost" ,boost)))
  (synopsis "Reimplementation of the zEngine for Gothic I & II")
  (description "This package provides reimplementation of the zEngine, used by the games Gothic and Gothic II.")
  (home-page "https://github.com/REGoth-project/REGoth-bs")
  (license license:expat))))

; $ sudo apt install libx11-dev libxcursor-dev libxi-dev libicu-dev libgl1-mesa-dev \
;libglu1-mesa-dev freeglut3-dev libphysfs-dev libsquish-dev

;# Development dependencies (optional).
;$ sudo apt install doxygen plantuml

; Cleanup libs
; https://github.com/REGoth-project/BsZenLib
; https://github.com/GameFoundry/bsf
