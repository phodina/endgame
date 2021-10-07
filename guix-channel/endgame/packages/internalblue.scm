(define-module (endgame packages internalblue)
  #:use-module (guix packages)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-xyz)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public internalblue
  (let ((commit "5460f57275833ec91a12efc5771b8a6ae843d3a9")
	(revision "1"))
  (package
    (name "internalblue")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
         (url "https://github.com/seemoo-lab/internalblue")
         (commit version)))
        (sha256
          (base32
            "1lr4223i9vvfb17193k815cnswziy13db14qdsmdlccq2qphswq9"))))
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
    (propagated-inputs `(("python-cmd2" ,python-cmd2)
			 ("python-future" ,python-future)
			 ; We need pwntools
			 ("python-pwnlib" ,python-pwnlib)
			 ("python-pure-python-adb" ,python-pure-python-adb)))
    (home-page "https://github.com/seemoo-lab/internalblue")
    (synopsis "Bluetooth experimentation framework")
    (description "")
    (license #f))))

(define-public python-pure-python-adb
  (package
    (name "python-pure-python-adb")
    (version "0.3.0.dev0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "pure-python-adb" version))
        (sha256
          (base32 "0kdr7w2fhgjpcf1k3l6an9im583iqkr6v8hb4q1zw30nh3bqkk0f"))))
    (build-system python-build-system)
    (native-inputs `(("python-aiofiles" ,python-aiofiles)))
    (home-page "https://github.com/Swind/pure-python-adb")
    (synopsis "Pure python implementation of the adb client")
    (description "Pure python implementation of the adb client")
    (license license:expat)))

(define-public python-pwnlib
  (package
    (name "python-pwnlib")
    (version "1.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "pwnlib" version))
        (sha256
          (base32 "1ls7mm6w44v09l28f7xybxps48gs0zrcnjpwphiwwivkdm8pwxwj"))))
    (build-system python-build-system)
    (home-page "https://github.com/Gallopsled/pwntools")
    (synopsis "Pwnlib project")
    (description "Pwnlib project")
    (license #f)))
