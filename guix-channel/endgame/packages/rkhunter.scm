(define-module (endgame packages rkhunter)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (gnu packages perl)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: https://github.com/archlinux/svntogit-community/blob/packages/rkhunter/trunk/PKGBUILD
; TODO: Fix and run installer.sh
(define-public rkhunter
(package
  (name "rkhunter")
  (version "1.4.6")
  (source (origin
            (method url-fetch)
            (uri (string-append "https://downloads.sourceforge.net/sourceforge/rkhunter/rkhunter-" version ".tar.gz"))
            (sha256
             (base32
              "11vlsdqqqdksbf3kq7z2jrsdyfmasw87ar3kl0vvcfgq48zall7p"))))
  (build-system gnu-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
        (delete 'configure))))
  (inputs `(("perl" ,perl)))
  (synopsis "Checks machines for rootkits and other unwanted tools")
  (description "")
  (home-page "http://rkhunter.sourceforge.net/")
  (license license:gpl2)))
