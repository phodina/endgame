(define-module (endgame packages penplot)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system clojure)
  #:use-module ((guix licenses) #:prefix license:))

(define-public penplot
(package
  (name "penplot")
  (version "1.8.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/penpot/penpot")
             (commit (string-append version "-alpha"))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0alj5n2hsv8i0s8gaas6cg74klr6b2mh40iq0s3ncr20bwz21xal"))))
  (build-system clojure-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
        (add-after 'unpack 'chdir
	  (lambda* _
            (chdir "frontend"))))))
  (synopsis "")
  (description "")
  (home-page "https://penpot.app/")
  (license license:mpl2.0)))

(define-public penplot-common
(package
  (name "penplot-common")
  (version "1.8.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/penpot/penpot")
             (commit (string-append version "-alpha"))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0alj5n2hsv8i0s8gaas6cg74klr6b2mh40iq0s3ncr20bwz21xal"))))
  (build-system clojure-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
        (add-after 'unpack 'chdir
	  (lambda* _
            (chdir "common"))))))
  (synopsis "")
  (description "")
  (home-page "https://penpot.app/")
  (license license:mpl2.0)))

(define-public penplot-backend
(package
  (name "penplot-backend")
  (version "1.8.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/penpot/penpot")
             (commit (string-append version "-alpha"))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0alj5n2hsv8i0s8gaas6cg74klr6b2mh40iq0s3ncr20bwz21xal"))))
  (build-system clojure-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
        (add-after 'unpack 'chdir
	  (lambda* _
            (chdir "backend"))))))
  (synopsis "")
  (description "")
  (home-page "https://penpot.app/")
  (license license:mpl2.0)))
