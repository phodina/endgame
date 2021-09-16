(define-module (endgame packages opentesarena)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public opentesarena
(package
  (name "opentesarena")
  (version "0.13.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/afritz1/OpenTESArena")
             (commit (string-append "opentesarena-" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1j8vzjryvv3jsiy17mrabmf55znjys1922xz4j02rhwjyagz278s"))))
  (build-system cmake-build-system)
  (arguments
    `(#:tests? #f
      #:phases
      (modify-phases %standard-phases
       (replace 'install
        (lambda* (#:key outputs #:allow-other-keys)
		 (let* ((out (assoc-ref outputs "out"))
			(bin (string-append out "/bin"))
			(data (string-append bin "/data"))
			(options (string-append bin "/options")))
		 (mkdir-p bin)
                 (mkdir-p data)
		 (mkdir-p options)
		 (install-file "TESArena" bin)
		 (copy-recursively "OpenTESArena/data" data)
		 (copy-recursively "OpenTESArena/options" options)))))))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("sdl" ,(sdl-union (list sdl2
                                sdl2-mixer)))
	    ("openal" ,openal)
	    ("wildmidi" ,wildmidi)
	     ("boost" ,boost)))
  (synopsis "Open-source re-implementation of The Elder Scrolls: Arena")
  (description "This open-source project aims to be a modern engine re-implementation for the 1994 video game The Elder Scrolls: Arena by Bethesda Softworks.")
  (home-page "https://github.com/afritz1/OpenTESArena")
  (license license:expat))) ; MIT
