(define-module (endgame packages linuxgsm)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public linuxgsm
(package
  (name "linuxgsm")
  (version "21.3.2")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/GameServerManagers/LinuxGSM")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "05hn6yp0hkpga3sdl8nsz5d8slm0h3gq0wf8cgj714lf957b42g8"))))
  (build-system cmake-build-system)
  (synopsis "Deployment and management of Linux dedicated game servers")
  (description "Command line application that deploys image to NXP I.MX chip.")
  (home-page "https://github.com/GameServerManagers/LinuxGSM")
  (license license:expat)))
