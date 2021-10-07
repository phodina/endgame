(define-module (endgame packages crateway)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; https://github.com/orgs/WebThingsIO/repositories?q=&type=&language=rust&sort=

(define-public rust-crateway
  (let ((commit "ffa73c4614b00aa8a5c1db2e4368d26030cc3df5")
	(revision "1"))
  (package
    (name "crateway")
    (version (git-version "" revision commit))
    (source
      (origin
        (method git-fetch)
        (uri (git-reference (url "https://github.com/WebThingsIO/crateway")
			    (commit commit)))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1alkmkx4z0bmg0b8jx1lmhsab04di9lgqr3lff2sm0vrj54ab7c2"))))
    (build-system cargo-build-system)
;    (arguments
;      `(#:cargo-inputs
;        (("rust-freedesktop-entry-parser" ,rust-freedesktop-entry-parser-)
;	 ("rust-locale-types" ,rust-locale-types-)
;	 ("regex" ,rust-regex))))
    (home-page "https://github.com/WebThingsIO/crateway")
    (synopsis "WebThings Gateway")
    (description "This package provides gatway for WebThings platfrom for home
automation.")
    (license license:mpl2.0))))
