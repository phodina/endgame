(define-module (endgame packages locks)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

; https://www.linuxjournal.com/content/hack-and-automatically-lock-your-computer
; https://www.daniloaz.com/en/automatically-lock-unlock-your-screen-by-bluetooth-device-proximity/
(define-public bluetooth-unlock
  (package
    (name "bluetooth-unlock")
    (version "V1FR1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/LethalEthan/Bluetooth-Unlock")
	       (commit (string-append "BU-" version))))
        (sha256
          (base32
            "1hmb74rcky3nax4lxn7pw6lcd2a66fdbwrm11c84zb31xb51bakw"))))
    (build-system python-build-system)
;    (arguments
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
    (inputs `(("python-pyphotonfile", python-pyphotonfile)
	      ("python-numpy" ,python-numpy)
	      ("python-pyside-2" ,python-pyside-2)
	      ("python-pillow" ,python-pillow)))
    (home-page "https://github.com/LethalEthan/Bluetooth-Unlock")
    (synopsis "Unlock computer using a Bluetooth device when nearby")
    (description "Bluetooth unlock is a python script that checks for your device periodically to check if you are there, and if no connection is found then your computer locks")
    (license license:expat)))

(define-public blueproximity
  (package
    (name "blueproximity")
    (version "1.3.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/tiktaalik-dev/blueproximity")
	       (commit (string-append "v" version))))
        (sha256
          (base32
            "1hh1fcn7q3kyk2413pjs18xnxvzrchrisbpj2cd59jrdp0qzgv2s"))))
    (build-system python-build-system)
    (home-page "https://github.com/tiktaalik-dev/blueproximity")
    (synopsis "Lock/unlock your screen automatically based on distance to Bluetooth device")
    (description "Desktop application to lock/unlock your screen automatically based on detecting how close it's to another Bluetooth device (e.g. your mobile phone).")
    (license license:gpl2)))
