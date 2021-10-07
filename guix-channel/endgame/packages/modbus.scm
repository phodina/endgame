(define-module (endgame packages modbus)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public qmodmaster
  (package
    (name "qmodmaster")
    (version "0.5.2-3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "https://sourceforge.net/projects/qmodmaster/files/qModMaster-code-0.5.2-3.zip/download/qModMaster-code-" version ".zip"))
        (file-name (string-append name "-" version ".zip"))
        (sha256
          (base32
            "0c0n3sdxjs0ldgf5cm2kacv98acwag4047ss5n3s063a8v36ckck"))))
    (build-system gnu-build-system)
    ; TODO: unzip
    (home-page "https://sourceforge.net/projects/qmodmaster")
    (synopsis "Qt ModBus master application")
    (description "@code{qmodmaster} provides Qt GUI to allow easy communication
with ModBus RTU and TCP slaves.  @code{qmodmaster} also includes a bus monitor for examining all traffic on the bus.")
    (license license:gpl3)))

