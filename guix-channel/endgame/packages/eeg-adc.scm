(define-module (endgame packages eeg-adc)
  #:use-module (guix packages)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages engineering)
  #:use-module (gnu packages package-management)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-eeg-adc
  (let ((commit "33b487cd90c5524ad004f9845887e29e2f0cf6b4")
	(revision "1"))
  (package
    (name "python-eeg-adc")
    (version commit)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference 
	       (url "https://notabug.org/AdamWysokinski/EEG-ADC")
	       (commit version)))
        (sha256
          (base32
            "024s1w21836a6d69ib302wkh8hv1yj5fsdc1m4c1zdm2hplpjih5"))))
    (build-system python-build-system)
    (home-page "https://notabug.org/AdamWysokinski/EEG-ADC")
    (synopsis " AD Converter and Analyzer for scanned EEG recordings")
    (description "This package allows you to convert from analog to digital
scanned EEG recordings and later analyze them.")
    (license license:gpl2+))))
