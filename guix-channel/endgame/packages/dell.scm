(define-module (endgame packages dell)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (guix download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public go-github-com-kardianos-service
  (package
    (name "go-github-com-kardianos-service")
    (version "1.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/kardianos/service")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0k14wkixsixh9farvg97bqrcq5i8d7rb2l0k5iwdi5q0vz168i0p"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/kardianos/service"))
    (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://github.com/kardianos/service")
    (synopsis "service")
    (description
      "Package service provides a simple way to create a system service.
Currently supports Windows, Linux/(systemd | Upstart | SysV), and OSX/Launchd.
")
    (license license:zlib)))

(define-public go-github-com-galexrt-dellhw-exporter
  (package
    (name "go-github-com-galexrt-dellhw-exporter")
    (version "1.11.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/galexrt/dellhw_exporter")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0i2w8vqnms1ijjz7m6ds75qjclpsbsw2dxbjkj11yqask5vrb4sd"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/galexrt/dellhw_exporter"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
        ("go-github-com-prometheus-common" ,go-github-com-prometheus-common)
        ("go-github-com-prometheus-client-golang"
         ,go-github-com-prometheus-client-golang)
        ("go-github-com-kardianos-service" ,go-github-com-kardianos-service)))
    (home-page "https://github.com/galexrt/dellhw_exporter")
    (synopsis "dellhw_exporter")
    (description
      "Prometheus exporter for Dell Hardware components using OMSA.")
    (license license:asl2.0)))
