(define-module (endgame packages lorri)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-lorri-1.5
  (package
    (name "rust-lorri")
    (version "1.5.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference (url "https://github.com/nix-community/lorri")
	     (commit version)))
        (file-name (string-append name version))
        (sha256
          (base32
            "15mhszk0qy2q49dpab4p0d9d4aph61yshaxjf02mhdx07n9qpnmh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-development-inputs
	(("rust-proptest" ,rust-proptest))
	#:cargo-inputs
        (("rust-notify" ,rust-notify)
         ("rust-atomicwrites" ,rust-atomicwrites)
         ("rust-crossbeam-channel" ,rust-crossbeam-channel)
         ("rust-nix" ,rust-nix)
         ("rust-regex" ,rust-regex)
         ("rust-tempfile" ,rust-tempfile)
         ("rust-anyhow" ,rust-anyhow)
         ("rust-thiserror" ,rust-thiserror)
         ("rust-structopt" ,rust-structopt)
         ("rust-slog" ,rust-slog)
         ("rust-slog-scope" ,rust-slog-scope)
         ("rust-slog-term" ,rust-slog-term)
         ("rust-fastrand" ,rust-fastrand)
         ("rust-serde" ,rust-serde)
         ("rust-serde-derive" ,rust-serde-derive)
         ("rust-serde-json" ,rust-serde-json)
         ("rust-bincode" ,rust-bincode)
         ("rust-ctrlc" ,rust-ctrlc)
         ("rust-directories" ,rust-directories)
         ("rust-lazy-static" ,rust-lazy-static)
         ("rust-md5" ,rust-md5)
         ("rust-vec1" ,rust-vec1)
         ("rust-human-panic" ,rust-human-panic))))
    (home-page "https://github.com/nix-community/lorri")
    (synopsis
      "Nix-shell replacement for project development")
    (description
      "Lorri is based around fast direnv integration for robust CLI and editor integration.")
    (license license:asl2.0)))

