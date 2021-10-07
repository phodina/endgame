(define-module (endgame packages protonmail-bridge)
  #:use-module (gnu packages base)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages qt)
  #:use-module (nonguix build-system binary)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:))

(define-public protonmail-bridge
  (let ((version "1.8.7"))
    (package
      (name "protonmail-bridge")
      (version version)
      (source
       (origin
         (method url-fetch)
         (uri (string-append "https://protonmail.com/download/bridge/protonmail-bridge_" version "-1_amd64.deb"))
         (sha256
          (base32 "1f1vs060a3fjxdwrs190cmh3x5s033qnybcabwlaw9gn2v6mc7lb"))))
      (supported-systems '("x86_64-linux"))
      (build-system binary-build-system)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           (replace 'unpack
             (lambda* (#:key inputs outputs #:allow-other-keys)
               (let ((data (string-append (assoc-ref outputs "out") "/data")))
                 (mkdir-p data)
                 (invoke "ar" "x" (assoc-ref inputs "source"))
                 (invoke "tar" "-xz" "-f" "data.tar.gz"))
               #t)))
         #:strip-binaries? #f
         #:patchelf-plan
         `(("usr/lib/protonmail/bridge/proton-bridge"
            ("libc" "gcc:lib" "qtbase" "qtdeclarative" "qtsvg" "libsecret" "gtk" "glib" "libglvnd")))
         #:install-plan
         `(("usr/lib/protonmail/bridge/proton-bridge" () "bin/proton-bridge"))))
      (inputs `(("gcc:lib" ,gcc "lib")
                ("glu" ,glu)
                ("libglvnd" ,libglvnd)
                ("glib" ,glib)
                ("libsecret" ,libsecret)
                ("gtk" ,gtk+)
                ("qtbase" ,qtbase-5)
                ("qtdeclarative" ,qtdeclarative)
                ("qtsvg" ,qtsvg)))
      (synopsis "ProtonMail Bridge application.")
      (description "An application that runs on your computer in the
background and seamlessly encrypts and decrypts your mail as it enters
and leaves your computer.")
      (home-page "https://www.protonmail.com/bridge")
      (license license:gpl3+))))
