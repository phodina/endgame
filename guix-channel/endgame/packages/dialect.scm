(define-module (endgame packages dialect)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages gettext)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages cmake)
  #:use-module (guix git-download)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses) #:prefix license:))

(define-public dialect
  (package
    (name "dialect")
    (version "1.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
         (url "https://github.com/dialect-app/dialect/")
         (commit version)))
        (sha256
          (base32
            "15xixpggqvxv44ddbis6m6r1f7dalb4rand8wcf34xx43iz538k5"))))
    (build-system meson-build-system)
    (native-inputs `(("cmake" ,cmake)
		     ("glib:bin" ,glib "bin") ; for glib-compile-resources
		     ("gtk+:bin", gtk+ "bin") ; For gtk-update-icon-cache
		     ("desktop-file-utils" ,desktop-file-utils) ; for update-desktop-database
		     ("gettext" ,gnu-gettext)
		     ("pkg-config" ,pkg-config)))
    (inputs `(("gtk+" ,gtk+)
	      ("python-pygobject" ,python-pygobject)
              ("gobject-introspection" ,gobject-introspection)))
    (home-page "https://github.com/dialect-app/dialect/")
    (synopsis "Translation app for GNOME")
    (description "@code{bmaptool} is a generic tool for creating the block map
(bmap) for a file and copying files using the block map.")
    (license license:gpl3)))
