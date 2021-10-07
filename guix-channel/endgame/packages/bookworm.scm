(define-module (endgame packages bookworm)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages cmake)
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

; depends on
; https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=webkitgtk
(define-public bookworm
(package
  (name "bookworm")
  (version "1.1.2")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/babluboy/bookworm")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0w0rlyahpgx0l6inkbj106agbnr2czil0vdcy1zzv70apnjz488j"))))
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
                   ("desktop-file-utils" ,desktop-file-utils)
                   ("pkg-config" ,pkg-config)))
  (inputs `(("python" ,python)
            ("libgee" ,libgee)
            ("webkitgtk" ,webkitgtk)
            ("gtk+", gtk+) 
            ("granite" ,granite)
            ("poppler" ,poppler)
            ("vala" ,vala)))
  (synopsis "Simple ebook reader")
  (description "Read the books you love without having to worry about
the different format complexities like epub, pdf, mobi, cbr, etc.
This version supports EPUB, MOBI, FB2, PDF, FB2 and Comics (CBR and CBZ)
formats.")
  (home-page "https://github.com/babluboy/bookworm")
  (license license:gpl3+)))
