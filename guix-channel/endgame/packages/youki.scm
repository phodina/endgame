(define-module (endgame packages youki)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-sc-0.2
  (package
    (name "rust-sc")
    (version "0.2.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "15xm8bw2crr75pzdylhw59nybjn3i357ifaqbbi8fqf7js8ya75n"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/japaric/syscall.rs")
    (synopsis "Raw system calls")
    (description "Raw system calls")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-test-preview-0.3
  (package
    (name "rust-futures-test-preview")
    (version "0.3.0-alpha.19")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-test-preview" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ss5g56r72vv16r56q0l3lc01q9xkpadkk073wyqjgr17a1kv0gh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-futures-core-preview" ,rust-futures-core-preview-0.3)
         ("rust-futures-executor-preview" ,rust-futures-executor-preview-0.3)
         ("rust-futures-io-preview" ,rust-futures-io-preview-0.3)
         ("rust-futures-util-preview" ,rust-futures-util-preview-0.3)
         ("rust-pin-utils" ,rust-pin-utils-0.1))))
    (home-page "https://rust-lang-nursery.github.io/futures-rs")
    (synopsis
      "Common utilities for testing components built off futures-rs.
")
    (description
      "Common utilities for testing components built off futures-rs.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-ipc-channel-0.15
  (package
    (name "rust-ipc-channel")
    (version "0.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ipc-channel" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19xf36cbi0n1sq7s5ki9j3s5cwi7iay2j79g45i4cbdfc39k56xd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-bincode" ,rust-bincode-1)
         ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.4)
         ("rust-fnv" ,rust-fnv-1)
         ("rust-futures-preview" ,rust-futures-preview-0.3)
         ("rust-futures-test-preview" ,rust-futures-test-preview-0.3)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-mio" ,rust-mio-0.6)
         ("rust-rand" ,rust-rand-0.7)
         ("rust-sc" ,rust-sc-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-tempfile" ,rust-tempfile-3)
         ("rust-uuid" ,rust-uuid-0.8)
         ("rust-winapi" ,rust-winapi-0.3))
        #:cargo-development-inputs
        (("rust-crossbeam-utils" ,rust-crossbeam-utils-0.7))))
    (home-page "https://github.com/servo/ipc-channel")
    (synopsis "A multiprocess drop-in replacement for Rust channels")
    (description
      "This package provides a multiprocess drop-in replacement for Rust channels")
    (license (list license:expat license:asl2.0))))

(define-public rust-pentacle-1
  (package
    (name "rust-pentacle")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pentacle" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dp77q2ddwwryxjgv69hf3rqhb8r9r1wxjk8ra83i5wawgxy8vp2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-libc" ,rust-libc-0.2) ("rust-log" ,rust-log-0.4))))
    (home-page "https://github.com/iliana/pentacle")
    (synopsis "Executes programs as sealed anonymous files on Linux")
    (description "Executes programs as sealed anonymous files on Linux")
    (license license:expat)))

(define-public rust-seccomp-0.1
  (package
    (name "rust-seccomp")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "seccomp" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0nrixpxgz0b5nji924q5w0dcsmccd3x1nh9wxbd6ypnifi2dv8vc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-seccomp-sys" ,rust-seccomp-sys-0.1))))
    (home-page "https://github.com/polachok/seccomp")
    (synopsis "higher-level bindings to libseccomp")
    (description "higher-level bindings to libseccomp")
    (license license:lgpl2.1)))

(define-public rust-groups-0.1
  (package
    (name "rust-groups")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "groups" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1n2k41cxdz8ix2b17p1xwskcm11h49lw9v7wz6i769zb3bdviwi8"))))
    (build-system cargo-build-system)
    (home-page "https://gitlab.com/core-utils/groups")
    (synopsis "Crate for obtaining group information on a system")
    (description "Crate for obtaining group information on a system")
    (license license:gpl3)))

