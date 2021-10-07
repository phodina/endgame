(define-module (endgame packages solvespace)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages video)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

; Fails on getting the git hash
(define-public solvespace
(package
  (name "solvespace")
  (version "3.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/solvespace/solvespace")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "16rlx23ymywd45nx6hk70ajrill608hws72dwxicr6qzagzdxfv9"))))
  (build-system cmake-build-system)
;  (arguments
;    `(#:tests? #f
;      #:phases
;       (modify-phases %standard-phases
;         (add-after 'unpack 'fix-bin-location
;           (lambda* _
;             (substitute* "CMakeLists.txt"
;               (("/lib/udev/rules.d") (string-append %output "/lib/udev/rules.d"))
;               (("/etc/systemd/system") (string-append %output "/etc/systemd/system"))
;               (("/etc/modules-load.d") (string-append %output "/etc/modules-load.d"))
;               (("/usr/bin") (string-append %output "/bin"))))))))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("libevdev" ,libevdev)
            ("eudev" ,eudev)))
  (synopsis "Parametric 2D/3D CAD")
  (description "")
  (home-page "http://solvespace.com/")
  (license license:gpl3)))
