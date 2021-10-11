(define-module (endgame packages sumatra)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages build-tools)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public sumatra
(package
  (name "sumatra")
  (version "3.3.3")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/sumatrapdfreader/sumatrapdf")
             (commit (string-append version "rel"))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0g5lv5v0iqrxln6wqky2p7ak6y2x6y50265zql9bafx527b9nsnp"))))
  (build-system cmake-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
        (replace 'configure
          (lambda* _
            (invoke "premake5"))))))
  (native-inputs `(("premake" ,premake5)))
  (synopsis "Multi-format PDF, EPUB, MOBI, FB2, CHM, XPS, DjVu reader")
  (description "This package provides multi-format PDF, EPUB, MOBI, FB2, CHM,
XPS, DjVu reader.")
  (home-page "http://www.sumatrapdfreader.org/")
  (license license:gpl3)))
