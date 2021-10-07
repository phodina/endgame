(define-module (endgame packages spring)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages documentation)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages serialization)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages java)
  #:use-module (gnu packages image)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

; TODO https://github.com/NixOS/nixpkgs/blob/nixos-21.05/pkgs/games/spring/default.nix#L59
(define-public spring-lobby
(package
  (name "spring-lobby")
  (version "0.273")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/springlobby/springlobby")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1vx4xjbxcyy1py252hnqd1l7kpp3fhvzspj5c6baqzbx3jwhwdcy"))))
  (build-system cmake-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)
                   ("doxygen" ,doxygen)
                   ("gcc" ,gcc-9)))
  (inputs `(("boost" ,boost)
	    ("curl" ,curl)
	    ("jsoncpp" ,jsoncpp)
            ("wxwidgets" ,wxwidgets)))
  (synopsis "SpringLobby is a free cross-platform lobby client for the Spring RTS project")
  (description "SpringLobby is a free cross-platform lobby client for the Spring RTS project")
  (home-page "https://github.com/springlobby/springlobby")
  (license license:gpl2)))

; TODO: Requires 3.21 CMake
(define-public wxformbuilder
(package
  (name "wxformbuilder")
  (version "3.10.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/wxFormBuilder/wxFormBuilder")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "16cmnpvzk4a8sk7364qp4hwa9vh0bmzcbscky3i16j3x3xwm25p5"))))
  (build-system cmake-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)
                   ("doxygen" ,doxygen)
                   ("gcc" ,gcc-9)))
  (inputs `(("boost" ,boost)
	    ("curl" ,curl)
	    ("jsoncpp" ,jsoncpp)
            ("wxwidgets" ,wxwidgets)))
  (synopsis "GUI Builder for wxWidgets")
  (description "This package provides wxFormBuilder whichc is a GUI builder
for the wxWidgets framework.  Code generation is supported for C++, Python,
XRC, wxLua and PHP.  Additionally, the import and export of XRC code
is possible.")
  (home-page "https://github.com/wxFormBuilder/wxFormBuilder")
  (license license:gpl2)))

; TODO: Could NOT find Java
(define-public spring
(package
  (name "spring")
  (version "105.0.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/spring/spring")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0vkqfrqwy7i3djs0d65hpagymy5pqdg3dmsqwlyik51kprsjh0ak"))))
  (build-system cmake-build-system)
  (inputs `(("glew" ,glew)
	    ("openjdk" ,openjdk14)
;            ("javacc" ,javacc)
            ("zlib", zlib)))
  (synopsis "Powerful free cross-platform RTS game engine")
  (description "Spring (formerly TASpring) is an Open Source Real Time Strategy game engine")
  (home-page "https://github.com/spring/spring")
  (license license:gpl2)))
