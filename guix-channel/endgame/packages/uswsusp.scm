(define-module (endgame packages uswsusp)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=uswsusp-git
(define-public uswsusp
(package
  (name "uswsusp")
  (version "67aacad35888b4c51e2d7be35c86fef137874f12")
  (source (origin
            (method git-fetch)
            (uri (git-reference
              (url "")
              (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1z6dpwbikmiq5acpbji4kvmxqc2jw995rfk5703k5mvp5ps9a29q"))))
  (build-system gnu-build-system)
  (arguments
    '(#:tests? #f
      #:make-flags (list (string-append "PREFIX="(assoc-ref %outputs "out")))
      #:phases
        (modify-phases %standard-phases
         (delete 'configure)
         (delete 'build))))
  (synopsis "Userspace software suspend")
  (description "This package provides a userspace software suspend.")
  (home-page "")
  (license license:gpl2)))
