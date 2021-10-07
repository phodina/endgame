(define-module (endgame packages sourcetrail)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages python)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

; https://github.com/NixOS/nixpkgs/blob/nixos-21.05/pkgs/development/tools/sourcetrail/default.nix#L270
(define-public sourcetrail
(package
  (name "sourcetrail")
  (version "2021.1.30")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/CoatiSoftware/Sourcetrail")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0h0q2bfa6dv8hmc15rzj48bna1krzjwlcjm25dffbsi81xjcazb5"))))
  (build-system cmake-build-system)
  (arguments
    `(#:configure-flags (list "-DBoost_USE_STATIC_LIBS=OFF" (string-append "-DBOOST_ROOT=" (assoc-ref %build-inputs "boost") "/lib"))))
;      #:tests? #f
;      #:phases
;      (modify-phases %standard-phases
;       (add-after 'unpack 'chdir
;        (lambda* _
;         (chdir "mjpg-streamer-experimental"))))))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("boost" ,boost)
            ("qtbase" ,qtbase-5)
            ("qtsvg" ,qtsvg)))
  (synopsis "Interactive source explorer")
  (description "Offline source explorer that helps you get productive on unfamiliar source code with optional IDE integration.")
  (home-page "https://www.sourcetrail.com")
  (license license:gpl3)))

(define-public catch2
(package
  (name "catch2")
  (version "2.13.7")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/catchorg/Catch2")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0cizwi5lj666xn9y0qckxf35m1kchjf2j2h1hb5ax4fx3qg7q5in"))))
  (build-system cmake-build-system)
  (native-inputs `(("python" ,python)))
  (synopsis "Modern C++ native, header only test framework")
  (description "A modern, C++-native, header-only, test framework
for unit-tests, TDD and BDD - using C++11, C++14, C++17.")
  (home-page "https://github.com/catchorg/Catch2")
  (license license:boost1.0)))
