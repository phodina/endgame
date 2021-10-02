(define-module (endgame packages tegra)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages libedit)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public tegra-eeprom-tool
(package
  (name "tegra-eeprom-tool")
  (version "1.2.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/OE4T/tegra-eeprom-tool")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1gbsfg9w5afqyqzv8yh4n50cj9xdlwdvl0wgz9s7la07fclmh0vg"))))
  (build-system gnu-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)
                   ("autoconf" ,autoconf)
                   ("libedit" ,libedit)
                   ("libtool" ,libtool)
                   ("automake" ,automake)))
  (inputs `(("ncurses" ,ncurses)))
  (supported-systems '("armhf-linux" "aarch64-linux"))
  (synopsis "Read EEPROM on NVIDIA Jetson platforms")
  (description "This package provides library and tools for working with
identification EEPROMs on NVIDIA Jetson/Tegra hardware.  Works with EEPROMs
directly accessible through an EEPROM driver (for read/write access), or via
userspace I2C transactions (for reads only).")
  (home-page "https://github.com/OE4T/tegra-eeprom-tool")
  (license license:expat)))
