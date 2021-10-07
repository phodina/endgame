(define-module (endgame packages wayland)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; https://github.com/l4l/yofi
;https://github.com/lbonn/rofi
(define-public rust-sirula-0.0
  (package
    (name "rust-sirula")
    (version "0.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference (url "https://github.com/DorianRudolph/sirula")
			    (commit version)))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "25mhszk9qy2q49dpab4p0d9d4aph61yshaxjf02mhdx07n9qpnmh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-freedesktop-entry-parser" ,rust-freedesktop-entry-parser-)
	 ("rust-locale-types" ,rust-locale-types-)
         ("rust-gtk" ,rust-gtk-)
         ("rust-gio" ,rust-gio-)
         ("rust-gdk" ,rust-gdk-)
         ("rust-pango" ,rust-pango-)
         ("rust-gdk-pixbuf" ,rust-gdk-pixbuf-)
         ("rust-glib" ,rust-glib-)
	 ("rust-futures" ,rust-futures-)
	 ("rust-fuzzy-matcher" ,rust-fuzzy-matcher-)
	 ("rust-xdg" ,rust-xdg-)
	 ("rust-serde" ,rust-serde-)
	 ("rust-serde-derive" ,rust-serde-derive-)
	 ("rust-toml" ,rust-toml-)
	 ("regex" ,rust-regex))))
    (home-page "https://github.com/DorianRudolph/sirula")
    (synopsis "Simple app launcher for wayland")
    (description "Sirula (simple rust launcher) is an app launcher for wayland.")
    (license license:expat)))

