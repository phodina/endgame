(define-module (endgame packages opengothic)
  #:use-module (guix packages)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages game-development)
  #:use-module (gnu packages vulkan)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages image)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages linux)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public zenlib
  (let ((commit "a38ad95781565607dac8ccdd06412b60c9612521")
	(revision "1"))
(package
  (name "zenlib")
  (version "a38ad95781565607dac8ccdd06412b60c9612521")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/Try/ZenLib")
		(commit version)))
            (sha256
             (base32
              "0k0dlmkgn48abi54m9zm9l41jr6qf7zs8syj5k1sx8bpl6j8582j"))))
  (build-system cmake-build-system)
  (arguments '(#:tests? #f))
; TODO: Add tests to main CMake
;  (arguments
;    `(#:phases
;      (modify-phases %standard-phases
;       (add-before 'check 'chdir-to-tests
;         (lambda _
;	   (chdir "tests"))))))
  (native-inputs
    `(("pkg-config" ,pkg-config)))
  (inputs
    `(("libsquish" ,libsquish)))
  (synopsis "Loading of proprietary formats used by the engine used by the games Gothic and Gothic II")
  (description "Loading of proprietary formats used by the engine of the games Gothic and Gothic II.")
  (home-page "https://github.com/Try/ZenLib")
  (license license:expat))))

(define-public tempest
  (let ((commit "bbb4c2072ea9b9188bd9d68e06d0ed85ed30c578")
        (revision "1"))
(package
  (name "tempest")
  (version "71c03d2cb35875d6d479113f86e47f79e15ba054")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/Try/Tempest")
		(commit version)))
	    (patches '("endgame/packages/patches/tempest-third-party-fix.patch"))
            (modules '((guix build utils)))
            (snippet
             '(begin
               (for-each delete-file-recursively
               '("Engine/thirdparty/zlib"
                 "Engine/thirdparty/openal"
                 "Engine/thirdparty/libpng"
                 "Engine/thirdparty/squish"
                 "Engine/thirdparty/spirv_cross"))))
            (sha256
             (base32
              "1rl4liwbvb5srg8xa0j6r0iy12ri5ymgjdwlcdq0n6zjcwkm739g"))))
  (build-system cmake-build-system)
  (arguments
    '(#:tests? #f
      #:phases (modify-phases %standard-phases
        (add-before 'configure 'chdir
        (lambda _
        (chdir "Engine")
         #t)))))
  (native-inputs
    `(("pkg-config" ,pkg-config)
      ("spirv-cross" ,spirv-cross)
      ("vulkan-headers" ,vulkan-headers)))
  (inputs `(("glslang" ,glslang)
	    ("alsa-lib" ,alsa-lib)
	    ("glslang" ,glslang)
	    ("openal" ,openal)
	    ("libsquish" ,libsquish)
	    ("vulkan-loader" ,vulkan-loader)
	    ("libpng" ,libpng)
	    ("zlib" ,zlib)
	    ("libx11" ,libx11)))
  (synopsis "Crossplatform 3d engine")
  (description "Tempest is an open-source, simple, cross-platform graphics engine written in modern C++14. Main idea behind this engine is to provide a low-level GPU-programming concepts, like Ubo, Vbo, Ssbo, in convenient C++ packaging, with RAII, types and templates.")
  (home-page "https://github.com/Try/Tempest")
  (license license:expat))))

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
