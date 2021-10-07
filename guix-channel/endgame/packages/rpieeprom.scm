(define-module (endgame packages rpieeprom)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages python)
  #:use-module (guix git-download)
  #:use-module (guix build-system copy)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Port more tools from https://github.com/orgs/RPi-Distro/repositories
; TODO: Substitute shell commands

(define-public rpi-eeprom
(package
  (name "rpi-eeprom")
  (version "2021.04.29-138a1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/raspberrypi/rpi-eeprom")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "19vmppbia3rbc1gpy78cmbfh10r2z0yyynp18hf21a10mqyhqc4z"))))
  (build-system copy-build-system)
  (inputs `(("python" ,python-3)))
  (synopsis "Installation scripts and binaries for the closed sourced Raspberry Pi 4 EEPROMs")
  (description "This repository contains the scripts and pre-compiled binaries used to create the rpi-eeprom package which is used to update the Raspberry Pi 4 bootloader and VLI USB controller EEPROMs.")
  (home-page "https://github.com/raspberrypi/rpi-eeprom")
  (license license:bsd-3)))

(define-public rpi-config
  (let ((commit "de70c08c7629b2370d683193a62587ca30051e36")
	(revision "1"))
(package
  (name "rpi-config")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/RPi-Distro/raspi-config")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1vmyarslgijjw8bam1d7q5apay5v4zv5rm3c7r3sgqgfgcvmj9yr"))))
  (build-system copy-build-system)
  (synopsis "Configuration tool for the Raspberry Pi")
  (description "This package provides TUI configuration tool for the Raspberry Pi.")
  (home-page "https://github.com/RPi-Distro/raspi-config")
  (license license:expat))))
