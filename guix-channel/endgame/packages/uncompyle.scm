(define-module (endgame packages uncompyle)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages check)
  #:use-module (gnu packages xdisorg)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-unpyc37
	       (let ((commit "cb764b432a4ce412a9758c3c7136e3c416aa3083")
		 (revision "1"))
  (package
    (name "python-unpyc37")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/andrew-tavera/unpyc37")
	       (commit version)))
        (sha256
          (base32
            "1y5jmwi9fby3cl2fqdxllc6yj3gqc6ilqk74abz4gb249jr6razf"))))
    (build-system python-build-system)
    ; no setup
;    (propagated-inputs
;      `(("python-click" ,python-click)
;	("python-pytest" ,python-pytest)
;        ("python-six" ,python-six)))
    (home-page "https://github.com/rocky/python-xdis/")
    (synopsis "Decompiler for Python 3.7")
    (description "Decompiler for Python 3.7")
    (license #f))))

(define-public python-xdis
  (package
    (name "python-xdis")
    (version "5.0.12")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "xdis" version))
        (sha256
          (base32
            "0pv6krk6lh00ga9yzzi3vx0z2vl667qzaiia1h3imjjfay4kv8zv"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-click" ,python-click)
	("python-pytest" ,python-pytest)
        ("python-six" ,python-six)))
    (home-page "https://github.com/rocky/python-xdis/")
    (synopsis "Python cross-version byte-code disassembler and marshal routines")
    (description "Python cross-version byte-code disassembler and marshal routines")
    (license #f)))

(define-public python-spark-parser
  (package
    (name "python-spark-parser")
    (version "1.8.9")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "spark-parser" version))
        (sha256
          (base32
            "0np2y4jcir4a4j18wws7yzkz2zj6nqhdhn41rpq8pyskg6wrgfx7"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-click" ,python-click)
	("python-nose" ,python-nose)))
    (home-page "https://github.com/rocky/python-spark/")
    (synopsis "An Earley-Algorithm Context-free grammar Parser Toolkit")
    (description "An Earley-Algorithm Context-free grammar Parser Toolkit")
    (license license:expat)))

(define-public python-uncompyle6
  (package
    (name "python-uncompyle6")
    (version "3.7.4")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "uncompyle6" version))
        (sha256
          (base32
            "1y21gn1pm6aizwawlwxz6qd1jig6p0lx21hgmsiyfh7r3f3310xg"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-spark-parser" ,python-spark-parser)
	("python-unpyc37" ,python-unpyc37)
        ("python-xdis" ,python-xdis)))
    (home-page "https://github.com/rocky/python-uncompyle6/")
    (synopsis "Python cross-version byte-code decompiler")
    (description "Python cross-version byte-code decompiler")
    (license #f)))
