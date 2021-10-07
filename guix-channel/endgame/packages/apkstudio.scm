(define-module (endgame packages apkstudio)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system qt)
  #:use-module ((guix licenses) #:prefix license:))

(define-public apkstudio
(package
  (name "apkstudio")
  (version "5.2.4")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/vaibhavpandeyvpz/apkstudio")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "02y2rbiiawhj1dvgxdaz8k9kpz6zkv20zsk17fbqj8259m3g1xr5"))))
  ; TODO: Build using .pro file
  (build-system qt-build-system)
  (arguments
    `(#:tests? #f))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("qtbase" ,qtbase-5)))
  (synopsis "IDE for reverse-engineering Android application packages")
  (description "Open-source, cross platform Qt based IDE for
reverse-engineering Android application packages. It features a friendly
IDE-like layout including code editor with syntax highlighting support
for *.smali code files.")
  (home-page "https://vaibhavpandey.com/apkstudio")
  (license license:lgpl3)))
