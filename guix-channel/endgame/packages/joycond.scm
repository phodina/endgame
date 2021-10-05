(define-module (endgame packages joycond)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages video)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public joycond
  (let ((commit "f9a66914622514c13997c2bf7ec20fa98e9dfc1d")
        (revision "1"))
    (package
      (name "joycond")
      (version (git-version "0.1.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/DanielOgorchock/joycond")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "07z86yp27vxc0b44jgvf1vpa69rh3wdvd1xbzcsrj3f32743pv5a"))))
      (build-system cmake-build-system)
      (arguments
       `(#:tests? #f ; no test suite
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'fix-bin-location
             (lambda* _
               (substitute* "CMakeLists.txt"
                 (("/lib/udev/rules.d") (string-append %output "/lib/udev/rules.d"))
                 (("/etc/systemd/system") (string-append %output "/etc/systemd/system"))
                 (("/etc/modules-load.d") (string-append %output "/etc/modules-load.d"))
                 (("/usr/bin") (string-append %output "/bin"))))))))
      (native-inputs `(("pkg-config" ,pkg-config)))
      (inputs `(("libevdev" ,libevdev)
                ("eudev" ,eudev)))
      (synopsis "Joy-con controller daemon")
      (description "This package provides a userspace daemon for the joy-con
controllers.")
      (home-page "https://github.com/DanielOgorchock/joycond")
      (license license:gpl3))))
