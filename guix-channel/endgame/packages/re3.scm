(define-module (endgame packages re3)
  #:use-module (guix packages)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages base)
  #:use-module (gnu packages build-tools)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages pth)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages mp3)
  #:use-module (gnu packages xiph)
  #:use-module (guix git-download)
  #:use-module (guix utils)
  #:use-module (nonguix utils)
  #:use-module (guix build-system gnu)
  #:use-module (guix licenses))

(define-public re3
(package
  (name "re3")
  (version "9a7fa478578beaba947ea867c15a25e411d641d8")
  (source
    (origin
      (method git-fetch)
        (uri (git-reference
          (url "https://github.com/halpz/re3")
	  (recursive? #t)
          (commit version)))
        (sha256
          (base32
            "190wkhlzjhn81x5g4wcw0d8pa5daa5xskbdm01qxcr8b5syihcdi"))
        (patches '("patches/re3-Find-Threads-pkg.patch"))))
  (build-system gnu-build-system)
  (arguments
    `(#:make-flags (append (list (string-append "CC=" ,(cc-for-target))))
      #:phases
        (modify-phases %standard-phases
          (replace 'configure
           (lambda _
            (invoke "premake5" "--with-librw" "gmake2")
            (invoke "./printHash.sh" "src/extras/GitSHA1.cpp")))
          (add-before 'build 'change-dir
           (lambda _
            (chdir (string-append (getcwd) "/build"))#t)))))
  (native-inputs `(("pkg-config" ,pkg-config)
                   ("premake5" ,premake5)))
  (inputs `(("openal" ,openal)
            ("mpg123" ,mpg123)
            ("pth" ,pth)
	    ("glfw" ,glfw)
            ("libc32" ,(to32 glibc))))
  (synopsis "Reverse engineered GTA III & GTA VC")
  (description "")
  (home-page "https://github.com/halpz/re3")
  ; Currently none - there is an open issue
  ; https://github.com/GTAmodding/re3/issues/794
  (license #f)))
