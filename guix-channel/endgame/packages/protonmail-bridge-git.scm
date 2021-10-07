(define-module (endgame packages protonmail-bridge-git)
  #:use-module (gnu packages base)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages qt)
  #:use-module (guix build-system gnu)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:))

(define-public protonmail-bridge-git
  (let ((version "1.8.7"))
    (package
      (name "protonmail-bridge-git")
      (version version)
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
		(url "https://github.com/ProtonMail/proton-bridge")
		(commit (string-append "v" version))))
         (sha256
          (base32 "1887qa59i4vj3q71sd48hdcrinq0gm235qync6qqapsy0ywcyabg"))))
      (build-system gnu-build-system)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
	    (delete 'configure)
            (add-before 'build 'set-home
             (lambda* (#:key inputs outputs #:allow-other-keys)
				 (setenv "HOME" "/tmp"))))))
;           (replace 'unpack
;             (lambda* (#:key inputs outputs #:allow-other-keys)
;               (let ((data (string-append (assoc-ref outputs "out") "/data")))
;                 (mkdir-p data)
;                 (invoke "ar" "x" (assoc-ref inputs "source"))
;                 (invoke "tar" "-xz" "-f" "data.tar.gz"))
;               #t)))
;         #:strip-binaries? #f
;         #:patchelf-plan
;         `(("usr/lib/protonmail/bridge/proton-bridge"
;            ("libc" "gcc:lib" "qtbase" "qtdeclarative" "qtsvg" "libsecret" "gtk" "glib" "libglvnd")))
;         #:install-plan
;         `(("usr/lib/protonmail/bridge/proton-bridge" () "bin/proton-bridge"))))
      (inputs `(("gcc:lib" ,gcc "lib")
                ("git" ,git)
                ("glu" ,glu)
                ("libglvnd" ,libglvnd)
                ("glib" ,glib)
		("go" ,go)
                ("libsecret" ,libsecret)
                ("gtk" ,gtk+)
                ("qtbase" ,qtbase-5)
                ("qtdeclarative" ,qtdeclarative)
                ("qtsvg" ,qtsvg)
                ("therecipe" ,(origin (method git-fetch)
              (uri (git-reference
               (url "https://github.com/therecipe/env_linux_amd64_513.git")
               (commit version)))
               (file-name (git-file-name name version))
              (sha256
               (base32
                "0k2yhvbfyw1rzqk62xd0m6bg8ily0lz5jzh2ysyhm3hr0m9v62s0"))))))
      (synopsis "ProtonMail Bridge application.")
      (description "An application that runs on your computer in the
background and seamlessly encrypts and decrypts your mail as it enters
and leaves your computer.")
      (home-page "https://www.protonmail.com/bridge")
      (license license:gpl3+))))
