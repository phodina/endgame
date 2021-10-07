(define-module (endgame packages retroarch)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages base)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages python)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: requires coffeescript
; Unknown option CONFIG_SHELL=/gnu/store/pwcp239kjf7lnj5i4lkdzcfcxwcfyk72-bash-minimal-5.0.16/bin/bash
(define-public retroarch
(package
  (name "retroarch")
  (version "1.9.10")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/libretro/RetroArch")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "10qbs2mq3vswjgxad1az3x4l4sjd3s56lk5vbj4q5zkzrbb0i2n3"))))
  (build-system gnu-build-system)
;  (arguments
;    `(#:phases
;      (modify-phases %standard-phases
;       (delete 'configure))))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("python" ,python)
            ("python" ,python-2)
	    ("perl" ,perl)))
  (synopsis "Sophisticated frontend for the libretro API")
  (description "RetroArch is the reference frontend for the libretro API.
Popular examples of implementations for this API includes video game system
emulators and game engines as well as more generalized 3D programs.")
  (home-page "http://www.libretro.com/")
  (license license:gpl3+)))
