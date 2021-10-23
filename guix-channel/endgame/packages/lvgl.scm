(define-module (endgame packages lvgl)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (gnu packages python)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; https://lvgl.io/developers
; needs also python-3.6
(define-public lvgl
(package
  (name "lvgl")
  (version "8.0.2")
  (source (origin
            (method git-fetch)
            (uri (git-reference
              (url "https://github.com/lvgl/lvgl")
              (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1mx18597zg1dddm2z5g98k095jrg2knyjlaz1kx5a4kqm0kdcjp0"))))
  (build-system gnu-build-system)
  (arguments
    '(#:tests? #f
      #:make-flags (list (string-append "PREFIX="(assoc-ref %outputs "out")))
      #:phases
        (modify-phases %standard-phases
         (delete 'configure)
         (delete 'build))))
  (native-inputs `(("python" ,python)))
  (synopsis "Git-based decentralized issue management")
  (description "This is a minimalist decentralized issue management system
based on Git, offering (optional) biderectional integration with GitHub and
GitLab issue management.")
  (home-page "https://github.com/dspinellis/git-issue")
  (license license:gpl2)))
