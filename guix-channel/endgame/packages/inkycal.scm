(define-module (endgame packages inkycal)
  #:use-module (guix packages)
  #:use-module (gnu packages time)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages web)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-recurring-ical-events
  (package
    (name "python-recurring-ical-events")
    (version "0.2.0b0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "recurring_ical_events" version))
        (sha256
          (base32 "102q921x8r7yp2xnyv3mz2fgyzs7jc3fhm696hyn039qi18r4w2k"))))
    (build-system python-build-system)
    (native-inputs `(("python-cython" ,python-cython)
		      "python-pytest" ,python-pytest)))
    (propagated-inputs
      `(("python-dateutil" ,python-dateutil)
        ("python-icalendar" ,python-icalendar)
        ("python-pytz" ,python-pytz)))
    (home-page "https://github.com/niccokunzmann/python-recurring-ical-events")
    (synopsis
      "A Python module which repeats ICalendar events by RRULE, RDATE and EXDATE.")
    (description
      "A Python module which repeats ICalendar events by RRULE, RDATE and EXDATE.")
    (license #f)))

(define-public python-geojson
  (package
    (name "python-geojson")
    (version "2.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "geojson" version))
        (sha256
          (base32 "12k5bzqskvq3gqzkryarhdjl0df47y5k9cf8r3clasi2wjnbfjvf"))))
    (build-system python-build-system)
    (home-page "https://github.com/jazzband/geojson")
    (synopsis "Python bindings and utilities for GeoJSON")
    (description "Python bindings and utilities for GeoJSON")
    (license license:bsd-3)))

(define-public python-pyowm
  (package
    (name "python-pyowm")
    (version "3.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "pyowm" version))
        (sha256
          (base32 "1pm8w6phr4m3xayndfndid366vhf1fpvdgjsp2zicxarmgc0pm53"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-geojson" ,python-geojson)
        ("python-pysocks" ,python-pysocks)
        ("python-requests" ,python-requests)))
    (home-page "https://github.com/csparpa/pyowm")
    (synopsis "A Python wrapper around OpenWeatherMap web APIs")
    (description "A Python wrapper around OpenWeatherMap web APIs")
    (license license:expat)))

(define-public python-cython-new
(package
  (inherit python-cython)
  (name "python-cython")
  (version "0.29.24")
  (source
    (origin
      (method url-fetch)
      (uri (pypi-uri "Cython" version))
      (sha256
        (base32 "0hw4gs18rh4slij1fg252argxhraypld9apbqbl60230qc3lvw6d"))))))

(define-public python-numpy
  (package
    (name "python-numpy")
    (version "1.21.2")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "numpy" version ".zip"))
        (sha256
          (base32 "1p6n7pbc4s7qdqh28clyrhahs0xzadh7q0w6vwakp4n5mzc1ccj2"))))
    (build-system python-build-system)
    (native-inputs `(("python-cython" ,python-cython-new)
		     ("unzip" ,unzip)))
    (home-page "https://www.numpy.org")
    (synopsis
      "NumPy is the fundamental package for array computing with Python.")
    (description
      "NumPy is the fundamental package for array computing with Python.")
    (license license:bsd-3)))

(define-public python-inkycal
  (package
    (name "python-inkycal")
    (version "2.0.0b0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "inkycal" version))
        (sha256
          (base32 "0v6ny88fdlzx80qiwggzhwyzarcw8zcfpvfgwdwwdh9g76pll93z"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-arrow" ,python-arrow)
        ("python-feedparser" ,python-feedparser)
        ("python-icalendar" ,python-icalendar)
        ("python-numpy" ,python-numpy)
        ("python-pillow" ,python-pillow)
        ("python-pyowm" ,python-pyowm)
        ("python-recurring-ical-events" ,python-recurring-ical-events)))
    (home-page "https://github.com/aceisace/Inky-Calendar")
    (synopsis
      "Python3 software for syncing icalendar events, weather and news on selected E-Paper displays")
    (description
      "Python3 software for syncing icalendar events, weather and news on selected E-Paper displays")
    (license license:gpl3+)))
