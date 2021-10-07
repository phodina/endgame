(define-module (endgame packages residualvm)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages python)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public residualvm
(package
  (name "residualvm")
  (version "0.3.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/residualvm/residualvm")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0vsrw3w0l7b4h3d482j5nj5r0li35bnijif74vpcwfg5vddl8jzg"))))
  (build-system gnu-build-system)
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("python" ,python)
	    ("perl" ,perl)))
  (synopsis "3D game engine reimplementation")
  (description "This package provides game engine reimplementation that allows
you to play 3D adventure games such as Grim Fandango, Escape from Monkey
Island, Myst III and The Longest Journey.")
  (home-page "https://www.residualvm.org/")
  (license license:gpl2+)))
