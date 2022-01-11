(define-module (endgame packages unvanquished)
  #:use-module (guix packages)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages networking)
  #:use-module (gnu packages serialization)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public unvanquished
  (package
    (name "unvanquished")
    (version "0.52.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/Unvanquished/Unvanquished")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "04hwdikvf6c7zjpwfsr2kpfwp94as2wyhf7ij0n09x8x7lyfkh5j"))))
    (build-system cmake-build-system)
    (inputs `(("zlib" ,zlib)
	      ("daemon-engine" ,daemon-engine)
              ("sdl" ,(sdl-union (list sdl2
                                       sdl2-mixer
                                       sdl2-image)))))
    (synopsis "FPS/RTS hybrid game")
    (description "")
    (home-page "https://unvanquished.net/")
    (license license:gpl2)))

; Dependencies https://dl.unvanquished.net/deps/linux64-5.tar.bz2
(define-public daemon-engine
  (package
    (name "daemon-engine")
    (version "0.52.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/DaemonEngine/Daemon")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0xxhh8n3qrf4cs9hnh8c9absv33rbmx0ihlnwy6hb9a3zyqnl8hx"))))
    (build-system cmake-build-system)
    (native-inputs `(("pkg-config" ,pkg-config)
		     ("nasm" ,nasm)))
    (inputs `(("zlib" ,zlib)
	      ("gmp" ,gmp)
	      ("nettle" nettle)
	      ("geoip" ,geoip)
	      ("curl" ,curl)
	      ("glew" ,glew)
	      ("libpng" ,libpng)
	      ("libwebp" ,libwebp)
	      ("ncurses" ,ncurses)
              ("sdl" ,(sdl-union (list sdl2
                                       sdl2-mixer
                                       sdl2-image)))))
    (synopsis "FPS/RTS hybrid game")
    (description "")
    (home-page "https://unvanquished.net/")
    (license license:gpl2)))

(define-public geoip
  (package
    (name "geoip")
    (version "1.6.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://github.com/maxmind/" name "-api-c/archive/v" version ".tar.gz"))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0xxhh8n3qrf5cs9hnh8c9absv33rbmx0ihlnwy6hb9a3zyqnl8hx"))))
    (build-system gnu-build-system)
    (synopsis "Non-DNS IP-to-country resolver C library & utils")
    (inputs `(("zlib" ,zlib)))
    (description "")
    (home-page "https://www.maxmind.com/app/c")
    (license license:gpl2)))
