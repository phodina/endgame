(define-module (endgame packages adcli)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages cyrus-sasl)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages kerberos)
  #:use-module (gnu packages openldap)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages docbook)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; I/O error : Attempt to load network entity http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
(define-public adcli
(package
  (name "adcli")
  (version "0.9.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://gitlab.freedesktop.org/realmd/adcli")
             (commit version)))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1mwzd5vakdsssdvs6vljqpp8pw8i97n5lhxvmn9dn9720am7hfv7"))))
  (build-system gnu-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)
                   ("autoconf" ,autoconf)
                   ("libtool" ,libtool)
                   ("cyrus-sasl" ,cyrus-sasl)
                   ("xmlto" ,xmlto)
                   ("libxslt" ,libxslt)
                   ("docbook-xml" ,docbook-xml)
                   ("docbook-xsl" ,docbook-xsl)
                   ("automake" ,automake)))
  (inputs `(("openldap" ,openldap)
	    ("util-linux" ,util-linux) ; for rev
            ("krb5" ,mit-krb5)))
  (synopsis "Helper library and tools for Active Directory client operations")
  (description "Helper library and tools for Active Directory client operations.")
  (home-page "https://gitlab.freedesktop.org/realmd/adcli")
  (license license:lgpl2.1)))
