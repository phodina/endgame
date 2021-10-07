(define-module (endgame packages qmk)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (gnu packages)
  #:use-module (gnu packages base)
  #:use-module (gnu packages embedded)
  #:use-module (gnu packages node)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages libftdi)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages python)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public qmk
(package
  (name "qmk")
  (version "4.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/qmk/qmk_firmware")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1pnza3x0fs6m4m64180k4b9vpa0g9bz4fcp3838w18153g70idlp"))))
  (build-system gnu-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
       (delete 'configure))))
  (native-inputs `(("node" ,node)
		   ("python", python)
		   ("python", python-2)))
  (synopsis "Quantum Mechanical Keyboard Firmware")
  (description "This package provides firmware for AVR and ARM based keboard
such as OLKB, ErgoDox EZ and others.")
  (home-page "https://qmk.fm/")
  (license license:gpl2+)))