(define-public rust-serde-json-1
  (package
    (name "rust-serde-json")
    (version "1.0.68")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_json" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1n2jg9cf14lrxasj63rlrwxlw5v79m851gycw6zy20jnjx9hhs8g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-indexmap" ,rust-indexmap-1)
         ("rust-itoa" ,rust-itoa-0.4)
         ("rust-ryu" ,rust-ryu-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/serde-rs/json")
    (synopsis "A JSON serialization file format")
    (description "This package provides a JSON serialization file format")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-derive-1
  (package
    (name "rust-serde-derive")
    (version "1.0.130")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12shxhi47db54i4j44ic2nl299x5p89ngna0w3m6854nn4d1mg6p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://serde.rs")
    (synopsis "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (description
      "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-1
  (package
    (name "rust-serde")
    (version "1.0.130")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04y9s1mxcxakg9bhfdiff9w4zzprk6m6dazcpmpi8nfg6zg0cbgi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://serde.rs")
    (synopsis "A generic serialization/deserialization framework")
    (description
      "This package provides a generic serialization/deserialization framework")
    (license (list license:expat license:asl2.0))))

(define-public rust-oci-spec-0.5
  (package
    (name "rust-oci-spec")
    (version "0.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "oci-spec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ix0i39i781s9zjm6wqydb9wirp7c090llwwblay7sdqjyph8g5k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-derive-builder" ,rust-derive-builder-0.10)
         ("rust-getset" ,rust-getset-0.1)
         ("rust-quickcheck" ,rust-quickcheck-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-thiserror" ,rust-thiserror-1))
        #:cargo-development-inputs
        (("rust-serde-json" ,rust-serde-json-1)
         ("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/containers/oci-spec-rs")
    (synopsis "Open Container Initiative Specifictions in Rust")
    (description "Open Container Initiative Specifictions in Rust")
    (license license:asl2.0)))

(define-public rust-prctl-1
  (package
    (name "rust-prctl")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "prctl" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lkgnid3sjfbqf3sbcgyihlw80a6n9l6m0n23b7f5pm927qk96h5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-libc" ,rust-libc-0.2) ("rust-nix" ,rust-nix-0.22))))
    (home-page "https://github.com/viraptor/prctl-rs")
    (synopsis
      "This package provides safe abstraction to the linux prctl() interface. Some
functions may be architecture-specific.
")
    (description
      "This package provides safe abstraction to the linux prctl() interface.  Some
functions may be architecture-specific.
")
    (license license:expat)))

(define-public rust-caps-0.5
  (package
    (name "rust-caps")
    (version "0.5.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "caps" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0k75s2nqpkr25wa1siljmj2fx1dzzb6yy1gcd4kww16im88p5gv1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-errno" ,rust-errno-0.2)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-thiserror" ,rust-thiserror-1))
        #:cargo-development-inputs
        (("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://github.com/lucab/caps-rs")
    (synopsis "A pure-Rust library to work with Linux capabilities")
    (description
      "This package provides a pure-Rust library to work with Linux capabilities")
    (license (list license:expat license:asl2.0))))

(define-public rust-procinfo-0.4
  (package
    (name "rust-procinfo")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "procinfo" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "175l4cprsb56jrkycpz0743clgc8fyhxv4i8hhgqjd967mzl5cba"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-byteorder" ,rust-byteorder-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-nom" ,rust-nom-2)
         ("rust-rustc-version" ,rust-rustc-version-0.2))))
    (home-page "https://github.com/danburkert/procinfo-rs")
    (synopsis "A library for accessing Linux process and system information")
    (description
      "This package provides a library for accessing Linux process and system information")
    (license (list license:expat license:asl2.0))))

(define-public rust-procfs-0.10
  (package
    (name "rust-procfs")
    (version "0.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "procfs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0w2cijhmx7yjrv6fw69nqlxdp1gwpia1cdhc623y9vxfzv549qwm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-hex" ,rust-hex-0.4)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-libc" ,rust-libc-0.2))
        #:cargo-development-inputs
        (("rust-procinfo" ,rust-procinfo-0.4))))
    (home-page "https://github.com/eminence/procfs")
    (synopsis "Interface to the linux procfs pseudo-filesystem")
    (description "Interface to the linux procfs pseudo-filesystem")
    (license (list license:expat license:asl2.0))))

; TODO: In procedure open-file: Permission denied: ".cargo/config"
(define-public youki
  (let ((commit "9bb360a48db6094fad89144b522e31ed01384e72")
	(revision "1"))
  (package
    (name "youki")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/containers/youki")
               (commit version)))
        (file-name (string-append name "-" version))
        (sha256
          (base32
            "0q7ixmgr5mq3cdmb6p91vy967xjn04mr4n24wqlsaikiqiqhk03y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-nix" ,rust-nix-0.22)
         ("rust-procfs" ,rust-procfs-0.10)
         ("rust-caps" ,rust-caps-0.5)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-prctl" ,rust-prctl-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-anyhow" ,rust-anyhow-1)
         ("rust-mio" ,rust-mio-0.7)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-oci-spec" ,rust-oci-spec-0.5)
         ("rust-groups" ,rust-groups-0.1)
         ("rust-dbus" ,rust-dbus-0.9)
         ("rust-tabwriter" ,rust-tabwriter-1)
         ("rust-fastrand" , rust-fastrand-1)
         ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
         ("rust-seccomp" ,rust-seccomp-0.1)
         ("rust-pentacle" ,rust-pentacle-1))
        #:cargo-development-inputs
        (("rust-oci-spec" ,rust-oci-spec-0.5)
         ("rust-quickcheck" ,rust-quickcheck-1)
         ("rust-serial-test" ,rust-serial-test-0.5)
         ("rust-ipc-channel" ,rust-ipc-channel-0.15))))
    (home-page "https://github.com/containers/youki")
    (synopsis "Container runtime in Rust")
    (description "This package provides container runtime based on OCI specification in Rust. It's also drop in replacement for Docker.")
    (license license:expat))))
