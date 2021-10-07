(define-module (endgame packages rsign)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Needs libsodium
(define-public rust-unwrap-1
  (package
    (name "rust-unwrap")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unwrap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0wm4zzm684d5d1lnjvvzzwazlzq7zs7j76x36842zb398bsn34wr"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/canndrew/unwrap")
    (synopsis "An unwrap! and an unwrap_err! macro")
    (description "An unwrap! and an unwrap_err! macro")
    (license license:gpl3)))

(define-public rust-sodiumoxide-0.0.15
  (package
    (name "rust-sodiumoxide")
    (version "0.0.15")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sodiumoxide" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0v2rsgzbq9za5ll92nra65mcfwy7gnlrwz0l6phmz8bb5cv1g4vn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-libsodium-sys" ,rust-libsodium-sys-0.0.15)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/sodiumoxide/sodiumoxide")
    (synopsis "Fast cryptographic library for Rust (bindings to libsodium)")
    (description "Fast cryptographic library for Rust (bindings to libsodium)")
    (license (list license:expat license:asl2.0))))

(define-public rust-rprompt-1
  (package
    (name "rust-rprompt")
    (version "1.0.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rprompt" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1y1haas18ahyhdvya84l10fqazv40zd5yzw5jvyaxqnsidsg91mk"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/conradkleinespel/rprompt")
    (synopsis "Prompt user input in console applications.")
    (description "Prompt user input in console applications.")
    (license license:asl2.0)))

(define-public rust-rpassword-1
  (package
    (name "rust-rpassword")
    (version "1.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rpassword" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "191499vvd8lgarw6q6pjc477jj3sy6v47hbidnnh7jj2s8dwjwxj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-kernel32-sys" ,rust-kernel32-sys-0.2)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-rprompt" ,rust-rprompt-1)
         ("rust-winapi" ,rust-winapi-0.2))))
    (home-page "https://github.com/conradkleinespel/rpassword")
    (synopsis "Read passwords in console applications.")
    (description "Read passwords in console applications.")
    (license license:asl2.0)))

(define-public rust-libsodium-sys-0.0.15
  (package
    (name "rust-libsodium-sys")
    (version "0.0.15")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libsodium-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1y0dahsh1xl1c02a5rzs44i1k3r1wf9rcs71fa10cwhv1yyxdrj5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/sodiumoxide/sodiumoxide.git")
    (synopsis "FFI binding to libsodium")
    (description "FFI binding to libsodium")
    (license (list license:expat license:asl2.0))))

(define-public rust-rsign-0.1
  (package
    (name "rust-rsign")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rsign" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14li9san9x7hgvfy1brwkj3smrq55qp078q62xh95mn8g930k49y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-base64" ,rust-base64-0.6)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-clap" ,rust-clap-2)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-libsodium-sys" ,rust-libsodium-sys-0.0.15)
         ("rust-rpassword" ,rust-rpassword-1)
         ("rust-sodiumoxide" ,rust-sodiumoxide-0.0.15))
        #:cargo-development-inputs
        (("rust-unwrap" ,rust-unwrap-1))))
    (home-page "https://bitbucket.org/danielrangel/rsign")
    (synopsis "A command-line tool to sign files and verify signatures.")
    (description
      "This package provides a command-line tool to sign files and verify signatures.")
    (license license:expat)))
