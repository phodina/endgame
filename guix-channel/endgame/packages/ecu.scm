(define-module (endgame packages ecu)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages web)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages autogen)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages gcc)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public libre-tuner
(package
  (name "libre-tuner")
  (version "0.1.4")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/LibreTuner/LibreTuner")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1aiyb7fy91kzks2bbkfzc12mdrgz9lvyxz8zb08adx1gq9g5s8mm"))))
  (build-system cmake-build-system)
  (arguments
    `(#:configure-flags (list "-DHAVE_STROPTS_H=0")
      #:phases
      (modify-phases %standard-phases
	(add-after 'unpack 'remove-conan
	 (lambda* (#:key outputs #:allow-other-keys)
	   (substitute* "CMakeLists.txt"
			((".*conanbuildinfo.cmake.*") "")
			(("conan_basic_setup\\(\\)") "")))))))
  (native-inputs `(("gcc" ,gcc-9)))
  (inputs `(("qtbase" ,qtbase-5)
	    ("qtdatavis3d" ,qtdatavis3d)
	    ("qtcharts" ,qtcharts)))
  (synopsis "Engine tuning software for Mazda platforms")
  (description "This package provides an open source engine for tuning sECU software for Mazda platforms.")
  (home-page "https://github.com/LibreTuner/LibreTuner")
  (license license:gpl3+)))

(define-public sol
(package
  (name "sol")
  (version "3.2.2")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/ThePhD/sol2")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1sq6q64inbp2sh7lxgaj9z4k5ygavc1aii3vhxxlyka98h8masr9"))))
  (build-system cmake-build-system)
  ; tests in dir tests, not linked to CMakeLists
  (arguments
    `(#:tests? #f))
  (synopsis " C++ <-> Lua API wrapper")
  (description "This package provides a C++ binding library to Lua.")
  (home-page "https://github.com/ThePhD/sol2")
  (license license:expat)))

(define-public qhexview
	       (let ((commit "143f7d98be781c1404bf0b620eb1107c5971616c")
		     (revision "1"))
(package
  (name "qhexview")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/Dax89/QHexView")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "13s5hv15wqbh4x4rs35gj4gdzazk8gl2k2awzb2zbrb6kncqjiry"))))
  (build-system cmake-build-system)
  (arguments
    `(#:tests? #f)) ;no tests provided
  ; TODO: Add install phase
  (inputs `(("qtbase" ,qtbase-5)))
  (synopsis "Versatile Hexadecimal widget for Qt5")
  (description "This package provides a QHexView widget to display addr, hex and chars in a table view.")
  (home-page "https://github.com/Dax89/QHexView")
  (license license:expat))))

(define-public ecutools
	       (let ((commit "abe63f4460e264e8ad1370a62a9af713f509a6e5")
		     (revision "1"))
(package
  (name "ecutools")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/jeremyhahn/ecutools")
             (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0badwj3nyb1kqh042cvdd7hx71vclif172n6jpcf4x61lh1x8als"))))
  (build-system gnu-build-system)
  ; TODO: remove curl by patch
  (native-inputs `(("autoconf" ,autoconf)
		   ("autogen" ,autogen)
		   ("libtool" ,libtool)
		   ("pkg-config" ,pkg-config)
		   ("automake" ,automake)))
  (inputs `(("openssl" ,openssl)
	    ("jansson" ,jansson)))
  (synopsis "IoT Automotive Tuning, Diagnostics & Analytics")
  (description "This package provides a QHexView widget to display addr, hex and chars in a table view.")
  (home-page "https://github.com/Dax89/QHexView")
  (license license:expat))))
