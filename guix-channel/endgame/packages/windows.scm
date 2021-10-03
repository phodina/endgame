(define-module (endgame packages windows)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages kerberos)
  #:use-module (gnu packages openldap)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages docbook)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages mingw)
  #:use-module (gnu packages polkit)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages curl)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system scons)
  #:use-module ((guix licenses) #:prefix license:))

(define-public osslsigncode
  (package
    (name "osslsigncode")
    (version "2.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                (url "https://github.com/mtrojnar/osslsigncode")
                (commit version)))
              (file-name (git-file-name name version))
              (sha256
                (base32
                  "110rx4cc5jlvz8h932ziqw1ppca32499i4p2rw2hwv8mk7la70px"))))
    (build-system gnu-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)
                   ("autoconf" ,autoconf)
                   ("intltool" ,intltool)
                   ("automake" ,automake)))
  (inputs `(("curl" ,curl)
            ("openssl" ,openssl)))
  (synopsis "Signing for PE/MSI/Java CAB files")
  (description "@code{osslsigncode} provides a small tool that implements
part of the functionality of the Microsoft tool @code{signtool.exe} - more
exactly the Authenticode signing and timestamping")
  (home-page "https://github.com/mtrojnar/osslsigncode")
  (license license:gpl3+)))

; https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=nsis

(define-public nsis
  (package
    (name "nsis")
    (version "3.07")
    (source (origin
              (method url-fetch)
              (uri (string-append "http://downloads.sourceforge.net/project/nsis/NSIS%203/" version "/" name "-" version "-src.tar.bz2"))
              (sha256
                (base32
                  "1fpg2l89qfjwyanvid9rs7kk3ajq2j7f280xv565p649hlwd7yjd"))))
    (build-system scons-build-system)
;    (arguments
;     `(#:configure-flags (list "--with-systemd-unit-dir=no" "--with-systemd-journal=no" "--disable-doc")
;       #:phases
;       (modify-phases %standard-phases
;         (add-after 'unpack 'xml-validation
;           (lambda* (#:key inputs #:allow-other-keys)
;             (let ((local (string-append (assoc-ref inputs "docbook-xml") "/xml/dtd/docbook")))
	     ; substitute in order to validate locally due to network restriction
  (native-inputs `(("mingw-w64-x86_64" ,mingw-w64-x86_64)))
  (synopsis "Professional system to create Windows installers")
  (description "NSIS (Nullsoft Scriptable Install System) is a professional
system to create Windows installers. It is designed to be as small and flexible
as possible.")
  (home-page "http://nsis.sourceforge.net")
  (license license:zlib)))
