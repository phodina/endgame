(define-module (endgame packages gml4gtk)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages autotools)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public gml4gtk
(package
  (name "gml4gtk")
  (version "7.6")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://notabug.org/mooigraph/gml4gtk")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1pfspkifk564n9c297lmzfw3z4i5qncign6kgjb5cbsp18w1d19i"))))
  (build-system gnu-build-system)
  (native-inputs `(("autoconf" ,autoconf)
                   ("automake" ,automake)))
  (synopsis "GML graph viewer")
  (description "This package provides @code{gml4gtk} for directed graph layout
for GML graph files as GML viewer and partial dot files.")
  (home-page "https://notabug.org/mooigraph/gml4gtk")
  (license license:gpl2)))
