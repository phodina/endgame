(define-module (endgame packages servo)
  #:use-module (guix packages)
  #:use-module (gnu packages python)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; Split workspace into gstplugin, libmlservo ,libsimpleservo and winit
(define-public servo
  (let ((commit "044862cfc6869d6c12cfe95b8b72a1c6dbfb7ae5")
        (revision "1"))
(package
  (name "servo")
  (version "")
  (source (origin
            (method git-fetch)
            (uri (git-reference
              (url "https://github.com/servo/servo")
              (commit commit)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "011kigz2yrhfy158am3kfq6dkn95gxrfzqb1bzdn8dhkd1rf2117"))))
  (build-system cargo-build-system)
  (arguments
    '(#:tests? #f
      #:phases
        (modify-phases %standard-phases
         (delete 'configure)
         (delete 'build))))
  (inputs `(("python" ,python)
            ("python" ,python2)))
  (synopsis "Servo browsing engine")
  (description "Servo is a prototype web browser engine written in the Rust
language.")
  (home-page "https://servo.org/")
  (license license:mpl2.0))))
