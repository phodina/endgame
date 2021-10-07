(define-module (endgame packages wasp)
  #:use-module (guix packages)
  #:use-module (gnu packages time)
  #:use-module (gnu packages check)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages gtk)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public wasp-companion
  (let ((commit "e69d20155b0803b3984f8cabf006884981e1f47e")
	(revision "1"))
  (package
    (name "wasp-companion")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/arteeh/wasp-companion")
	       (commit commit)))
        (sha256
          (base32
            "0ansyyzblb3yg78zczkzbjyp995xpmrbkk8yinwkprxd1fjisinm"))))
    (build-system python-build-system)
    (arguments
      `(#:tests? #f
	#:phases
	(modify-phases %standard-phases
          (delete 'build)
	  ; TODO: replace phase
	  (delete 'install))))
    (inputs `(("python-pynus" ,python-pynus)))
    (home-page "https://github.com/arteeh/wasp-companion")
    (synopsis "Companion app for wasp-os")
    (description "This package provides companion app for wasp-os, a smartwatch
operating system.  It shows graph of hearbeat and setp counter data, allows to
add, remove and modify apps and more.")
    (license license:expat))))

(define-public python-pynus
  (let ((commit "822470be594439ea0a63ab47db2be535a2a153c6")
	(revision "1"))
  (package
    (name "python-pynus")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/daniel-thompson/pynus/")
	       (commit commit)))
        (sha256
          (base32
            "03yaqg7c0l5g7rcwrj4kmfjywpfsq71513zd95jzn0xc8fr86w13"))))
    (build-system python-build-system)
    (arguments
      `(#:tests? #f
	#:phases
	(modify-phases %standard-phases
          (delete 'build)
	  ; TODO: replace phase
	  (delete 'install))))
    (home-page "https://github.com/daniel-thompson/pynus")
    (inputs `(("bluez" ,bluez)))
    (synopsis "NUS console implemented in Python using Bluez/DBus")
    (description "This package provides a simple NUS (Nordic UART Service)
console to connect to the UART-over-BLE for Nordic chips.  It uses BlueZ over
DBus.")
    (license license:expat))))
