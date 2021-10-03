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
