(define-module (endgame packages onedrived)
  #:use-module (guix packages)
  #:use-module (gnu packages time)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-crypto)
  #:use-module (guix git-download)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: inotify-simple is not present on pypi, download fails
(define-public onedrived
  (let ((commit "7189214d311a1f863c68c7fa808ce41d96dae958")
	(revision "1"))
  (package
    (name "onedrived")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/xybu/onedrived-dev")
	       (commit version)))
        (sha256
          (base32
            "1glqbs461jyr8bq471sdf8n4wfr344r73nb0as5rzfm8iqrx5ldn"))))
    (build-system python-build-system)
    (inputs `(("python-colorama" ,python-colorama)
              ("python-click" ,python-click)
              ("python-onedrivesdk" ,python-onedrivesdk)
              ("python-keyring" ,python-keyring)
              ("python-send2trash" ,python-send2trash)
              ("python-zgitignore" ,python-zgitignore)
              ("python-requests" ,python-requests)
              ("python-tabulate" ,python-tabulate)
              ("python-daemonocle" ,python-daemonocle)
              ("python-inotify-simple" ,python-inotify-simple)
              ("python-bidict" ,python-bidict)
              ("python-arrow" ,python-arrow)
              ("python-psutil" ,python-psutil)))
    (home-page "https://github.com/xybu/onedrived-dev")
    (synopsis "Microsoft OneDrive client")
    (description "This package provides onedrived is a client program
for Microsoft OneDrive.   It enables you to sync local directories with remote
OneDrive repositories (a.k.a., \"Drive\") of one or more OneDrive Personal
account (OneDrive for Business accounts are not yet supported).")
    (license license:expat))))

(define-public python-arrow
  (package
    (name "python-arrow")
    (version "1.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "arrow" version))
        (sha256
          (base32 "0x70a057dqki2z1ny491ixbg980hg4lihc7g1zmy69g4v6xjkz0n"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-dateutil" ,python-dateutil)
	("python-pytest" ,python-pytest)
	("python-simplejson" ,python-simplejson)
	("python-pytz" ,python-pytz)
        ("python-typing-extensions" ,python-typing-extensions)))
    (home-page "https://arrow.readthedocs.io")
    (synopsis "Better dates & times for Python")
    (description "Better dates & times for Python")
    (license license:asl2.0)))

(define-public python-flake8-isort
  (package
    (name "python-flake8-isort")
    (version "4.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "flake8-isort" version))
        (sha256
          (base32 "1ngl12ia178i5n1khqga77ndb8xi9s28a0f9qabb69hr9w7k149b"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-flake8" ,python-flake8)
        ("python-isort" ,python-isort)
        ("python-testfixtures" ,python-testfixtures)))
    (native-inputs
      `(("python-pytest" ,python-pytest) ("python-toml" ,python-toml)))
    (home-page "https://github.com/gforcada/flake8-isort")
    (synopsis "flake8 plugin that integrates isort .")
    (description "flake8 plugin that integrates isort .")
    (license #f)))

(define-public python-daemonocle
  (package
    (name "python-daemonocle")
    (version "1.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "daemonocle" version))
        (sha256
          (base32 "1sk6yv2c8p0g9b3dpapf2xgsn9xc21bx983rccwwm1bwqfmyc73l"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-click" ,python-click) ("python-psutil" ,python-psutil)))
    (native-inputs
      `(("python-coveralls" ,python-coveralls)
        ("python-flake8" ,python-flake8)
        ("python-flake8-bugbear" ,python-flake8-bugbear)
        ("python-flake8-isort" ,python-flake8-isort)
        ("python-pytest" ,python-pytest)
        ("python-pytest-cov" ,python-pytest-cov)))
    (home-page "http://github.com/jnrbsn/daemonocle")
    (synopsis "A Python library for creating super fancy Unix daemons")
    (description "A Python library for creating super fancy Unix daemons")
    (license license:expat)))

(define-public python-inotify-simple
  (package
    (name "python-inotify-simple")
    (version "1.3.5")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "inotify-simple" version))
        (sha256
          (base32 "0a61bh087cq5wfrvz680hg5pmykb9gmy26kwyn6ims2akkjgyh44"))))
    (build-system python-build-system)
    (home-page "https://github.com/chrisjbillington/inotify_simple")
    (synopsis
      "A simple wrapper around inotify. No fancy bells and whistles, just a literal wrapper with ctypes. Under 100 lines of code!")
    (description
      "A simple wrapper around inotify. No fancy bells and whistles, just a literal wrapper with ctypes. Under 100 lines of code!")
    (license license:bsd-3)))

(define-public python-zgitignore
  (package
    (name "python-zgitignore")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "zgitignore" version))
        (sha256
          (base32 "197hs8jpmm8aw703hcvnns8sgzy2ckpfy78s3wckab6c2i8hhk9f"))))
    (build-system python-build-system)
    (home-page "https://github.com/zb3/zgitignore")
    (synopsis
      "Check if a file is ignored by a .zgitignore file, compatible with .gitignore syntax")
    (description
      "Check if a file is ignored by a .zgitignore file, compatible with .gitignore syntax")
    (license license:expat)))

(define-public python-onedrivesdk
  (package
    (name "python-onedrivesdk")
    (version "1.1.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/OneDrive/onedrive-sdk-python")
	       (commit version)))
        (sha256
          (base32
            "082bvsl1i9h7ry66dr2gvnzd6fqss717ywdc9v0wm0dlgjdlbbyx"))))
    (build-system python-build-system)
;    (inputs `(("python-pytest" ,python-pytest)))
;              ("python-click" ,python-click)
;              ("python-onedrivesdk" ,python-ondrivesdk)
;              ("python-keyring" ,python-keyring)
;              ("python-send2trash" ,python-send2trash)
;              ("python-zgitignore" ,python-zgitignore)
;              ("python-requests" ,python-requests)
;              ("python-tabulate" ,python-tabulate)
;              ("python-daemonocle" ,python-daemonocle)
;              ("python-inotify_simple" ,python-inotify_simple)
;              ("python-bidict" ,python-bidict)
;              ("python-arrow" ,python-arrow)
;              ("python-psutil" ,python-psutil)))
    (home-page "https://developer.microsoft.com/en-us/onedrive")
    (synopsis "OneDrive SDK")
    (description "")
    (license license:expat)))
