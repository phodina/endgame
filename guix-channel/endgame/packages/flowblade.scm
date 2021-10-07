(define-module (endgame packages flowblade)
  #:use-module (guix packages)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages gtk)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public flowblade
  (package
    (name "flowblade")
    (version "2.8.0.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jliljebl/flowblade")
               (commit (string-append "v" version))))
        (sha256
          (base32
            "1y47gvr3g8lgx1kkp11xl74vm1ygps8rwl1m55g1wy4wm3g0hjgw"))))
    (build-system python-build-system)
    (arguments
      `(#:phases
         (modify-phases %standard-phases
          (add-after 'unpack 'chdir-to-flowblade-trunk
           (lambda* _
             (chdir "flowblade-trunk"))))))
    (inputs `(("python-pygobject" ,python-pygobject)
	      ("gtk+" ,gtk+)
	      ("python-atomicfile" ,python-atomicfile)
	      ("python-numpy" ,python-numpy)))
    (home-page "https://jliljebl.github.io/flowblade/index.html")
    (synopsis "Multitrack non-linear video Editor")
    (description "This package provides Flowblade Movie Editor which allows
you to compose movies from video clips, audio clips and graphics files.
Flowblade offers a configurable workflow - toolset, its order, default tool
and certain timeline behaviours are user settable.")
    (license license:gpl3+)))

(define-public python-atomicfile
  (package
    (name "python-atomicfile")
    (version "1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "atomicfile" version))
        (sha256
          (base32 "0gkn11r4crm41ip81l5052kqx782kxxf02sf55f5y55iq32h418r"))))
    (build-system python-build-system)
    (native-inputs `(("python-pytest" ,python-pytest)))
    (home-page "http://github.com/sashka/atomicfile-py")
    (synopsis "Writeable file object that atomically updates a file.")
    (description "Writeable file object that atomically updates a file.")
    (license license:expat)))
