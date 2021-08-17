(define-module (endgame packages librealsense)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages ninja)
  #:use-module (gnu packages version-control)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))
 
(define-public librealsense
 (package
  (name "librealsense")
  (version "2.47.0")
  (source (origin
           (method git-fetch)
           (uri (git-reference
                 (url "https://github.com/IntelRealSense/librealsense")
                 (commit (string-append "v" version))))
           (patches
            '("endgame/packages/patches/librealsense-remove-network-connectivity.patch" "endgame/packages/patches/librealsense-fix-udev-rule.patch"))
           (file-name (git-file-name name version))
           (modules '((guix build utils)))
            (sha256
             (base32
              "1jshhcnvbaa3xm5jr1s5m6z62wn1cspb7wkfdc1w88kp9j02ss8w"))))
  (build-system cmake-build-system)
  (arguments
       `(#:tests? #f ; no tests
         #:configure-flags (list "-DBUILD_EXAMPLES=ON"
                                 "-DBUILD_GRAPHICAL_EXAMPLES=ON"
                                 "-DINTERNET_CONNECTION=OFF"
                                 "-DCHECK_FOR_UPDATES=OFF")
         #:phases
           (modify-phases %standard-phases
            ;; more convenient than manually invoking setup_udev_rules.sh
            ;; and substituting the path in the script
            (add-after 'unpack 'copy-udev-rules
              (lambda* (#:key outputs #:allow-other-keys)
               (let ((out (string-append (assoc-ref outputs "out")
                            "/lib/udev/rules.d")))
               (mkdir-p (string-append out))
               (copy-file "config/99-realsense-libusb.rules"
                          (string-append out
                           "/99-realsense-libusb.rules"))))))))
  (native-inputs `(("pkg-config" ,pkg-config)
                   ("ninja" ,ninja)))
  (inputs `(("glfw" ,glfw)
            ("gtk+" ,gtk+)
            ("libusb" ,libusb)
            ("glu" ,glu)))
  (synopsis "Intel RealSense SDK")
  (description "Intel RealSense SDK 2.0 is a cross-platform library for
Intel RealSense depth cameras (D400 & L500 series and the SR300) and the
T265 tracking camera.")
  (home-page "https://github.com/IntelRealSense/librealsense")
  (license license:gpl3)))
