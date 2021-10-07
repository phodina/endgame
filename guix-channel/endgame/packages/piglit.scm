(define-module (endgame packages piglit)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages python)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses) #:prefix license:))

(define-public piglit
  (let ((commit "15b7f597aeae07871c89f5c648ba999ee7a3c520")
        (revision "1"))
(package
  (name "piglit")
  (version "")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://gitlab.freedesktop.org/mesa/piglit")
             (commit commit)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1nxl7fw4py133g5dnal0z7igdhbzwcrkmxgri32j341k2b3qlky4"))))
  (build-system cmake-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("mesa" ,mesa)
	    ("python" ,python)
	    ("python" ,python-2)))
  (synopsis "OpenGL test suite, and test-suite runner")
  (description "This package provides OpenGL test suite, and test-suite
runner.")
  (home-page "https://gitlab.freedesktop.org/mesa/piglit")
  (license #f))))

; TODO: pkg_resources.DistributionNotFound: The 'meson==0.53.2' distribution was not found and is required by the application
(define-public waffle
(package
  (name "waffle")
  (version "1.7.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://gitlab.freedesktop.org/mesa/waffle")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0piiq8pxj0038nvlzchfcb9vjfjya3gw272s1kp3zd7f0l19v3w9"))))
  (build-system meson-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("mesa" ,mesa)
	    ("python" ,python)
	    ("python" ,python-2)))
  (synopsis "C library for selecting an OpenGL API and window system at runtime")
  (description "This package provides C library for selecting an OpenGL API
and window system at runtime.")
  (home-page "https://gitlab.freedesktop.org/mesa/waffle")
  (license license:bsd-2)))
