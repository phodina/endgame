(define-module (endgame packages pinecil)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages flashing-tools)
  #:use-module (guix git-download)
  #:use-module (guix build-system qt)
  #:use-module ((guix licenses) #:prefix license:))

(define-public pinecil
(package
  (name "pinecil")
  (version "1.3")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/pine64/pinecil-firmware-updater")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "05dyn4ah94als6afcg75mzfv4agzfhn043s9r3kcgqgwk2bglbfv"))))
  (build-system qt-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
       (delete 'configure))))
  (inputs `(("dfu-util" ,dfu-util)))
  (synopsis "Application for updating Pinecil soldering iron")
  (description "Application for updating Pine64's Pinecil soldering iron.")
  (home-page "https://github.com/pine64/pinecil-firmware-updater")
  (license license:bsd-3)))

; # Create make file using Qt
;qmake
;# Build
;make
;# Link dfu-util symbolically to this folder
;ln -s /usr/bin/dfu-util .
;# Run the tool
;sudo ./pinecil_firmware_updater
