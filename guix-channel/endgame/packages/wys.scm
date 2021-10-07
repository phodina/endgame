(define-module (endgame packages wys)
  #:use-module (guix packages)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages pulseaudio)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses) #:prefix license:))

(define-public wys
  (package
    (name "wys")
    (version "0.1.11")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://source.puri.sm/Librem5/wys")
             (commit (string-append "v" version))))
       (sha256
        (base32
         "0zrqlq2397ny59d743z7y4bs86vz0vbs4a4p2082m3m89rj075mx"))))
    (build-system meson-build-system)
    (native-inputs `(("pkg-config" ,pkg-config)
		     ("glib:bin" ,glib "bin")
		     ("cmake" ,cmake)))
    (inputs `(("pulseaudio" ,pulseaudio)
	      ("modem-manager" ,modem-manager)))
    (home-page "https://source.puri.sm/Librem5/wys")
    (synopsis "PulseAudio daemon for phone call audio")
    (description "This package provides a daemon to bring up and take down
PulseAudio loopbacks for phone call audio in Librem 5 phone with
a Gemalto PLS8.")
    (license license:gpl3+)))
