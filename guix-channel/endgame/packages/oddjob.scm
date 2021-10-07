(define-module (endgame packages oddjob)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages image)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages selinux)
  #:use-module (gnu packages cyrus-sasl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages kerberos)
  #:use-module (gnu packages python)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages openldap)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

;https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=oddjob
(define-public oddjob
(package
  (name "oddjob")
  (version "0.34.7")
  (source (origin
            (method url-fetch)
            (uri (string-append "https://releases.pagure.org/oddjob/oddjob-" version ".tar.gz"))
	;    (patches '("endgame/packages/patches/oddjob-remove-SELinux-support.patch"))
            (sha256
             (base32
              "1c6s6y7liblcgll7j3ljkgx9zxxh2m834km671lgnr8j2sbf0v71"))))
  (build-system gnu-build-system)
  (arguments
    `(#:tests? #f
      #:phases
      (modify-phases %standard-phases
       (add-before 'configure 'disable-selinux
        (lambda* _
          (invoke "aclocal" "--force" "--install")
          (invoke "autoreconf" "-vfi"))))))
;         (setenv "SELINUX_OPTIONS" ""))))))
  (native-inputs `(("automake" ,automake)
		   ("autoconf" ,autoconf)
		   ("libtool" ,libtool)
		   ("libselinux" ,libselinux)
		   ("pkg-config" ,pkg-config)))
  (inputs `(("cyrus-sasl" ,cyrus-sasl)
	    ("mit-krb5" ,mit-krb5)
	    ("libxml2" ,libxml2)
	    ("python" ,python)
	    ("openldap" ,openldap)
	    ("linux-pam" ,linux-pam)
	    ("dbus" ,dbus)))
  (synopsis "D-Bus service which runs odd jobs on behalf of client apps")
  (description "Command line application that copies JPEG frames from one or
more input plugins to multiple output plugins.  It can be used to stream JPEG
files over an IP-based network from a webcam to various types of viewers such
as Chrome, Firefox, Cambozola, VLC, mplayer, and other software capable of
receiving MJPG streams.")
  (home-page "https://pagure.io/oddjob")
  (license #f)))
