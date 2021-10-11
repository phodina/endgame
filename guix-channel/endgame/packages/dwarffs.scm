(define-module (endgame packages dwarffs)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages autotools)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Fork and apply for Guix
(define-public dwarffs
  (let ((commit "f691e2c991e75edb22836f1dbe632c40324215c5")
	(revision "1"))
(package
  (name "dwarffs")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/edolstra/dwarffs")
             (commit commit)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0hynw8f4ai83qs27r62h6cl8m3b6b613nbac480ggbdv94lndhyg"))))
  (build-system gnu-build-system)
  (synopsis "FUSE filesystem with tools such as gdb")
  (description "This package provides a a FUSE-based filesystem that fetches DWARF debug info files automatically from cache.nixos.org, based on the build ID embedded in ELF executables and libraries.")
  (home-page "https://github.com/edolstra/dwarffs")
  (license license:gpl3))))
