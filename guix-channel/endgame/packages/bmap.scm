(define-module (endgame packages bmap)
  #:use-module (guix packages)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages qt)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-bmap-tools
  (package
    (name "python-bmap-tools")
    (version "3.6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
         (url "https://github.com/intel/bmap-tools")
         (commit (string-append "v" version))))
        (sha256
          (base32
            "01xzrv5nvd2nvj91lz4x9s91y9825j9pj96z0ap6yvy3w2dgvkkl"))))
    (build-system python-build-system)
; /gnu/store/9w9jvy3bgjg4qaqmrij01nbppiccqr7c-python-3.8.2/lib/python3.8/subprocess.py:942: ResourceWarning: subprocess 2727 is still running
;  _warn("subprocess %s is still running" % self.pid,
; ResourceWarning: Enable tracemalloc to get the object allocation traceback
    (arguments
      `(#:tests? #f))
    (native-inputs `(("python-nose" ,python-nose)
                     ("python-mock" ,python-mock)
                     ("python-six" ,python-six)
                    ;("python-backports.tempfile" ,python-backports.tempfile)))
                    ))
    (home-page "https://github.com/intel/bmap-tools")
    (synopsis "BMAP tools")
    (description "@code{bmaptool} is a generic tool for creating the block map
(bmap) for a file and copying files using the block map.")
    (license license:gpl2)))
