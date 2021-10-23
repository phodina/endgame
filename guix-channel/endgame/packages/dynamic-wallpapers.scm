(define-module (endgame packages dynamic-wallpapers)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; https://github.com/boi4/dynwalls
; http://dynwalls.com/


; Add submodules as inputs
(define-public dynamic-wallpapers
(package
  (name "dynamic-wallpapers")
  (version "0.2.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
              (url "https://github.com/dominiklohmann/25th-hour")
              (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1sfg4mvcs7dqnv9i24bq6zgrm96jqi0jc6dic8bzgrsfp5dhqzxz"))))
  (build-system gnu-build-system)
  (arguments
   `(#:phases
     (modify-phases %standard-phases
       (delete 'configure))))
  (synopsis "Dynamic desktop wallpaper")
  (description "This package provides a dynamic desktop wallpaper.")
  (home-page "https://github.com/dominiklohmann/25th-hour")
  (license license:expat)))

; https://cdn.dynamicwallpaper.club/wallpapers%2F46w77zjddwp%2FHogwarts%20&%20Creatures_fixed.heic?alt=media
