(define-module (endgame packages rpicast)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages check)
  #:use-module (gnu packages video)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rpicast
  (let ((commit "a21a8262c9c221a3b17d665f670cb5f8cac9c0bb")
	(revision "1"))
(package
  (name "rpicast")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/anshulrouthu/RPiCast")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "073s622ll4ankijrqziw4f4zmkmzrw092aydr2h2ch6gbvsps97g"))))
  (build-system gnu-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
       (delete 'configure))))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("ffmpeg" ,ffmpeg)
	   ("unittest-cpp" ,unittest-cpp)))
  (synopsis "Screen casting solution using RaspberryPi")
  (description "Screen casting application using RaspberryPi.  Cast your entire
desktop to TV while watching a movie or browsing, or for presentation")
  (home-page "https://github.com/anshulrouthu/RPiCast")
  (license license:gpl3))))

;No package 'libavdevice' found
;No package 'libavformat' found
;No package 'libavfilter' found
;No package 'libavcodec' found
;No package 'libswresample' found
;No package 'libswscale' found
;No package 'libavutil' found
