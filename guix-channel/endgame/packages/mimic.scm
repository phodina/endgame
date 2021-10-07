(define-module (endgame packages mimic)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Ask for license
(define-public rust-mimic
  (let ((commit "9c1ff27dac0f25849d01a9bfe1f53b9ac0fa0068")
	(revision "1"))
  (package
    (name "rust-mimic")
    (version "")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference (url "https://github.com/jawline/Mimic")
			    (commit commit)))
        (sha256
          (base32
            "25mhszk9qy2q49dpab4p0d9d4aph61yshaxjf02mhdx07n9qpnmh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-freedesktop-entry-parser" ,rust-freedesktop-entry-parser-)
	 ("regex" ,rust-regex))))
    (home-page "https://github.com/jawline/Mimic")
    (synopsis "Gameboy emulator written in Rust")
    (description "This package provides Gameboy emulator written in Rust that
can use a command line interface as a screen and input device.")
    (license #f)))

