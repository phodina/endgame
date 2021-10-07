(define-module (endgame packages qmi)
  #:use-module (guix packages)
  #:use-module (gnu packages check)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages qt)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: https://github.com/Biktorgj/pinephone_modem_sdk
; TODO: replace /usr/bin/env
; https://wiki.postmarketos.org/wiki/Create_usbmon_capture

(define-public python-wireshark-qmi-dissector
	       (let ((commit "8485ced4aecaa7466c69a4c86a47118b7a20dbc6")
		     (revision "1"))
  (package
    (name "python-wireshark-qmi-dissector")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/dnlplm/WiresharkQMIDissector")
	       (commit version)))
        (sha256
          (base32
            "01xzrv5nvd2nvj91lz4x9s91y9825j9pj96z0ap6yvy3w1dgvkkl"))))
    (build-system python-build-system)
    (arguments
      `(#:tests? #f))
;      `(#:phases
;	(modify-phases %standard-phases
 ;          (add-after 'install 'install-binary
 ;            (lambda* (#:key outputs #:allow-other-keys)
 ;              (let* ((bindir (string-append (assoc-ref outputs "out") "/bin"))
  ;                    (binary (string-append bindir "/photonfile")))
   ;              (mkdir-p bindir)
     ;            (copy-file "pyphotonfile/photonfile.py" binary)
      ;           (chmod binary #o555)
    ;  ))))))
    (home-page "https://github.com/dnlplm/WiresharkQMIDissector")
    (synopsis "Wireshark QMI dissector for Qualcomm based modems")
    (description "Wireshark QMI dissector for Qualcomm based modems")
    (license license:gpl3))))

; /usr/bin/env: bad interpreter: No such file or directory
(define-public libqmi
  (package
    (name "libqmi")
    (version "1.30.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://gitlab.freedesktop.org/mobile-broadband/libqmi")
	       (commit version)))
        (sha256
          (base32
            "1b760q25l9q2dlv90vdvh94mivqi2s58zlsp4zx278dvh8afbnbi"))))
    (build-system meson-build-system)
;    (arguments
;      `(#:tests? #f))
;      `(#:phases
;	(modify-phases %standard-phases
 ;          (add-after 'install 'install-binary
 ;            (lambda* (#:key outputs #:allow-other-keys)
 ;              (let* ((bindir (string-append (assoc-ref outputs "out") "/bin"))
  ;                    (binary (string-append bindir "/photonfile")))
   ;              (mkdir-p bindir)
     ;            (copy-file "pyphotonfile/photonfile.py" binary)
      ;           (chmod binary #o555)
    ;  ))))))
    (home-page "QMI modem protocol helper library")
    (native-inputs `(("pkg-config" ,pkg-config)
		     ("cmake" ,cmake)))
    (inputs `(("glib" ,glib)
	      ("bash-completion" ,bash-completion)
	      ("gobject-introspection" ,gobject-introspection)
	      ("libgudev" ,libgudev)))
    (synopsis "Wireshark QMI dissector for Qualcomm based modems")
    (description "@code{libqmi} is a glib-based library for talking to WWAN modems and devices which
speak the Qualcomm MSM Interface (QMI) protocol.")
    (license license:gpl2+)))
