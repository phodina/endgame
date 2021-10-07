(define-module (endgame packages android)
  #:use-module (guix packages)
  #:use-module (gnu packages video)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages java)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system meson)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system ant)
  #:use-module (guix build-system python)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:))

; Android APPS
; https://play.google.com/store/apps/details?id=at.huber.raspicast&hl=en
; https://github.com/farmerbb/SecondScreen
; https://github.com/ASHS-School/mirrorcast


; Exception in thread "main" java.lang.RuntimeException: Could not create parent directory for lock file /.gradle/wrapper/dists/gradle-6.3-bin/8tpu6egwsccjzp10c1jckl0rx/gradle-6.3-bin.zip.lck
(define-public scrcpy-client
  (package
    (name "scrcpy-client")
    (version "1.19")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Genymobile/scrcpy")
               (commit (string-append "v" version))))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0s19ab524kfx4wjy25brhkx2wpcjfgfy253d8rmry7kdnm6ha7i1"))))
    (build-system meson-build-system)
    (arguments
      `(#:configure-flags (cons* (string-append "-Dprebuilt_server=" (assoc-ref %build-inputs "scrcpy-server") "scrcpy-server-v" version))
	#:phases
         (modify-phases %standard-phases
           (add-before 'build 'setup-java
            (lambda* (#:key inputs #:allow-other-keys)
              (setenv "JAVA_HOME" (assoc-ref inputs "openjdk")))))))
    (native-inputs `(("pkg-config" ,pkg-config)))
    (inputs `(("ffmpeg" ,ffmpeg)
	      ("scrcpy-server" ,scrcpy-server)
              ("openjdk" ,openjdk14)
              ("sdl2" ,sdl2)))
    (home-page "https://github.com/Genymobile/scrcpy")
    (synopsis "Display and control your Android device")
    (description "This application provides display and control of Android
devices connected on USB (or over TCP/IP).  It does not require any root
access.")
    (license license:asl2.0)))

; TODO: Depends on gradle buildsystem - for now just download it for Android
(define-public scrcpy-server
  (package
    (name "scrcpy-server")
    (version "1.19")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "https://github.com/Genymobile/scrcpy/releases/download/v1.19/scrcpy-server-v" version))
        ;(file-name (string-append name "v-" version))
        (sha256
          (base32
            "0rxqxk8xj0b6mc5cisza2wxfymaq4bs384yvb1maqsif30i96vw7"))))
    (build-system copy-build-system)
    (arguments
      `(;#:install-plan
	;'((,(string-append "scrcpy-server-v" version) ,(string-append "scrcpy-server-v" version)))
        #:phases
	(modify-phases %standard-phases
		       (delete 'unpack))))
    (home-page "https://github.com/Genymobile/scrcpy")
    (synopsis "Display and control your Android device")
    (description "This application provides display and control of Android
devices connected on USB (or over TCP/IP).  It does not require any root
access.")
    (license license:asl2.0)))

; Needs gradle build
(define-public sndcpy
  (package
    (name "sndcpy")
    (version "1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://github.com/rom1v/sndcpy")
	       (commit (string-append "v" version))))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0r9qb1ncqx3qb4cicj0jzkmj7bnrqwg8nfkllhs8ijczgbjlnja5"))))
    (build-system ant-build-system)
    (arguments
      `(#:phases
	 (modify-phases %standard-phases
			(add-before 'build 'setup-java
				    (lambda* (#:key inputs #:allow-other-keys)
				    (setenv "JAVA_HOME" (assoc-ref inputs "jdk")))))))
    (native-inputs `(("pkg-config" ,pkg-config)))
    (inputs `(("ffmpeg" ,ffmpeg)
              ("jdk" ,icedtea "jdk")
	      ("sdl2" ,sdl2)))
    (home-page "https://github.com/rom1v/sndcpy")
    (synopsis "Android audio forwarding")
    (description "This tool forwards audio from an Android 10 device to the computer. It does not require any root access.")
    (license license:expat)))

; No setup.py
;ltgraph==0.17
;astroid==2.4.2
;autopep8==1.5.4
;bottle==0.12.19
;bottle-websocket==0.2.9
;cffi==1.14.4
;colorama==0.4.4
;Eel==0.14.0
;future==0.18.2
;gevent==20.9.0
;gevent-websocket==0.10.1
;greenlet==0.4.17
;isort==5.6.4
;lazy-object-proxy==1.4.3
;mccabe==0.6.1
;pefile==2019.4.18
;pure-python-adb==0.3.0.dev0
;pycodestyle==2.6.0
;pycparser==2.20
;pyinstaller==4.1
;pyinstaller-hooks-contrib==2020.10
;pylint==2.6.0
;pyparsing==2.4.7
;pywin32==300
;pywin32-ctypes==0.2.0
;six==1.15.0
;toml==0.10.2
;typed-ast==1.4.1
;whichcraft==0.6.1
;wrapt==1.12.1
;zope.event==4.5.0
;zope.interface==5.2.0

(define-public auto-cpy
  (package
    (name "auto-cpy")
    (version "0.22")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://github.com/fazalfarhan01/Auto-CPY")
	       (commit (string-append "v" version))))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0g0911mqlmnb5i3cz4x10vgcry52ld4brbgc0xm7azcn8v3y5g8m"))))
    (build-system python-build-system)
    (home-page "https://github.com/fazalfarhan01/Auto-CPY")
    (synopsis "")
    (description "A GUI Client for scrcpy and gnirehtet with auto launch on connect features")
    (license license:expat)))

(define-public gnirehtet
  (package
    (name "gnirehtet")
    (version "2.5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://github.com/Genymobile/gnirehtet")
	       (commit (string-append "v" version))))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0wk6n082gnj9xk46n542h1012h8gyhldca23bs7vl73g0534g878"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
	(("rust-mio" ,rust-mio-0.6)
	  ("rust-slab" ,rust-slab-0.4)
	  ("rust-log" ,rust-log-0.4)
	  ("rust-chrono" ,rust-chrono-0.4)
	  ("rust-byteorder" ,rust-byteorder-1)
	  ("rust-rand" ,rust-rand-0.7)
	  ("rust-ctrlc" ,rust-ctrlc-3))
	#:phases
	 (modify-phases %standard-phases
         (add-after 'unpack 'fix-cargo-toml
           (lambda _
             (substitute* "relay-rust/Cargo.toml"
               (("1.3") "1.4.2")) #t))
			(add-before 'build 'set-rust-dir
				    (lambda _
				    (chdir "relay-rust") #t)))))
    (home-page "https://github.com/Genymobile/gnirehtet")
    (synopsis "Reverse tethering for Android")
    (description "This package provides reverse tethering over adb for Android: it allows devices to use the internet connection of the computer they are plugged on. It does not require any root access")
    (license license:expat)))

(define-public rpiplay
  (let ((commit "c304f9f134fcfd856290885f43dffa8f6198a5f0")
	(revision "1"))
  (package
    (name "rpiplay")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://github.com/FD-/RPiPlay")
	       (commit version)))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "18cxkmlqnkwqnvq8hi177zp5l055k6df10a2jhpnzxim2jg310nv"))))
    (build-system cmake-build-system)
    (inputs `(("openssl" ,openssl)
	      ("libplist" ,libplist)))
    (home-page "https://github.com/FD-/RPiPlay")
    (synopsis " AirPlay mirroring server for the Raspberry Pi")
    (description "This package provides AirPlay mirroring server for the Raspberry Pi. Supports iOS 9 and up.")
    (license license:gpl3))))
