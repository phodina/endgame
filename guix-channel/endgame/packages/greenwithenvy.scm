(define-module (endgame packages greenwithenvy)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages python)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses) #:prefix license:))

(define-public greenwithenvy
(package
  (name "greenwithenvy")
  (version "0.15.4")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://gitlab.com/leinardi/gwe")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "166i081424rq8chhz7x38p54l36gscp3qxkl1lnhyq5m9vv74dgd"))))
  (build-system meson-build-system)
;  (arguments
;    `(#:tests? #f ; no tests
;      #:phases
;      (modify-phases %standard-phases
;       (add-after 'unpack 'fix-git-version
;        (lambda* _
;          (substitute* "libuuu/CMakeLists.txt"
;            (("sh -c.*") ,(string-append "echo '\\#define GIT_VERSION "
;             "\\\"libuuu_" version "\\\"' > ${gitversion_h}\n"))))))))
  (native-inputs `(("pkg-config" ,pkg-config)
	           ("gobject-introspection" ,gobject-introspection)
                   ("glib" ,glib)))
;python-injector
;python-matplotlib
;python-peewee
;python-py3nvml
;python-PyGObject
;python-xlib
;python-pyxdg
;python-requests
;python-Rx

  (inputs `(("python" ,python)
	    ("gobject-introspection" ,gobject-introspection)))
  (synopsis "Control the fans and overclock your NVIDIA card.")
  (description "GWE is a GTK system utility designed to provide information,
control the fans and overclock your NVIDIA video card and graphics processor.")
  (home-page "https://gitlab.com/leinardi/gwe")
  (license license:gpl3+)))
