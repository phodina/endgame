(define-module (endgame packages nexus)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system maven)
  #:use-module ((guix licenses) #:prefix license:))

(define-public nexus-public
  (package
    (name "nexus-public")
    (version "3.34.1-01")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
	       (url "https://github.com/sonatype/nexus-public")
	       (commit (string-append "release-" version))))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0rmm48r41ifp0b9jan6q8579v0pg3jzz41a0z73cz4gichsnbhwl"))))
    (build-system maven-build-system)
    (home-page "http://www.sonatype.com/nexus-repository-oss")
    (synopsis "Sonatype Nexus Repository Manager")
    (description "")
    (license license:epl1.0)))

