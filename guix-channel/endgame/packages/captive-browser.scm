(define-module (endgame packages captive-browser)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: Inherit chromium and crate a new browser
(define-public go-github-com-filosottile-captive-browser
  (package
    (name "go-github-com-filosottile-captive-browser")
    (version "0.0.0-20210801210507-9c707dc32afc")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/FiloSottile/captive-browser")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1xhz009f01a55fm5p191h1gqfasmbhwrgbrcawzl64v9kfilz6gb"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/FiloSottile/captive-browser"))
    (home-page "https://github.com/FiloSottile/captive-browser")
    (synopsis "Dedicated Chrome browser without messing DNS settings")
    (description
      "This package provides a more secure, dedicated, Chrome-based captive portal browser that automatically bypasses custom DNS servers.")
    (license license:expat)))
