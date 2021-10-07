(define-module (endgame packages olive)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages video)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: patch error and upstream
; /tmp/guix-build-olive-0.1.2.drv-0/source/effects/internal/texteffect.cpp:205:16: error: aggregate ‘QPainterPath path’ has incomplete type and cannot be defined
(define-public olive
(package
  (name "olive")
  (version "0.1.2")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/olive-editor/olive")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "151g6jwhipgbq4llwib92sq23p1s9hm6avr7j4qq3bvykzrm8z1a"))))
  (build-system cmake-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("qtbase" ,qtbase-5)
	    ("qtmultimedia" ,qtmultimedia)
	    ("qtsvg" ,qtsvg)
	    ("qttools" ,qttools)
	    ("ffmpeg" ,ffmpeg)
	    ("mesa" ,mesa)))
  (synopsis "Non-linear video editor")
  (description "")
  (home-page "https://olivevideoeditor.org/")
  (license license:gpl3+)))
