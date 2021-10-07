(define-module (endgame packages grafana)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public grafana
  (package
    (name "grafana")
    (version "8.1.7")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/grafana/grafana")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "1n4kaf6ymjywnhjp6w0mdk6s052inxynvxdwrv4521a85w23bvrm"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/grafana/grafana"))
;    (propagated-inputs
;      `(("go-github-com-stretchr-testify"
;         ,go-github-com-stretchr-testify)
;        ("go-github-com-pkg-errors"
;         ,go-github-com-pkg-errors)))
    (home-page
      "https://grafana.com/")
    (synopsis "Data visualization platform")
    (description
      "This package provides open and composable observability and data visualization platform. Visualize metrics, logs, and traces from multiple sources like Prometheus, Loki, Elasticsearch, InfluxDB, Postgres and many more.
")
    (license license:agpl3)))
