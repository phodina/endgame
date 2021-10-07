(define-module (endgame packages rayman)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages cpp)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages image)
  #:use-module (gnu packages gl)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public openrayman
  (let ((commit "04026967c46e3e35f18a08f8d2cf6b41fb82b494")
        (revision "1"))
(package
  (name "openrayman")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/imaginaryPineapple/OpenRayman")
             (commit version)))
            (file-name (git-file-name name version))
            (modules '((guix build utils)))
             (snippet
              '(begin
              ; TODO: Substitute and cleanup libopenrayman/CMakeLists.txt
                 (substitute* "CMakeLists.txt"
                   (("add_subdirectory\\(lib/gl3w\\)") "")
                   (("add_subdirectory\\(lib/json\\)") "")
                   (("$\\{EXTERNAL_SYSROOT\\}/lib") ""))
                 (delete-file-recursively "lib")))
            (sha256
             (base32
              "1wp8p2xvgbg2b7m2dnijkhkkpa270hi6n2wfnwk913yd6pnd6w2k"))))
  (build-system cmake-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("glew" ,glew)
            ("gtkmm" ,gtkmm)
            ("lodepng" ,lodepng)
            ("nlohmann-json-cpp" ,nlohmann-json-cpp)))
  (synopsis "Reimplementation of the @code{Rayman 2: The Great Escape} engine")
  (description "Reimplementation of the @code{Rayman 2: The Great Escape}
engine using C++11 and modern OpenGL.")
  (home-page "https://github.com/imaginaryPineapple/OpenRayman")
  (license license:lgpl3))))
