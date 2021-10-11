(define-module (endgame packages tcpflow)
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
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public tcpflow
(package
  (name "tcpflow")
  (version "1.6.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/simsong/tcpflow")
             (commit (string-append "tcpflow-" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0wdvir79jkwapq9dz9gf2w675m4vqjbghczqnkqcqbf441fjw2xs"))))
  (build-system cmake-build-system)
  (native-inputs `(("autoconf" ,autoconf)
                   ("automake" ,automake)))
  (inputs `(("python" ,python-2)
	    ("boost" ,boost)
	    ("zlib" ,zlib)
	    ("libpcap" ,libpcap)
	    ("libnl" ,libnl)
	    ("openssl" ,openssl)))
  (synopsis "TCP/IP packet demultiplexer")
  (description "@code{tcpflow} allows you to capture data transmitted as part
of TCP connections (flows), and store the data in a way that is convenient
for protocol analysis and debugging.  Each TCP flow is stored in its own file.")
  (home-page "https://github.com/simsong/tcpflow")
  (license license:gpl3)))
