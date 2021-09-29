(define-module (endgame packages openxcom)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages base)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages serialization)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public openxcom
(let ((commit "7fe2dd93bfe590250c563257cd078e8df519bfec")
      (revision "1"))
(package
  (name "openxcom")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/OpenXcom/OpenXcom")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0c9l0byk3wfaqbrbf29gpc9wvrjbcgy4j14jdrizvqzwfm94pykq"))))
  (build-system cmake-build-system)
  (arguments
    `(#:tests? #f))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("sdl" ,(sdl-union (list sdl2
                                sdl-image
                                sdl-gfx
                                sdl-mixer)))
            ("glu" ,glu)
            ("xmlto" ,xmlto)
            ("boost" ,boost)
            ("yaml-cpp" ,yaml-cpp)))
  (synopsis "Clone of the original X-Com")
  (description "OpenXcom is a clone of the popular @code{UFO: Enemy Unknown}
and @code{X-COM: Terror From the Deep} videogames by Microprose.")
  (home-page "https://openxcom.org/")
  (license license:gpl3))))
