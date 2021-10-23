(define-module (endgame packages thrive)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages mono)
  #:use-module (gnu packages game-development)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

; https://github.com/Revolutionary-Games/Thrive/blob/master/doc/setup_instructions.md
(define-public thrive
(package
  (name "thrive")
  (version "0.5.5")
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/Revolutionary-Games/Thrive")
             (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "167lwxnvy6c4mnzb45sdbwv05v0siljb2qzrvi4vnvc9cnhgf4n9"))))
  (build-system gnu-build-system)
  (inputs `(("godot" ,godot)
            ("mono" ,mono)))
  (synopsis "Evolution game")
  (description "")
  (home-page "https://revolutionarygamesstudio.com/")
  (license license:expat)))
