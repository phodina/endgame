(define-module (endgame packages slimbook)
  #:use-module (guix packages)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages qt)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: no setup.py
(define-public slimbook-amd
  (package
    (name "slimbook-amd")
    (version "0.3.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
         (url "https://github.com/slimbook/slimbookamdcontroller")
         (commit (string-append "v" version "beta"))))
        (sha256
          (base32
            "18an615gm2my0rkyj7a6xr5l1dzg172gg2p9bwch00drfwvgxqbb"))))
    (build-system python-build-system)
    (arguments
      `(#:tests? #f))
; /gnu/store/9w9jvy3bgjg4qaqmrij01nbppiccqr7c-python-3.8.2/lib/python3.8/subprocess.py:942: ResourceWarning: subprocess 2727 is still running
;  _warn("subprocess %s is still running" % self.pid,
; ResourceWarning: Enable tracemalloc to get the object allocation traceback
    (native-inputs `(("python-nose" ,python-nose)
                     ("python-mock" ,python-mock)
                     ("python-six" ,python-six)
                    ;("python-backports.tempfile" ,python-backports.tempfile)))
                    ))
    (home-page "https://github.com/slimbook/slimbookamdcontroller")
    (synopsis "Set AMD CPU TDP value")
    (description "This package allows you to set the amount of power
measured in watts that you CPU is allowed to draw to save battery or
to improve the overall performance under heavy workloads like rendering
jobs or serious number crunching on large spreadsheets.  Increasing
the TDP allows the CPU to use its boost frequency more often or even
permanently on some scenarios.")
    (license license:gpl3)))
