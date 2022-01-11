(define-module (endgame packages etlegacy)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages image)
<<<<<<< HEAD
=======
  #:use-module (gnu packages tls)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages xiph)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages lua)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages sqlite)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages pkg-config)
>>>>>>> c9d98ad (Add Rest of the stuff)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

<<<<<<< HEAD
; https://discourse.nixos.org/t/realrtcw-hd-mod-for-return-to-castle-wolfenstein-game-is-available-for-nixos/9869
(define-public etlegacy
(package
  (name "etlegacy")
  (version "2.77.1")
=======
(define-public etlegacy
(package
  (name "etlegacy")
  (version "2.78.0")
>>>>>>> c9d98ad (Add Rest of the stuff)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/etlegacy/etlegacy")
<<<<<<< HEAD
	     (recursive? #t)
=======
>>>>>>> c9d98ad (Add Rest of the stuff)
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
<<<<<<< HEAD
              "1mjjawkzmyzkwxah753vmdcwmrcl660fvg6640br6ibdv6v8jch8"))))
  (build-system cmake-build-system)
;  (arguments
;    '(#:tests? #f
;      #:phases
;      (modify-phases %standard-phases
;       (add-after 'unpack 'chdir
;        (lambda* _
;         (chdir "mjpg-streamer-experimental"))))))
;  (inputs `(("libjpeg-turbo" ,libjpeg-turbo)))
  (synopsis "Second breath of life for Wolfenstein: Enemy Territory")
  (description "ET: Legacy is an open source project based on the code of Wolfenstein: Enemy Territory which was released in 2010 under the terms of the GPLv3.")
  (home-page "https://www.etlegacy.com")
  (license license:gpl3)))
=======
              "06incff9512f8nvc0sg1m02crs84xjpvvagi6kjigdrbx951n09y"))))
  (build-system cmake-build-system)
  (arguments
    `(#:tests? #f))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("sdl" ,(sdl-union (list sdl2
                                sdl2-image
                                sdl2-mixer)))
	    ("mesa" ,mesa)
	    ("zlib" ,zlib)
	    ("libjpeg-turbo" ,libjpeg-turbo)
	    ("openssl" ,openssl)
	    ("curl" ,curl)
	    ("libvorbis" ,libvorbis)
	    ("libtheora" ,libtheora)
	    ("lua" ,lua)
	    ("freetype" ,freetype)
	    ("sqlite" ,sqlite)
	    ("openal" ,openal)
	    ("libpng" ,libpng)
            ("glew" ,glew)))
  (synopsis "Enemy Territory:Legacy is game based on Wolfenstein Enemy Territory")
  (description "")
  (home-page "https://www.etlegacy.com/")
  (license license:gpl3+)))
>>>>>>> c9d98ad (Add Rest of the stuff)
