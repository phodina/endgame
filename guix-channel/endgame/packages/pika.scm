(define-module (endgame packages pika)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages rust)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages webkit)
  #:use-module (gnu packages pdf)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages python)
  #:use-module (gnu packages pantheon)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses) #:prefix license:))

(define-public pika-backup
(package
  (name "pika-backup")
  (version "0.3.5")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://gitlab.gnome.org/World/pika-backup")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0n1vl0rzs1ssbs2zmdbjpsgrmr5v15p4n340xdk3hdnkwsgzfd7j"))))
  (build-system meson-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
         (add-after 'install 'fix-project-name
           (lambda* _
             (invoke "mv" (string-append %output "/bin/com.github.babluboy.bookworm")
		     (string-append %output "/bin/bookworm")))))))
  (native-inputs `(("glib:bin", glib "bin")
                   ("cmake" ,cmake)
		   ("rust" ,rust)
                   ("desktop-file-utils" ,desktop-file-utils)
                   ("pkg-config" ,pkg-config)))
  (inputs `(("python" ,python)
            ("libgee" ,libgee)
            ("libhandy" ,libhandy)
            ("webkitgtk" ,webkitgtk)
            ("gtk+", gtk+) 
            ("granite" ,granite)
            ("poppler" ,poppler)
            ("vala" ,vala)))
  (synopsis "Simple backups based on borg")
  (description "This package allows you to do backups the easy way.  Plugin
your USB drive and let the Pika do the rest for you.")
  (home-page "https://gitlab.gnome.org/World/pika-backup")
  (license license:gpl3+)))
