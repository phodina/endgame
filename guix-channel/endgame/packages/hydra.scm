(define-module (endgame packages hydra)
  #:use-module (guix packages)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages libidn)
  #:use-module (gnu packages pcre)
  #:use-module (gnu packages gnupg)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages ssh)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages samba)
  #:use-module (gnu packages rdesktop)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public hydra
(package
  (name "hydra")
  (version "9.2")
  (source (origin
            (method git-fetch)
            (uri (git-reference
              (url "https://github.com/vanhauser-thc/thc-hydra")
              (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "17xbr1lj4a38acr3qw4nzfiwzwjyg47z5ag2dclnsnn9yvjypnjp"))))
  (build-system gnu-build-system)
  (arguments
    '(#:tests? #f
     ; #:configure-flags (list (string-append "PREFIX="(assoc-ref %outputs "out")))
      #:phases
        (modify-phases %standard-phases
         (add-after 'unpack 'fix-libs-incs-locations
           (lambda* _
             (substitute* "configure"
		((".*/mingw64/bin") "LIBDIRS=\"$(pkg-config)")
		((".*/mingw64/include") "INCDIRS=\"$(pkg-config --libs)")))))))
  (native-inputs `(("autoconf" ,autoconf)
                   ("automake" ,automake)
		   ("pkg-config" ,pkg-config)))
  (inputs `(("zlib" ,zlib)
	    ("openssl" ,openssl)
		("libgcrypt" ,libgcrypt)
	    ("libidn" ,libidn)
	    ("mysql" ,mysql)
	    ("gtk+" ,gtk+)
	    ("samba" ,samba)
	    ("memcached" ,memcached)
	    ("freerdp" ,freerdp)
	    ("libssh" ,libssh)
	    ("ncurses" ,ncurses)
	    ("pcre" ,pcre)
		("zlib" ,zlib)))
  (synopsis "Parallelized login cracker")
  (description "")
  (home-page "https://github.com/vanhauser-thc/thc-hydra")
  (license license:gpl3+)))
