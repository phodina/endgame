(define-module (endgame packages vaccum)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages time)
  #:use-module (gnu packages sphinx)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-map-extractor
  (package
    (name "python-map-extractor")
    (version "2.1.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/PiotrMachowski/Home-Assistant-custom-components-Xiaomi-Cloud-Map-Extractor")
               (commit (string-append "v" version))))
        (sha256
          (base32
            "0ld3lhi3lxs3ax5fbz2xi5miqcgjg12h8yrdr6yz4v02vkisnnr9"))))
    (build-system python-build-system)
    (home-page
      "https://github.com/PiotrMachowski/Home-Assistant-custom-components-Xiaomi-Cloud-Map-Extractor")
    (synopsis
      "Xiaomi Cloud Map Extractor")
    (description
      "This custom integration provides a way to present a live view of a map for Xiaomi, Roborock, Viomi and Roidmi vacuums")
    (license license:expat)))

; https://github.com/home-assistant/core
; https://builder.dontvacuum.me/pkg/firmwares/roborock/
; https://github.com/dgiese/dustcloud

; https://github.com/dgiese/dustcloud/issues/258
; https://github.com/dgiese/dustcloud/issues/305
