(define-module (endgame packages cras)
               #:use-module (guix packages)
               #:use-module (guix git-download)
               #:use-module (guix build-system gnu)
               #:use-module (guix licenses)
               #:use-module (gnu packages))

(define-public cras
  (package
      (name "cras")
      (version "2.0.2")
      (source (origin
                (method git-fetch)
                (uri (git-reference
                       (url "https://git.sr.ht/~arivigo/cras")
                       (commit version)))
                (sha256
                  (base32
                    "1qh7jlhqlj9gl1lbdnw1ksj23sn48v1bxlxxhsnb92xrb1jfjcqy"))))
      (build-system gnu-build-system)
      (arguments
        `(#:tests? #f
          #:make-flags (list
                         "CC=gcc"
                         "PREFIX=''"
                         "MANPREFIX='/share/man'"
                         (string-append "DESTDIR=" (assoc-ref %outputs "out")))
          #:phases (modify-phases
                     %standard-phases
                     (delete 'configure))))
      
      (synopsis "The Anti-procrastination tool")

      (description "cras is an unapologetic daily task list.  It holds your
tasks only throughout the day, deleting them afterwards.")
      (home-page "https://git.sr.ht/~arivigo/cras")
      (license expat)))

