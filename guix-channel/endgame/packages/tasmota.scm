(define-module (endgame packages tasmota)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages python)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public tasmota
(package
  (name "tasmota")
  (version "9.5.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/arendst/Tasmota")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1y5v0jmp718sbvx3c2mkqdazza045bm9b18r3p2nw4vfddhwv8rx"))))
  (build-system cmake-build-system)
  (arguments
    `(#:tests? #f))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("python" ,python-2)
	    ("python" ,python)))
  (synopsis "Alternative firmware for ESP8266")
  (description "Alternative firmware for ESP8266 and ESP32 based devices with
easy configuration using webUI, OTA updates, automation using timers or rules,
expandability and entirely local control over MQTT, HTTP, Serial or KNX.
Written for PlatformIO with limited support for Arduino IDE.")
  (home-page "https://tasmota.github.io/docs/")
  (license license:gpl3+)))
