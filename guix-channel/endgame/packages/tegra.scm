(define-module (endgame packages tegra)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages libedit)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages linux)
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

(define-public tegra-boot-tools
(package
  (name "tegra-boot-tools")
  (version "2.5.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/OE4T/tegra-boot-tools")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "13r7lzydp42rj2gdb1qpmq5kmdigwyqwh776hhg03vh7jczrr73y"))))
  (build-system gnu-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)
                   ("autoconf" ,autoconf)
                   ("libedit" ,libedit)
                   ("libtool" ,libtool)
                   ("automake" ,automake)))
  (inputs `(("ncurses" ,ncurses)
	    ("libuuid" ,util-linux "lib")
	    ("tegra-eeprom-tool" ,tegra-eeprom-tool)
	    ("zlib" ,zlib)))
  (supported-systems '("armhf-linux" "aarch64-linux"))
  (synopsis "Boot-related tools for Tegra platforms")
  (description "This package contains boot-related tools for Tegra platforms,
which augment and/or replace the boot control and bootloader upgrade tools:
@enumerate
@item tegra-bootinfo
@item tegra-bootloader-update
@item tegra-boot-control
@end enumerate")
  (home-page "https://github.com/OE4T/tegra-boot-tools")
  (license license:expat)))

(define-public cbootimage
(package
  (name "cbootimage")
  (version "1.8")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/NVIDIA/cbootimage")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1cvk2py221mmdicvsvkscrpzkim64cq5qxjzad7gvxm4561p41mb"))))
  (build-system gnu-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
        (add-after 'unpack 'patch-/bin/sh
          (lambda* _
            (substitute* "autogen.sh"
              (("/bin/sh") (which "sh")))
            (substitute* "configure.ac"
              (("/bin/sh") (which "sh"))))))))
  (native-inputs `(("bash" ,bash)
		   ("pkg-config" ,pkg-config)
                   ("autoconf" ,autoconf)
                   ("libedit" ,libedit)
                   ("libtool" ,libtool)
                   ("automake" ,automake)))
  (inputs `(("ncurses" ,ncurses)
            ("libuuid" ,util-linux "lib")
            ("tegra-eeprom-tool" ,tegra-eeprom-tool)
            ("zlib" ,zlib)))
  (supported-systems '("armhf-linux" "aarch64-linux"))
  (synopsis "Tegra BCT and bootable flash image generator/compiler")
  (description "This package provides a tool which compiles BCT (Boot
Configuration Table) images to place into the boot flash of a Tegra-based
device:
@enumerate
@item Compile a textual representation of a BCT into a binary image.
@item Generate an entire boot image from a previously compiled BCT and a
   bootloader binary.
@end enumerate")
  (home-page "https://github.com/NVIDIA/cbootimage")
  (license license:expat)))
