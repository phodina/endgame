(define-module (endgame packages lisgd)
  #:use-module (guix utils)
  #:use-module (guix packages)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages xorg)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))


(define-public lisgd
(package
  (name "lisgd")
  (version "0.3.2")
  (source (origin
            (method git-fetch)
            (uri (git-reference
		   (url "https://git.sr.ht/~mil/lisgd")
		   (commit version)))
            (sha256
             (base32
              "19b003wc8s9ivs7b0xmq9c6n136s9qnjs6vdglygl3jpzm984kf8"))))
  (build-system gnu-build-system)
  (arguments
    `(#:tests? #f ; no test suite
      #:make-flags (list (string-append "PREFIX=" %output) 
		     (string-append "CC=" ,(cc-for-target)))
      #:phases
      (modify-phases %standard-phases
       (delete 'configure))))
  (inputs `(("libinput" ,libinput)
	    ("wayland" ,wayland)
	    ("libx11" ,libx11)))
  (synopsis "Libinput synthetic gesture daemon")
  (description "This package provides libinput synthetic gesture daemon which
lets you bind gestures based on libinput touch events to run specific commands
to execute.")
  (home-page "https://git.sr.ht/~mil/lisgd")
  (license license:expat)))
