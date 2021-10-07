(define-module (endgame packages please)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages linux)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-users-0.8
  (package
    (name "rust-users")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "users" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dss2l4x3zgjq26mwa97aa5xmsb5z2x3vhhhh3w3azan284pvvbz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/ogham/rust-users")
    (synopsis "Library for accessing Unix users and groups")
    (description "Library for accessing Unix users and groups")
    (license license:expat)))

(define-public rust-pam-sys-0.5
  (package
    (name "rust-pam-sys")
    (version "0.5.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pam-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0d14501d5vybjnzxfjf96321xa5wa36x1xvf02h02zq938qmhj6d"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/1wilkens/pam-sys.git")
    (synopsis
      "FFI wrappers for the Linux Pluggable Authentication Modules (PAM)")
    (description
      "FFI wrappers for the Linux Pluggable Authentication Modules (PAM)")
    (license (list license:expat license:asl2.0))))

(define-public rust-pam-0.7
  (package
    (name "rust-pam")
    (version "0.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pam" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "15rhp57pdb54lcx37vymcimimpd1ma90lhm10iq08710kjaxqazs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-pam-sys" ,rust-pam-sys-0.5)
         ("rust-users" ,rust-users-0.8))))
    (home-page "https://github.com/1wilkens/pam/")
    (synopsis "Safe Rust wrappers for PAM authentification")
    (description "Safe Rust wrappers for PAM authentification")
    (license (list license:expat license:asl2.0))))

(define-public rust-pleaser-0.4
  (package
    (name "rust-pleaser")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pleaser" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0na1bz79h38lb3q2nyg9k3hgyndggnrfirp4cfy3fr0dswlrg9wv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-getopts" ,rust-getopts-0.2)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-nix" ,rust-nix-0.22)
         ("rust-pam" ,rust-pam-0.7)
         ("rust-rand" ,rust-rand-0.7)
         ("rust-regex" ,rust-regex-1)
         ("rust-rpassword" ,rust-rpassword-5)
         ("rust-syslog" ,rust-syslog-4)
         ("rust-users" ,rust-users-0.10))))
    (inputs `(("linux-pam" ,linux-pam)))
    (home-page "https://www.usenix.org.uk/content/please.html")
    (synopsis "please, a polite regex-first sudo alternative")
    (description "please, a polite regex-first sudo alternative")
    (license license:gpl3+)))
