(define-module (endgame packages perfetto)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages image)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public perfetto
(package
  (name "perfetto")
  (version "18.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/google/perfetto")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1983frm55v4mqmkn0bhjq14w3ld30h8xzdkclhzfmmz05izh8rwr"))))
  (build-system cmake-build-system)
  (synopsis "Performance instrumentation and tracing for Android, Linux and Chrome")
  (description "Perfetto is a production-grade open-source stack for performance instrumentation and trace analysis. It offers services and libraries and for recording system-level and app-level traces, native + java heap profiling, a library for analyzing traces using SQL and a web-based UI to visualize and explore multi-GB traces.")
  (home-page "https://perfetto.dev")
  (license license:apsl2)))

(define-public gfx-pps
(package
  (name "gfx-pps")
  (version "0.3.0")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://gitlab.freedesktop.org/Fahien/gfx-pps")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1kbjh89bnggayfgj4f548cp5i9qqynfz7lbj6r570xgj5zxz5nra"))))
  (build-system cmake-build-system)
  (inputs `(("perfetto" ,perfetto)))
  (synopsis "Collection of graphics-related Perfetto producers")
  (description "This project contains a collection of graphics-related Perfetto producers. A producer is a client process for the Perfetto tracing service. Currently available are the following producers:
@enumerate
@item Panfrost performance counters
@item Intel performance counters
@end enumerate")
  (home-page "https://fahien.pages.freedesktop.org/gfx-pps/")
  (license license:expat)))
