(define-module (endgame packages koreader)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; Requires git probably to get version
(define-public koreader
(package
  (name "koreader")
  (version "2021.09")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/koreader/koreader")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "046fzzps0zws3v9603srg6lvdm4pj4g4db1fc2ay1cnsfslv29xv"))))
  (build-system gnu-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
        (delete 'configure))))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (synopsis "ebook reader application supporting PDF, DjVu, EPUB, FB2, ...")
  (description "This package provide an ebook reader application supporting PDF, DjVu, EPUB, FB2 and many more formats.")
  (home-page "http://koreader.rocks/")
  (license license:agpl3)))
