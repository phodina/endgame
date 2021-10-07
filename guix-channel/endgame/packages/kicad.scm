(define-module (endgame packages kicad)
  #:use-module (guix packages)
  #:use-module (gnu packages check)
  #:use-module (gnu packages time)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages engineering)
  #:use-module (gnu packages inkscape)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

; https://github.com/joanbono/awesome-kicad

(define-public kicad-kikit
(package
  (name "kicad-kikit")
  (version "v0.7")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/yaqwsx/KiKit")
		(commit version)))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "1939v0r7rwn4b3za2ga9rhncgrfa0jl0w8gv3rrmpr2044k4410p"))))
  (build-system python-build-system)
  (inputs `(("kicad" ,kicad)))
  (synopsis "Automation tools for KiCAD")
  (description "KiKit is a Python library, KiCAD plugin and a CLI tool to automate several tasks in a standard KiCAD workflow like:
@enumerate
@item panelization of both, regular and oddly shaped
@item automated exporting manufacturing data based on manufacturer presets
@item multi-board project in KiCAD
@item building board presentation pages
@end enumerate")
  (home-page "https://github.com/yaqwsx/KiKit")
  (license license:expat)))

(define-public kicad-kicost
	       (let ((commit  "ad5023a46bac10382744628e2a0c4d9659d05ffa")
		     (revision "1"))
(package
  (name "kicad-kicost")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/hildogjr/KiCost")
		(commit version)))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "1vrk3na8msc9jyz4d8h6kzsj3vkrh8y4pgxq7y8ll564wjdfl8iz"))))
  (build-system python-build-system)
  (inputs `(("kicad" ,kicad)))
  (synopsis "Build cost spreadsheet for a KiCad project.")
  (description "KiCost is intended to be run as a script for generating part-cost spreadsheets for circuit boards developed with KiCad. KiCost also comes with a graphical user interface in addition to command line.
@enumerate
@item Processes the BOM XML file from your KiCad schematic
@item Processes also BOM files from Altium, Proteus, Eagle, Upverter
@item The spreadsheet contains quantity-adjusted pricing from each distributor
@item Enter the number of boards to be built in a spreadsheet cell
@item The spreadsheet also shows the current inventory on-hand
@end enumerate")
  (home-page "https://github.com/xesscorp/KiCost")
  (license license:expat))))

(define-public kicad-svg2shenzhen
(package
  (name "kicad-svg2shenzhen")
  (version "0.2.18.7")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/badgeek/svg2shenzhen")
		(commit version)))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "1czmqplyq271n94gqshr5qcsivikx36h10va8dkjxm3w04k39ig3"))))
  (build-system copy-build-system)
  (inputs `(("kicad" ,kicad) ("inkscape" ,inkscape) ("python" ,python)))
  (synopsis "Inkscape extension for exporting drawings into a KiCad PCB.")
  (description "Inkscape extension for exporting drawings into a KiCad PCB:
@enumerate
@item Draw Any kind of shapes without restriction
@item Supports Drill Pad, and custom drill size
@item Supports Edge Cut (PCB Shape)
@end enumerate")
  (home-page "https://github.com/badgeek/svg2shenzhen")
  (license license:expat)))

(define-public kicad-pcbdraw
(package
  (name "kicad-pcbdraw")
  (version "0.7.0")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/yaqwsx/PcbDraw")
		(commit (string-append "v" version))))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "1ilx7p024qcsyqj8cdfl7i92s6xql0afbjxgijqdzw3z0dqdj2kr"))))
  (build-system python-build-system)
  (inputs `(("kicad" ,kicad)))
  (synopsis "Convert your KiCAD board into a nicely looking 2D drawing suitable for pinout diagrams.")
  (description "This small Python script takes a KiCAD board (.kicad_pcb file) and produces a 2D nice looking drawing of the board as an SVG file. This allows you to quickly and automatically create awesome pinout diagrams for your project. These diagrams are much easier to read than a labeled photo of a physical board or an actual KiCAD design.")
  (home-page "https://github.com/yaqwsx/PcbDraw")
  (license license:expat)))

(define-public kicad-kibuzzard
	       (let ((commit "07dc27f92745250799a8b3c320d9589865bce302")
		     (revision "1"))
(package
  (name "kicad-kibuzzard")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/gregdavill/KiBuzzard")
		(commit version)))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "0j2205v31qa0s1qwy4ha0hd4n23bfblcnybx10fbncaprdxa7zqb"))))
  (build-system copy-build-system)
  (inputs `(("kicad" ,kicad) ("python" ,python)))
  (synopsis "This plugin lets you easily create labels in various fonts, and with inverted backgrounds.")
  (description "")
  (home-page "https://github.com/gregdavill/KiBuzzard")
  (license license:expat))))

(define-public kicad-laser-stencil-plugin
(package
  (name "kicad-laser-stencil-plugin")
  (version "1.2")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/ma-ha/kicad-laser-stencil-plugin")
		(commit (string-append "v" version))))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "1rg0vri7c2mp5fgii14qrlrj5gach910lm3iawbn8k8nr5vdb3cg"))))
  (build-system copy-build-system)
  (inputs `(("kicad" ,kicad) ("python" ,python)))
  (synopsis "KiCAD Pcbnew plugin to generat laser cutter GCode files for solder paste stencils")
  (description "")
  (home-page "https://github.com/ma-ha/kicad-laser-stencil-plugin")
  (license license:expat)))

