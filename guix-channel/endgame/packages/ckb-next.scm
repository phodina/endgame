(define-module (endgame packages ckb-next)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages lxqt)
  #:use-module (gnu packages pulseaudio)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public ckb-next
(package
  (name "ckb-next")
  (version "0.4.4")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/ckb-next/ckb-next")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1fgvh2hsrm8vqbqq9g45skhyyrhhka4d8ngmyldkldak1fgmrvb7"))))
  (build-system cmake-build-system)
  (arguments
    `(#:tests? #f ; no test suite
      #:configure-flags (list "-DUSE_XCB=0")
      #:phases
      (modify-phases %standard-phases
       (add-after 'unpack 'fix-udev-location
        (lambda* _
          (substitute* "CMakeLists.txt"
            (("/lib/udev/rules.d")
            (string-append %output "/lib/udev/rules.d"))))))))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("eudev" ,eudev)
            ("zlib" ,zlib)
            ("quazip" ,quazip)
            ("libdbusmenu-qt" ,libdbusmenu-qt)
            ("pulseaudio" ,pulseaudio)
            ("qtx11extras" ,qtx11extras)
            ("qttools" ,qttools)
            ("qtmultimedia" ,qtmultimedia)
            ("qtbase" ,qtbase-5)))
  (synopsis "RGB driver for Linux")
  (description "This package provides driver for Corsair keyboards and mice.
It aims to bring the features of Corsair's proprietary CUE software to Linux
operating systems.")
  (home-page "https://github.com/ckb-next/ckb-next")
  (license license:gpl2)))
