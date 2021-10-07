(define-module (endgame packages blender)
  #:use-module (guix packages)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages qt)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public blender-fspy
  (package
    (name "blender-fspy")
    (version "1.0.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
         (url "https://github.com/stuffmatic/fSpy-Blender")
         (commit (string-append "v" version))))
        (sha256
          (base32
            "0mcfx9bahzh10zfjc6yx4bd05sl2qdyxwyqssci34sjw7rb4v61b"))))
    (build-system python-build-system)
    (arguments
      `(#:tests? #f))
    (native-inputs `(("python-nose" ,python-nose)
                     ("python-mock" ,python-mock)
                     ("python-six" ,python-six)
                    ;("python-backports.tempfile" ,python-backports.tempfile)))
                    ))
    (home-page "https://fspy.io/")
    (synopsis "fSpy importer for Blender")
    (description "This package provides fSpy importer for Blender for still
image camera matching.")
    (license license:gpl3+)))
