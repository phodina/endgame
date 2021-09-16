(define-module (endgame packages usbview)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages image)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages imagemagick)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public usbview
 (let ((commit "e9cdd841df1c237a82c6218d32be289e8a45eb71")
       (revision "1"))
(package
  (name "usbview")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/gregkh/usbview/")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1lr6i48hhi5wzq9q7fcfxsd9lcn1chyxaldszqqana1nf0m64nxs"))))
  (build-system gnu-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)
		   ("imagemagick" ,imagemagick)))
  (inputs `(("autoconf" ,autoconf)
	    ("gtk+", gtk+)
	    ("automake" ,automake)))
;  (arguments
;    '(#:tests? #f
;      #:phases
;      (modify-phases %standard-phases
;       (add-after 'unpack 'chdir
;        (lambda* _
;         (chdir "mjpg-streamer-experimental"))))))
;  (inputs `(("libjpeg-turbo" ,libjpeg-turbo)))
  (synopsis "USB viewer for Linux")
  (description "Shows a graphical representation of the devices that are
currently plugged in, showing the topology of the USB bus. It also displays
information on each individual device on the bus.")
  (home-page "https://github.com/jacksonliam/mjpg-streamer")
  (license license:gpl2))))
