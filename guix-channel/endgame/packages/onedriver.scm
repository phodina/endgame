(define-module (endgame packages onedriver)
  #:use-module (guix packages)
  #:use-module (gnu packages check)
  #:use-module (gnu packages documentation)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages polkit)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public go-github-com-jstaf-onedriver
  (package
    (name "go-github-com-jstaf-onedriver")
    (version "0.11.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jstaf/onedriver")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "1w6524jn68knn9079i1bv6vvv3n9pbx4vf9lbvlipglb9mns0bzv"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/jstaf/onedriver"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-go-etcd-io-bbolt" ,go-go-etcd-io-bbolt)
        ("go-github-com-spf13-pflag"
         ,go-github-com-spf13-pflag)
        ("go-github-com-sirupsen-logrus"
         ,go-github-com-sirupsen-logrus)
        ("go-github-com-rclone-rclone"
         ,go-github-com-rclone-rclone)
        ("go-github-com-kylelemons-godebug"
         ,go-github-com-kylelemons-godebug)
        ("go-github-com-hanwen-go-fuse-v2"
         ,go-github-com-hanwen-go-fuse-v2)))
    (home-page "https://github.com/jstaf/onedriver")
    (synopsis "onedriver")
    (description
      "onedriver is a network filesystem that gives your computer direct access to your
files on Microsoft OneDrive.  To your computer, there is no difference between
using files on OneDrive and files on your local hard disk.  onedriver isn't a
sync client, but it comes with all of the best features of one.")
    (license license:gpl3)))
