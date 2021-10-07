(define-module (endgame packages moonlight)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages networking)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system qt)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public moonlight
(package
  (name "moonlight")
  (version "3.1.4")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/moonlight-stream/moonlight-qt")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "02y2rbiiawhj1dvgxdaz8k9kpz6zkv20zsk17fbqj8259m3g5xr5"))))
  ; TODO: Build using .pro file
  (build-system qt-build-system)
  (arguments
    `(#:tests? #f))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("qtbase" ,qtbase-5)))
  (synopsis "GameStream client for PCs")
  (description "Moonlight PC is an open source implementation of NVIDIA's GameStream, as used by the NVIDIA Shield.")
  (home-page "https://moonlight-stream.org")
  (license license:gpl3)))

(define-public moonlight-common
  (let ((commit "8c55c086d596607041e4394fb62a1bc800b7f37c")
        (revision "1"))
(package
  (name "moonlight-common")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/moonlight-stream/moonlight-common-c")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0pqm0a2p2sqvazv5gak6gl7d405kaaq6r13l7yhycm0myayqavrp"))))
  (build-system cmake-build-system)
  (arguments
    `(#:tests? #f
      #:phases
      (modify-phases %standard-phases
        (add-after 'unpack 'use-enet-pkg
          (lambda _
            (substitute* "CMakeLists.txt"
              (("add_subdirectory\\(enet\\)") "")))))))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("qtbase" ,qtbase-5)
            ("openssl" ,openssl)
            ("enet" ,enet)))
  (synopsis "Core implementation of Nvidia's GameStream protocol")
  (description "This package provides the code GameStream code shared between @code{Moonlight} clients.")
  (home-page "https://github.com/moonlight-stream/moonlight-common-c")
  (license license:gpl3))))
