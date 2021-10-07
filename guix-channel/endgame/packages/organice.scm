(define-module (endgame packages organice)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages image)
  #:use-module (guix git-download)
  #:use-module (guix build-system node)
  #:use-module ((guix licenses) #:prefix license:))

(define-public organice
(package
  (name "organice")
  (version "f315500153169f1495169d62802d6510b3c21855") ; no tags
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/200ok-ch/organice")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1i5ixzx4qfvji5542j6c04bwfw3agihvv5yzw6g0bnbd4a6if1ly"))))
  (build-system node-build-system)
;  (arguments
;    '(#:tests? #f
;      #:phases
;      (modify-phases %standard-phases
;       (add-after 'unpack 'chdir
;        (lambda* _
;         (chdir "mjpg-streamer-experimental"))))))
;  (inputs `(("libjpeg-turbo" ,libjpeg-turbo)))
  (synopsis "Org mode without the dependency of Emacs")
  (description "organice is an implementation of Org mode without the dependency of Emacs. It is built for mobile and desktop browsers and syncs with Dropbox, Google Drive and WebDAV.")
  (home-page "https://github.com/200ok-ch/organice")
  (license license:agpl3)))
