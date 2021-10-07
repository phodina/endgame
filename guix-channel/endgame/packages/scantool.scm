(define-module (endgame packages scantool)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (gnu packages)
  #:use-module (gnu packages image)
  #:use-module (gnu packages game-development)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; How to get dzcomm
; https://github.com/jantman/scantool.net
(define-public scantool
(package
  (name "scantool")
  (version "2.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/kees/scantool")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
	    (modules '((guix build utils)))
             (snippet
              '(begin
               (for-each make-file-writable (find-files "."))
                #t))
	    (patches
            '("endgame/packages/patches/scantool-change-vars.patch"))
            (sha256
             (base32
              "1s6sdzay1hnrddvx4z93l9bysm4rcw9k788qvr5i8nh1507bcrfp"))))
  (build-system gnu-build-system)
  (arguments
    `(#:tests? #f
      #:make-flags (list (string-append "CFLAGS=-I" (assoc-ref %build-inputs "allegro") "/include/allegro5"))
      #:phases
      (modify-phases %standard-phases
        (delete 'configure))))
  (inputs `(("allegro" ,allegro)))
  (synopsis "OBD-II vehicle diagnostic scanner")
  (description "OBD-II vehicle diagnostic scanner allows you to read trouble codes and 
see their descriptions, clear the codes and turn off the \"Check Engine\" light, 
and display real-time sensor data such as RPM, Engine Load, Vehicle Speed, 
Coolant Temperature, and Timing Advance.")
  (home-page "https://github.com/kees/scantool")
  (license license:gpl1)))
