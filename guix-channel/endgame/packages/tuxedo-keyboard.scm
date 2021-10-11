(define-module (endgame packages tuxedo-keyboard)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (gnu packages linux)
  #:use-module (guix git-download)
  #:use-module (guix build-system linux-module))

(define-public tuxedo-keyboard
  (let ((commit-ref "84442d0b2f3d3bff691ce8b96bb3baced4d692c0"))
    (package
      (name "tuxedo-keyboard")
      (version commit-ref)
      (source (origin
                (method git-fetch)
                (uri (git-reference
                       (url "https://github.com/tuxedocomputers/tuxedo-keyboard")
                       (commit commit-ref)))
                (file-name (git-file-name name version))
                (sha256
                  (base32  "104i050ymrj0h0p52q52mn496gchq2k1gnnvxcqffrb69gzsa153"))))
      (arguments
        ;; Has no tests
        `(#:tests? #f))
      (native-inputs
        `(("linux-headers" ,linux-libre-headers)))
      (build-system linux-module-build-system)
      (home-page "http://www.tuxedocomputers.com")
      (synopsis "TUXEDO Computers Kernel Module for keyboard backlighting")
      (description "Additions:
@itemize
@item Sysfs interface to control the brightness, mode, color, on/off state
@item DKMS Ready
@item Full RGB Color Support
@item WMI Support for FN-Keys
@end itemize")
        (license license:gpl3+))))