(define-public kicad-interactive-html-bom
  (let ((commit "4df0dd3a326a6e7eb478ed2f3ffbcb8de23d3c39")
        (revision "1"))
(package
  (name "kicad-interactive-html-bom")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/openscopeproject/InteractiveHtmlBom")
		(commit version)))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "0jgfp0kfzj79c5qiv44svki4jd2n4yxj5590nvkjxddcq9hbbhyr"))))
  (build-system copy-build-system)
  (inputs `(("kicad" ,kicad) ("python" ,python)))
  (synopsis "Interactive HTML BOM generation plugin for KiCad")
  (description "")
  (home-page "https://openscopeproject.org/InteractiveHtmlBomDemo/")
  (license license:expat))))

(define-public python-pygubu
  (package
    (name "python-pygubu")
    (version "0.16")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "pygubu" version))
        (sha256
          (base32 "1cvpz63irajqr9alqj53ccvm34hd09xkgkfgng5d7baani09cgq1"))))
    (build-system python-build-system)
    (inputs `(("tk" ,tk)))
    (home-page "https://github.com/alejandroautalan/pygubu")
    (synopsis "A tkinter GUI builder.")
    (description "A tkinter GUI builder.")
    (license license:expat)))

(define-public kicad-diff
  (let ((commit "6a209ff807329d6a305c2da4851527c38777ca0d") 
        (revision "1"))
(package
  (name "kicad-diff")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/Gasman2014/KiCad-Diff")
		(commit version)))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "01blcqbh3jjdiwc1rchqmxysk3k5ns2lch1q7yyvr6b7wgjydc20"))))
  (build-system copy-build-system)
  (inputs `(("kicad" ,kicad)
	    ("python" ,python)
	    ("python-pygubu" ,python-pygubu)
	    ("python-dateutil" ,python-dateutil)
	    ("python-pytz" ,python-pytz)
	    ("python-pillow" ,python-pillow)
	    ("python-six" ,python-six)))
  (synopsis "Scripts for performing image diffs between pcbnew layout revisions")
  (description "")
  (home-page "https://github.com/Gasman2014/KiCad-Diff")
  (license license:expat))))

(define-public kicad-altium2kicad
  (let ((commit "f9eb66df30c2ac11ad64f007ffd20c376c3cb93b")
	(revision "1"))
(package
  (name "kicad-altium2kicad")
  (version "f9eb66df30c2ac11ad64f007ffd20c376c3cb93b")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/thesourcerer8/altium2kicad")
		(commit version)))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "1gxig9bgg5pvg3ggq0fdyyc2abdqk8v4z9bi12mkmij4gdji21xl"))))
  (build-system copy-build-system)
  (inputs `(("kicad" ,kicad) ("perl" ,perl)))
  (synopsis "Altium to KiCad converter for PCB and schematics")
  (description "")
  (home-page "https://www2.futureware.at/KiCad/")
  (license license:expat))))

(define-public kicad-color-schemes
(let ((commit "8244566e2733dd5ad098b033f884f04b1251b39f")
      (revision "1"))
(package
  (name "kicad-color-schemes")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/pointhi/kicad-color-schemes")
		(commit version)))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "0f30dpcl7kklzwpj0f3k6a09mx9y5z32085ppq0vk63vqj2dlq1d"))))
  (build-system copy-build-system)
  (inputs `(("kicad" ,kicad)))
  (synopsis "Want to change the color scheme of KiCad? Look here for Inspiration.")
  (description "")
  (home-page "https://www2.futureware.at/KiCad/")
  ; CC0 ??
  (license #f))))

(define-public kicad-footprint-generator
(package
  (name "kicad-footprint-generator")
  (version "v1.1.2")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://gitlab.com/kicad/libraries/kicad-footprint-generator")
		(commit version)))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "1q6x4607i83rj32s33l55hqh3plwz0m3kspv8bmas22k560ymv3h"))))
  (build-system python-build-system)
;  (arguments
;    `(#:phases
;      (modify-phases %standard-phases
;		     (add-before 'check 'chdir-tests
;				 (lambda _
;				   (invoke "KicadModTree"))))))
  (inputs `(("kicad" ,kicad)
	    ("python-future" ,python-future)
	    ("python-pytest" ,python-pytest)
	    ("python-pyyaml" ,python-pyyaml)))
  (synopsis "Framework, to allow simple creation of easy as well complex shapes.")
  (description "")
  (home-page "https://gitlab.com/kicad/libraries/kicad-footprint-generator")
  (license license:gpl3)))

(define-public python-pcbnewtransition
  (package
    (name "python-pcbnewtransition")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "pcbnewTransition" version))
        (sha256
          (base32 "0fan2j167ls008b4zphc85350nyx0i0wn3rc2jiv0q0gmran2l2z"))))
    (build-system python-build-system)
    (home-page "https://github.com/yaqwsx/pcbnewTransition")
    (synopsis
      "Library that allows you to support both, KiCAD 5 and KiCAD 6 in your plugins")
    (description
      "Library that allows you to support both, KiCAD 5 and KiCAD 6 in your plugins")
    (license #f)))

(define-public kicad-pinion
(package
  (name "kicad-pinion")
  (version "v0.2.0")
  (source (origin
            (method git-fetch)
            (uri
	      (git-reference
		(url "https://github.com/yaqwsx/Pinion")
		(commit version)))
	    (file-name (git-file-name name version))
            (sha256
             (base32
              "1mizbi53clxwkhqqdw3n7vxfvc4csbbhsdbmpgk5n4k1nykhlwrr"))))
  (build-system python-build-system)
  (propagated-inputs `(("kicad" ,kicad)
            ("python-pcbnewtransition" ,python-pcbnewtransition)
            ("python-versioneer" ,python-versioneer)))
  (synopsis "Nice-looking interactive diagrams for PCBs")
  (description "@code{pinion} is a simple tool that allows you to make a nice-looking pinout diagrams for your PCBs by creating static HTML & Javascript files")
  (home-page "https://yaqwsx.github.io/Pinion/")
  (license license:expat)))
