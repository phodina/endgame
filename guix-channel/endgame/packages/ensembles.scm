(define-module (endgame packages ensembles)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages music)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages gstreamer)
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

(define-public ensembles
(package
  (name "ensembles")
  (version "0.0.13")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/SubhadeepJasu/ensembles")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0fns55ilzjcc5iikwhnca50xv5j2l9aa7hx0akgnnx6nbzds0p2d"))))
  (build-system meson-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
         (add-after 'install 'fix-project-name
           (lambda* _
             (invoke "mv" (string-append %output "/bin/com.github.subhadeepjasu.ensembles")
		     (string-append %output "/bin/ensembles")))))))
  (native-inputs `(("glib:bin", glib "bin")
                   ("cmake" ,cmake)
                   ("desktop-file-utils" ,desktop-file-utils)
                   ("pkg-config" ,pkg-config)))
  (inputs `(("python" ,python)
            ("libgee" ,libgee)
            ("webkitgtk" ,webkitgtk)
            ("gtk+", gtk+) 
	    ("libhandy" ,libhandy)
	    ("gstreamer" ,gstreamer)
	    ("portmidi" ,portmidi)
	    ("json-glib" ,json-glib)
	    ("fluidsynth" ,fluidsynth)
            ("granite" ,granite)
            ("poppler" ,poppler)
            ("vala" ,vala)))
  (synopsis "Digital arranger workstation")
  (description "This pakage provides a realtime musical performance arranger
app.  Ensembles is different from other DAW (Digital Audio Workstations)
in the fact that the focus here is on live performance.")
  (home-page "https://github.com/SubhadeepJasu/ensembles")
  (license license:gpl3)))
