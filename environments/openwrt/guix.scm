;;; guix.scm -- Guix package definition

(use-modules
  (guix git-download)
  (guix download)
  (guix packages)
  (guix utils)
  (guix gexp)
  (gnu packages)
  (gnu packages bash)
  (gnu packages networking)
  (gnu packages compression)
  (gnu packages linux)
  (gnu packages admin)
  (gnu packages version-control)
  (guix build-system copy)
  (srfi srfi-1)
  (ice-9 popen)
  (ice-9 rdelim))

(define %source-dir (dirname (dirname (current-filename))))

(define %git-commit
  (read-string (open-pipe "git show HEAD | head -1 | cut -d ' ' -f 2" OPEN_READ)))

(define-public openwrt-git
  (package
    (name "openwrt")
    (version (git-version "21.02" "HEAD" %git-commit))
    (source (local-file %source-dir #:recursive? #t))
    (propagated-inputs
       `(("bash" ,bash)
         ("git" ,git)
         ("perl" ,perl)
         ("make" ,gnu-make)
         ("gcc-toolchain" ,gcc-toolchain)
         ("unzip" ,unzip)
         ("util-linux" ,util-linux)
         ("python2" ,python-2)
         ("python" ,python)
         ("patch" ,patch)
         ("wget" ,wget)
         ("file" ,file)
         ("grep" ,grep)
         ("sed" ,sed)
         ("gawk" ,gawk)
         ("diffutils" ,diffutils)
         ("subversion" ,subversion)
         ("which" ,which)
         ("pkg-config" ,pkg-config)
         ("openssl" ,openssl)
         ("binutils" ,binutils)
         ("ncurses" ,ncurses)
         ("zlib" ,zlib)
         ("glibc" ,glibc)
         ("coreutils" ,coreutils)))
    (build-system copy-build-system)
;    (arguments
;     (substitute-keyword-arguments (package-arguments gnunet)
;       ((#:phases phases)
;        `(modify-phases ,phases
;           (add-after 'install 'symlink-cc
;             (lambda _
;               (symlink (string-append (assoc-ref %build-inputs "gcc-toolchain") "/bin/gcc") (string-append out "/bin/cc"))
;               )))))
     (synopsis "OpenWRT git")
     (description "The OpenWrt Project is a Linux operating system targeting embedded devices. Instead of trying to create a single, static firmware, OpenWrt provides a fully writable filesystem with package management")
     (home-page "https://openwrt.org/")
     (license #f))))

openwrt-git
