(define-module (endgame packages ocserv)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages autotools)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Add dependencies
(define-public ocserv
(package
  (name "ocserv")
  (version "1.1.3")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://gitlab.com/openconnect/ocserv")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1dacbsbkhcag4932lya96m5ny2kswp3dbkzypfx5ylmmgr1b5j1p"))))
  (build-system gnu-build-system)
  (native-inputs `(("autoconf" ,autoconf)
                   ("automake" ,automake)))
  (inputs `(("python" ,python-2)
	    ("boost" ,boost)
	    ("zlib" ,zlib)
	    ("libpcap" ,libpcap)
	    ("libnl" ,libnl)
	    ("openssl" ,openssl)))
  (synopsis "Engine for secure and scalable VPN infrastructure")
  (description "This packge provides Openconnect SSL VPN server (ocserv)
designed for organizations that require a remote access VPN with enterprise
user management and control.  It follows the openconnect protocol and is
the counterpart of the openconnect VPN client.  It is also compatible with
CISCO's AnyConnect SSL VPN.")
  (home-page "https://gitlab.com/openconnect/ocserv")
  (license license:gpl2+)))
