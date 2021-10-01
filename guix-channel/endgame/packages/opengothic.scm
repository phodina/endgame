(define-module (endgame packages opengothic)
  #:use-module (guix packages)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages game-development)
  #:use-module (gnu packages vulkan)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages linux)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module (guix licenses))

(define-public libsquish
(package
  (name "libsquish")
  (version "master")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/tito/libsquish")
		(commit version)))
            (sha256
             (base32
              "04ji9ar0909a5sgwwflxzwg0ckh7xrxghmj147ix93y1cw48krj0"))))
  (build-system cmake-build-system)
  (arguments
    '(#:tests? #f))
  (native-inputs
    `(("pkg-config" ,pkg-config)))
  (synopsis "Clone of libsquish that includes python bindings")
  (description "")
  (home-page "https://github.com/tito/libsquish")
  (license #f)))
