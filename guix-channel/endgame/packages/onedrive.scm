(define-module (endgame packages onedrive)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages image)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages dlang)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Increment compiler version
; error: Compiler version insufficient, current compiler version 1.10.0, minimum version 1.12.0
(define-public onedrive
(package
  (name "onedrive")
  (version "2.4.13")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/abraunegg/onedrive")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0v5grg20lkjjh6pb5d8s8424k2yag3njh11j00d49x0g0wgr4ldz"))))
  (build-system gnu-build-system)
;  (arguments
;    '(#:tests? #f
;      #:phases
;      (modify-phases %standard-phases
;       (add-after 'unpack 'chdir
;        (lambda* _
;         (chdir "mjpg-streamer-experimental"))))))
  (native-inputs `(("gdc-toolchain" ,gdc-toolchain-10) ("pkg-config" ,pkg-config) ("rdmd" ,rdmd) ("ldc" ,ldc)))
  (synopsis "OneDrive Client for Linux")
  (description "OneDrive Client which supports OneDrive Personal, OneDrive for Business, OneDrive for Office365 and SharePoint.")
  (home-page "https://abraunegg.github.io/")
  (license license:gpl2)))
