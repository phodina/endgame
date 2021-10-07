(define-module (endgame packages tor)
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

; https://gitlab.com/nonguix/nonguix/-/issues/112
(define-public tor
(let ((commit "7fe2dd93bfe590250c563257cd078e8df519bfec")
      (revision "1"))
(package
  (name "tor")
  (version commit)
  (source (origin
            (method url-fetch)
            (uri "https://www.torproject.org/dist/torbrowser/10.5.6/tor-browser-linux64-10.5.6_en-US.tar.xz")
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
  (synopsis "The Oninon Router Browser")
  (description "Protect yourself against tracking, surveillance, and censorship.")
  (home-page "https://www.torproject.org/")
  (license license:gpl3))))
