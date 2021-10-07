(define-module (endgame packages fuzzing)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages graphviz)
  #:use-module (gnu packages check)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages python-build)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-ipaddress
  (package
    (name "python-ipaddress")
    (version "1.0.23")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "ipaddress" version))
        (sha256
          (base32 "1qp743h30s04m3cg3yk3fycad930jv17q7dsslj4mfw0jlvf1y5p"))))
    (build-system python-build-system)
    (home-page "https://github.com/phihag/ipaddress")
    (synopsis "IPv4/IPv6 manipulation library")
    (description "IPv4/IPv6 manipulation library")
    (license #f)))

; TODO: requires tox
(define-public python-pytest-bdd
  (package
    (name "python-pytest-bdd")
    (version "4.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "pytest-bdd" version))
        (sha256
          (base32 "0pgssf2g7q6s7d7akvwl6ppi8si3yk8k30zhqb83if13k6qd4k1h"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-glob2" ,python-glob2)
        ("python-mako" ,python-mako)
        ("python-parse" ,python-parse)
        ("python-parse-type" ,python-parse-type)
        ("python-py" ,python-py)
        ("python-pytest" ,python-pytest)))
    (home-page "https://github.com/pytest-dev/pytest-bdd")
    (synopsis "BDD for pytest")
    (description "BDD for pytest")
    (license license:expat)))

(define-public python-boofuzz
  (package
    (name "python-boofuzz")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "boofuzz" version))
        (sha256
          (base32 "1hw5g1204zxsz78g0krpwxjf864rb9wva8ycka2raa2nsy652ifn"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-attrs" ,python-attrs)
        ("python-click" ,python-click)
        ("python-colorama" ,python-colorama)
        ("python-flask" ,python-flask)
        ("python-funcy" ,python-funcy)
        ("python-future" ,python-future)
        ("python-psutil" ,python-psutil)
        ("python-pydot" ,python-pydot)
        ("python-pyserial" ,python-pyserial)
        ("python-six" ,python-six)
        ("python-tornado" ,python-tornado)))
    (native-inputs
      `(("python-black" ,python-black)
        ("python-check-manifest" ,python-check-manifest)
        ("python-flake8" ,python-flake8)
        ("python-ipaddress" ,python-ipaddress)
        ("python-mock" ,python-mock)
        ("python-netifaces" ,python-netifaces)
        ("python-pygments" ,python-pygments)
        ("python-pytest" ,python-pytest)
        ("python-pytest-bdd" ,python-pytest-bdd)
        ("python-pytest-cov" ,python-pytest-cov)
        ("python-sphinx" ,python-sphinx)
        ("python-sphinx-rtd-theme" ,python-sphinx-rtd-theme)
        ("python-tox" ,python-tox)
        ("python-wheel" ,python-wheel)))
    (home-page "https://github.com/jtpereyda/boofuzz")
    (synopsis "A fork and successor of the Sulley Fuzzing Framework")
    (description "A fork and successor of the Sulley Fuzzing Framework")
    (license #f)))
