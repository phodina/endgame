(define-module (endgame packages uvtools)
  #:use-module (guix build utils)
  #:use-module (guix packages)
  #:use-module (gnu packages mono)
  #:use-module (guix git-download)
  #:use-module (guix build-system trivial)
  #:use-module ((guix licenses) #:prefix license:))

(define-public uvtools
  (package
    (name "uvtools")
    (version "2.22.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/sn4k3/UVtools")
               (commit (string-append "v" version))))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "06qz6yb27bbs4lyj83qq9klks9jpmf1gsgc3b5pghss09m6298pf"))))
    (build-system trivial-build-system)
    (arguments
      `(#:modules ((guix build utils))
        #:builder (begin
          (use-modules (guix build utils))
          (copy-recursively (assoc-ref %build-inputs "source") ".")
          (let* ((output (assoc-ref %outputs "out"))
                 (bin (string-append output "/bin"))
                 (executable (string-append "uvtools")))
           (invoke "xbuild")
           (mkdir-p bin)))))
    (inputs `(("mono" ,mono)))
    (home-page "https://github.com/sn4k3/UVtools")
    (synopsis "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation")
    (description "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation")
    (license license:agpl3)))

