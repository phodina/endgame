(define-module (endgame packages sgx)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (gnu packages)
  #:use-module (gnu packages base)
  #:use-module (gnu packages embedded)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages libftdi)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages python)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

; https://github.com/intel/SGXDataCenterAttestationPrimitives

(define-public sgx-driver
(package
  (name "sgx-driver")
  (version "2.14")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/intel/linux-sgx-driver")
             (commit (string-append "sgx_diver_" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0kbbf2inaywp44lm8ig26mkb36jq3smsln0yp6kmrirdwc3c53mi"))))
  (build-system gnu-build-system)
  (arguments
    `(#:phases
      (modify-phases %standard-phases
       (delete 'configure))))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (synopsis "Intel SGX Driver")
  (description "This package provides Intel Software Guard Extensions
(Intel SGX) for application developers seeking to protect select code and data
from disclosure or modification.")
  (home-page "https://01.org/intel-softwareguard-extensions")
  (license (list license:bsd-3 license:gpl2+))))
