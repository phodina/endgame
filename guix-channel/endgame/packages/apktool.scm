(define-module (endgame packages apktool)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages image)
  #:use-module (guix git-download)
  #:use-module (guix build-system ant)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Requires gradle
(define-public apktool
(package
  (name "apktool")
  (version "2.6.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/iBotPeaches/Apktool")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "108xly1b6q0chppji6y469h0ff6rw97jsxfw1wsdqw7fxgczdra6"))))
  (build-system ant-build-system)
;  (arguments
;    '(#:tests? #f
;      #:phases
;      (modify-phases %standard-phases
;       (add-after 'unpack 'chdir
;        (lambda* _
;         (chdir "mjpg-streamer-experimental"))))))
;  (inputs `(("libjpeg-turbo" ,libjpeg-turbo)))
  (synopsis "Tool for reverse engineering Android apk files")
  (description "Tool for reverse engineering 3rd party, closed, binary Android apps. It can decode resources to nearly original form and rebuild them after making some modifications")
  (home-page "https://ibotpeaches.github.io/Apktool")
  (license license:asl2.0)))
