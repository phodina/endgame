(define-module (endgame packages veloren)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; Split workspace into crates
; https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=veloren
(define-public veloren
  (package
    (name "veloren")
    (version "0.11.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://gitlab.com/veloren/veloren.git")
	       (commit (string-append "v" version))))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "05sajpzlphm25ggx4g1lc81hh4d5qnk7xw8866p4gjgjwpfhhyna"))))
    (build-system cargo-build-system)
    (home-page "")
    (synopsis "An open-world, open-source multiplayer voxel RPG")
    (description "An open-world, open-source multiplayer voxel RPG")
    (license license:gpl3+)))
