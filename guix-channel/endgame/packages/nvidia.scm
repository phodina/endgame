(define-module (endgame packages nvidia)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public go-github-com-nvidia-go-nvml
  (package
    (name "go-github-com-nvidia-go-nvml")
    (version "0.11.1-0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/NVIDIA/go-nvml")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "179z1mk9c8kjdxgq8jv6zighqakd0rvf4nqxprsn3b3gc482q36i"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/NVIDIA/go-nvml"))
    (home-page "https://github.com/NVIDIA/go-nvml")
    (synopsis "Go Bindings for the NVIDIA Management Library (NVML)")
    (description "This repository provides Go bindings for the .")
    (license license:asl2.0)))
