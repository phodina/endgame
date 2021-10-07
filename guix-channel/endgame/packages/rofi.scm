(define-module (endgame packages rofi)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages mpd)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages check)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages image)
  #:use-module (gnu packages glib)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rofi-wayland
  (package
    (name "rofi-wayland")
    (version "1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://github.com/lbonn/rofi"
                                  "/archive/refs/tags/"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mfn4rqgvqm9qdlna67zbwjaigpsh20hrl21zhlrxmx64z0shb7a"))))
    (build-system meson-build-system)
    (inputs
     `(("pango" ,pango)
       ("cairo" ,cairo)
       ("glib" ,glib)
       ("git" ,git)
       ("startup-notification" ,startup-notification)
       ("libjpeg" ,libjpeg-turbo)
       ("librsvg" ,librsvg)
       ("wayland" ,wayland)
       ("libxkbcommon" ,libxkbcommon)
       ("libxcb" ,libxcb)
       ("xcb-util" ,xcb-util)
       ("xcb-util-cursor" ,xcb-util-cursor)
       ("xcb-util-xrm" ,xcb-util-xrm)
       ("xcb-util-wm" ,xcb-util-wm)))
    (native-inputs
     `(("check" ,check)
       ("glib:bin" ,glib "bin")
       ("pkg-config" ,pkg-config)))
    (arguments
     `(#:parallel-tests? #f             ; fails in some circumstances
       #:configure-flags (list "-Dwayland=enabled")
       #:phases
       (modify-phases %standard-phases
         (add-before 'configure 'adjust-tests
           (lambda _
             (substitute* '("test/helper-expand.c")
               (("~root") "/root")
               (("~") "")
               (("g_get_home_dir \\(\\)") "\"/\""))
             #t)))))
    (home-page "https://github.com/davatorium/rofi")
    (synopsis "Application launcher for wayland")
    (description "Rofi is a minimalist application launcher for wayland.
It memorizes which applications you regularly use and also allows you to
search for an application by name.")
    (license license:expat)))

(define-public libnkutils
  (let ((commit "8adccd3b1b33b2a9a29dd12a7e686907bbafc5d4")
	(revision "1"))
  (package
    (name "libnkutils")
    (version commit)
    (source (origin
              (method git-fetch)
              (uri (git-reference
		     (url "https://github.com/sardemff7/libnkutils")
		     (commit version)))
              (sha256
               (base32
                "1q7ahcn7vk3nn8m5jhg0fwg9s8bhjdc0srmfjy2l9p8bzqxnyqzl"))))
    (build-system gnu-build-system)
    (inputs
     `(("pango" ,pango)
       ("cairo" ,cairo)
       ("glib" ,glib)
       ("git" ,git)
       ("startup-notification" ,startup-notification)
       ("libjpeg" ,libjpeg-turbo)
       ("libgwater" ,libgwater)
       ("librsvg" ,librsvg)
       ("wayland" ,wayland)
       ("libxkbcommon" ,libxkbcommon)
       ("libxcb" ,libxcb)
       ("xcb-util" ,xcb-util)
       ("xcb-util-cursor" ,xcb-util-cursor)
       ("xcb-util-xrm" ,xcb-util-xrm)
       ("xcb-util-wm" ,xcb-util-wm)))
    (native-inputs
     `(("check" ,check)
       ("autoconf" ,autoconf)
       ("automake" ,automake)
       ("libtool" ,libtool)
       ("libxslt" ,libxslt)
       ("glib:bin" ,glib "bin")
       ("pkg-config" ,pkg-config)))
    (home-page "https://github.com/sardemff7/libnkutils")
    (synopsis "Miscellaneous utilities")
    (description "Miscellaneous utilities")
    (license #f))))

(define-public libgwater
  (let ((commit "1db5b4b068b64d857c65b27a739e42f5060147f0")
	(revision "1"))
  (package
    (name "libgwater")
    (version commit)
    (source (origin
              (method git-fetch)
              (uri (git-reference
		     (url "https://github.com/sardemff7/libgwater")
		     (commit version)))
              (sha256
               (base32
                "0bp7b626yvqv78pb6xyjnlf5pazdbchjx9lynhcdygckddzrihxd"))))
    (build-system meson-build-system)
    (inputs
     `(("pango" ,pango)
       ("cairo" ,cairo)
       ("glib" ,glib)
       ("git" ,git)
       ("startup-notification" ,startup-notification)
       ("libjpeg" ,libjpeg-turbo)
       ("librsvg" ,librsvg)
       ("wayland" ,wayland)
       ("libxkbcommon" ,libxkbcommon)
       ("libxcb" ,libxcb)
       ("libnl" ,libnl)
       ("alsa-lib" ,alsa-lib)
       ("libmpdclient" ,libmpdclient)
       ("xcb-util" ,xcb-util)
       ("xcb-util-cursor" ,xcb-util-cursor)
       ("xcb-util-xrm" ,xcb-util-xrm)
       ("xcb-util-wm" ,xcb-util-wm)))
    (native-inputs
     `(("check" ,check)
       ("glib:bin" ,glib "bin")
       ("pkg-config" ,pkg-config)))
    (home-page "https://github.com/sardemff7/libnkutils")
    (synopsis "Miscellaneous utilities")
    (description "Miscellaneous utilities")
    (license #f))))
