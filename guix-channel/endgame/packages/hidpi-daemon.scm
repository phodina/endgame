(define-module (endgame packages hidpi-daemon)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages gnome)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

; https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=system76-hidpi-daemon-git
(define-public hidpi-daemon
  (package
    (name "hidpi-daemon")
    (version "18.04.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://github.com/pop-os/hidpi-daemon")
	       (commit version)))
        (sha256
          (base32
            "05bcq6hb9sfn7a37fafd573n29h1426bgjv5ani3dp1bnxxlb8fg"))))
    (build-system python-build-system)
    (inputs `(("python-pydbus" ,python-pydbus)
		("python-pygobject" ,python-pygobject)
		("python-xlib" ,python-xlib)
		("libnotify" ,libnotify)
		("acpid" ,acpid)))
    (home-page "https://github.com/pop-os/hidpi-daemon")
    (synopsis "Manage HiDPI and LoDPI monitors on X")
    (description "This package provides daemon to manage HiDPI and LoDPI
monitors on X.")
    (license license:gpl2+)))

(define-public python-pydbus
  (package
    (name "python-pydbus")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "pydbus" version))
        (sha256
          (base32 "0b0gipvz7vcfa9ddmwq2jrx16d4apb0hdnl5q4i3h8jlzwp1c1s2"))))
    (build-system python-build-system)
    (inputs `(("python-pygobject" ,python-pygobject)))
    (home-page "https://github.com/LEW21/pydbus")
    (synopsis "Pythonic DBus library")
    (description "Pythonic DBus library")
    (license #f)))
