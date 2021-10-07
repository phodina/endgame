(define-module (endgame packages etlegacy)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages image)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

; https://discourse.nixos.org/t/realrtcw-hd-mod-for-return-to-castle-wolfenstein-game-is-available-for-nixos/9869
(define-public etlegacy
(package
  (name "etlegacy")
  (version "2.77.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/etlegacy/etlegacy")
	     (recursive? #t)
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1mjjawkzmyzkwxah753vmdcwmrcl660fvg6640br6ibdv6v8jch8"))))
  (build-system cmake-build-system)
;  (arguments
;    '(#:tests? #f
;      #:phases
;      (modify-phases %standard-phases
;       (add-after 'unpack 'chdir
;        (lambda* _
;         (chdir "mjpg-streamer-experimental"))))))
;  (inputs `(("libjpeg-turbo" ,libjpeg-turbo)))
  (synopsis "Second breath of life for Wolfenstein: Enemy Territory")
  (description "ET: Legacy is an open source project based on the code of Wolfenstein: Enemy Territory which was released in 2010 under the terms of the GPLv3.")
  (home-page "https://www.etlegacy.com")
  (license license:gpl3)))
