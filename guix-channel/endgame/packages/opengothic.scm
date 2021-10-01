(define-module (endgame packages opengothic)
  #:use-module (guix packages)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages game-development)
  #:use-module (gnu packages vulkan)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages linux)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public tinysoundfont
  (let ((commit "bf574519e601202c3a9d27a74f345921277eed39")
	(revision "1"))
(package
  (name "tinysoundfont")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/schellingb/TinySoundFont")
		(commit version)))
            (sha256
             (base32
              "0wkia40cirzj3x4sppnmgzqk3hvd7nxfgzx8vh593f0j4qrb81hh"))))
  (build-system gnu-build-system)
  ; TODO: build and run example in check
  (arguments
    `(#:tests? #f
      #:phases
        (modify-phases %standard-phases
	  (delete 'configure)
          (delete 'build)
	  (replace 'install
           (lambda* (#:key outputs #:allow-other-keys)
	     (let ((inc (string-append (assoc-ref outputs "out") "/include/libtinysound")))
	       (mkdir-p inc)
	       (install-file "tml.h" inc)
	       (install-file "tsf.h" inc)))))))
  (native-inputs
    `(("pkg-config" ,pkg-config)))
  (synopsis "SoundFont2 synthesizer library in a single C/C++ file")
  (description "TinySoundFont is a software synthesizer using SoundFont2 sound bank files. The library is a single C header file so it is extremely simple to integrate in your C/C++ projects.")
  (home-page "https://github.com/schellingb/TinySoundFont")
  (license license:expat))))

(define-public libsquish
(package
  (name "libsquish")
  (version "master")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/tito/libsquish")
		(commit version)))
            (sha256
             (base32
              "04ji9ar0909a5sgwwflxzwg0ckh7xrxghmj147ix93y1cw48krj0"))))
  (build-system cmake-build-system)
  (arguments
    '(#:tests? #f))
  (native-inputs
    `(("pkg-config" ,pkg-config)))
  (synopsis "Clone of libsquish that includes python bindings")
  (description "")
  (home-page "https://github.com/tito/libsquish")
  (license #f)))
