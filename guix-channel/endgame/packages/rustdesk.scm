(define-module (endgame packages rustdesk)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Add all other crates
(define-public rustdesk
  (package
    (name "rustdesk")
    (version "1.1.8")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/rustdesk/rustdesk")
	       (commit version)))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0aszskbl9wi5qvpghnkc1ypjmk8jljllwjsbgs77j37mj8g0x0fx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
	(("rust-whoami" ,rust-whoami-0.8)
	 ("rust-serde" ,rust-serde-1)
	 ("rust-serde-derive" ,rust-serde-derive-1)
	 ("rust-serde-json" ,rust-serde-json-1)
	 ("rust-cfg-if" ,rust-cfg-if-1)
	 ("rust-layz-static" ,rust-lazy-static-1)
	 ("rust-sha2" ,rust-sha2-0.9)
	 ("rust-libc" ,rust-libc-0.2)
	 ("rust-async-trait" ,rust-async-trait-0.1)
	 ("rust-crc32fast" ,rust-crc32fast-1)
	 ("rust-clap" ,rust-clap-2)
	 ("rust-rpassword" ,rust-rpassword-5))))
;scrap = { path = "libs/scrap" }
;hbb_common = { path = "libs/hbb_common" }
;enigo = { path = "libs/enigo" }
;repng = "0.2"
;parity-tokio-ipc = { git = "https://github.com/open-trade/parity-tokio-ipc" }
;flexi_logger = "0.17"
;runas = "0.2"
;magnum-opus = { git = "https://github.com/open-trade/magnum-opus" }
;dasp = { version = "0.11", features = ["signal", "interpolate-linear", "interpolate"], optional = true }
;rubato = { version = "0.8", optional = true }
;samplerate = { version = "0.2", optional = true }
;crc32fast = "1.2"
;uuid = { version = "0.8", features = ["v4"] }
;libpulse-simple-binding = "2.16"
;libpulse-binding = "2.16"
;rust-pulsectl = { git = "https://github.com/open-trade/pulsectl" }
; dev
;cc = "1.0"
;hbb_common = { path = "libs/hbb_common" }
;hound = "3.4"
    (home-page "https://rustdesk.com/")
    (synopsis "Remote desktop")
    (description "")
    (license license:gpl3)))

