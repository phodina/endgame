(define-module (endgame packages fingerprint-gui)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages kde)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages polkit)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public fingerprint-gui
  (let ((commit "85a376e908b1daee0e3e0760574b19dccd84afd4")
        (revision "1"))
    (package
      (name "fingerprint-gui")
      (version commit)
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/RogueScholar/fingerprint-gui")
                      (commit version)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "0m7cj1rgfp6zsl9vyp9qnyd15lngxs15j9krzvycznwbxs438dry"))))
      (build-system cmake-build-system)
      (native-inputs `(("pkg-config" ,pkg-config)
                       ("qttools" ,qttools)))
      (inputs `(("eudev" ,eudev)
                ("qtx11extras" ,qtx11extras)
                ("qca" ,qca)
                ("libusb" ,libusb)
		("fprintd" ,fprintd)
                ("libfprint" ,libfprint)
                ("polkit-qt" ,polkit-qt)
                ("qtbase" ,qtbase-5)))
      (synopsis "GUI for fingerprint management")
      (description "Fingerprint GUI is an application providing
fingerprint-based authentication on Linux desktops.  Based on the libfprint
library, it features a simple GUI for fingerprint management and a PAM module.")
      (home-page (string-append "https://web.archive.org/web/20190607022148/"
       "http://www.ullrich-online.cc:80/fingerprint/index.php"))
      (license license:gpl2))))
