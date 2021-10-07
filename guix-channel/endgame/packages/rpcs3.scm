(define-module (endgame packages rpcs3)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages cmake) ; >= 3.16.5
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))


(define-public rpcs3
  (let ((commit "63f16d7a469569b20568c2ec735672c67a32331b")
	(revision "1"))
(package
  (name "rpcs3")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/RPCS3/rpcs3")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1svfv9c54qwga7iic5mhp8pg54kcm1shzsr0xvxh3y97a3h2nkm5"))))
  (build-system cmake-build-system)
  (native-inputs `(("cmake" ,cmake)
		   ("pkg-config" ,pkg-config)))
  (synopsis "PS3 emulator/debugger")
  (description "The world's first free and open-source PlayStation 3
emulator/debugger, written in C++ for Windows and Linux.")
  (home-page "https://rpcs3.net/")
  (license license:gpl2))))

; TODO: Requires newer CMake
