(define-module (endgame packages jenkins)
  #:use-module (guix build-system maven)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (gnu packages groovy)
  #:use-module (gnu packages perl)
  #:use-module ((guix licenses) #:prefix license:))

; https://github.com/orgs/mojohaus/repositories?q=mojo&type=&language=&sort=
; https://github.com/mojohaus/animal-sniffer
(define-public jenkins
  (package
    (name "jenkins")
    (version "2.315")
    (source (origin
              (method git-fetch)
              (uri (git-reference
		     (url "https://github.com/jenkinsci/jenkins")
                     (commit (string-append "jenkins-" version))))
              (sha256
               (base32
                "0rscirnyaw6hhc8zmyppp3zavpap2h2crbwj5vn909mqbxc5cpz7"))))
    (build-system maven-build-system)
    (inputs `(("groovy" ,groovy)
	      ("perl" ,perl)))
;    (arguments
;     `(#:install-plan
;       `((,(assoc-ref %build-inputs "source")
;          ,(string-append "/webapps/jenkins.war")))
;       #:phases (modify-phases %standard-phases (delete 'unpack))))
    (home-page "https://www.jenkins.io/")
    (synopsis "Continuous integration tool")
    (description
     "This package provides a Jenkins continuous integration tool.")
    (license license:expat)))
