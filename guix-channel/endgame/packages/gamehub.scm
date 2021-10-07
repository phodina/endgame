(define-module (endgame packages gamehub)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages gettext)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses) #:prefix license:))

; http://identicalsoftware.com/gamerzilla/sourcecode.html
(define-public gamehub
(package
  (name "gamehub")
  (version "0.16.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/tkashkin/GameHub")
             (commit (string-append version "-2-master"))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "08hxswd2j25z78akxbmbkb29rdcnx8z7j5jca3p7x1vb7ilq17dy"))))
  (build-system meson-build-system)
  (native-inputs `(("gettext" ,gnu-gettext)
		   ("glib:bin" ,glib "bin")
		   ("pkg-config" ,pkg-config)))
  (inputs `(("vala" ,vala)))
  (synopsis "All games in one place")
  (description "This package provides unified access to games from different
platforms.")
  (home-page "https://github.com/tkashkin/GameHub")
  (license license:gpl3+)))
