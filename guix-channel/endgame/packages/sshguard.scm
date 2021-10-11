(define-module (endgame packages sshguard)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages autotools)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public sshguard
(package
  (name "sshguard")
  (version "2.4.2")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://bitbucket.org/sshguard/sshguard")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "16y4qm7ks07505942whf0xsm6pydgn6ixqm41vgha3qwb9sdsnqb"))))
  (build-system gnu-build-system)
  (native-inputs `(("autoconf" ,autoconf)
                   ("automake" ,automake)))
  (synopsis "Protects from bute-force against SSH and other services")
  (description "This package provides @code{sshguard} to protects hosts from
brute-force attacks against SSH and other services.  It aggregates system logs
and blocks repeat offenders using one of several firewall backends.")
  (home-page "https://www.sshguard.net")
  (license license:bsd-3)))
; TODO: http://www.isthe.com/chongo/tech/comp/fnv/
