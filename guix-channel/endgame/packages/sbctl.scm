(define-module (endgame packages sbctl)
  #:use-module (guix packages)
  #:use-module (gnu packages base)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages tls)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public go-go-mozilla-org-pkcs7
  (package
    (name "go-go-mozilla-org-pkcs7")
    (version "0.0.0-20210826202110-33d05740a352")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/mozilla-services/pkcs7")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "1gw1jsmcyf881612v5ncq23rlvqsvan47clh5pfdfn6cp4gax4y7"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "go.mozilla.org/pkcs7"))
    (inputs `(("openssl" ,openssl)))
    (home-page "https://go.mozilla.org/pkcs7")
    (synopsis "pkcs7")
    (description
      "Package pkcs7 implements parsing and generation of some PKCS#7 structures.
")
    (license license:expat)))

(define-public go-github-com-fatih-color
  (package
    (name "go-github-com-fatih-color")
    (version "1.12.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/fatih/color")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "0r6r4vh9aiz8ny2whvpq288x8shkyvpj38g5pqw5840ryq38chig"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/fatih/color"))
    (propagated-inputs
      `(("go-github-com-mattn-go-isatty"
         ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable"
         ,go-github-com-mattn-go-colorable)))
    (home-page "https://github.com/fatih/color")
    (synopsis "color")
    (description
      "Package color is an ANSI color package to output colorized or SGR defined
output to the standard output.  The API can be used in several way, pick one
that suits you.
")
    (license license:expat)))

(define-public go-github-com-google-uuid
  (package
    (name "go-github-com-google-uuid")
    (version "1.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/google/uuid")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "0imkw52m7fzrwsdj2rfrk3zbplqfbwncyv6hv89xw0vdw3jpk122"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/google/uuid"))
    (home-page "https://github.com/google/uuid")
    (synopsis "uuid")
    (description
      "Package uuid generates and inspects UUIDs.
")
    (license license:bsd-3)))

(define-public go-github-com-mattn-go-isatty
  (package
    (name "go-github-com-mattn-go-isatty")
    (version "0.0.14")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/mattn/go-isatty")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "015zc3j60vb85d7f2al15la24wn45piazxlagqhzrbgfdyqci60z"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/mattn/go-isatty"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://github.com/mattn/go-isatty")
    (synopsis "go-isatty")
    (description
      "Package isatty implements interface to isatty
")
    (license license:expat)))

(define-public go-github-com-russross-blackfriday-v2
  (package
    (name "go-github-com-russross-blackfriday-v2")
    (version "2.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/russross/blackfriday")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "0d1rg1drrfmabilqjjayklsz5d0n3hkf979sr3wsrw92bfbkivs7"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/russross/blackfriday"))
    (home-page
      "https://github.com/russross/blackfriday")
    (synopsis "Blackfriday")
    (description
      "Package blackfriday is a markdown processor.
")
    (license license:bsd-2)))

(define-public go-github-com-cpuguy83-go-md2man-v2
  (package
    (name "go-github-com-cpuguy83-go-md2man-v2")
    (version "2.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cpuguy83/go-md2man")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "051ljpzf1f5nh631lvn53ziclkzmx5lza8545mkk6wxdfnfdcx8f"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/cpuguy83/go-md2man"))
    (propagated-inputs
      `(("go-github-com-russross-blackfriday-v2"
         ,go-github-com-russross-blackfriday-v2)))
    (home-page
      "https://github.com/cpuguy83/go-md2man")
    (synopsis "go-md2man")
    (description
      "Converts markdown into roff (man pages).")
    (license license:expat)))

(define-public go-github-com-inconshreveable-mousetrap
  (package
    (name "go-github-com-inconshreveable-mousetrap")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/inconshreveable/mousetrap")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "1mn0kg48xkd74brf48qf5hzp0bc6g8cf5a77w895rl3qnlpfw152"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "github.com/inconshreveable/mousetrap"))
    (home-page
      "https://github.com/inconshreveable/mousetrap")
    (synopsis "mousetrap")
    (description
      "mousetrap is a tiny library that answers a single question.")
    (license license:asl2.0)))

(define-public go-github-com-spf13-cobra
  (package
    (name "go-github-com-spf13-cobra")
    (version "1.2.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/spf13/cobra")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "091kz3xnlsgpqb90fc5nhjr4yfr8b8sjnyl0zd4wm1fgzkpw09jh"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/spf13/cobra"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
        ("go-github-com-spf13-viper"
         ,go-github-com-spf13-viper)
        ("go-github-com-spf13-pflag"
         ,go-github-com-spf13-pflag)
        ("go-github-com-inconshreveable-mousetrap"
         ,go-github-com-inconshreveable-mousetrap)
        ("go-github-com-cpuguy83-go-md2man-v2"
         ,go-github-com-cpuguy83-go-md2man-v2)))
    (home-page "https://github.com/spf13/cobra")
    (synopsis "Table of Contents")
    (description
      "Package cobra is a commander providing a simple interface to create powerful modern CLI interfaces.
In addition to providing an interface, Cobra simultaneously provides a controller to organize your application code.
")
    (license license:asl2.0)))

(define-public go-github-com-foxboron-go-uefi
  (package
    (name "go-github-com-foxboron-go-uefi")
    (version "0.0.0-20210905104421-29591bd7f4d5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Foxboron/go-uefi")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
	;(patches '("endgame/packages/patches/go-github-com-foxboron-go-uefi-remove-vtest.patch"))
        (sha256
          (base32
            "0hghi99ci75f66lx98053821k0190llzkyvznqz5pjxwscwi83zn"))))
    (build-system go-build-system)
    (arguments
      `(#:tests? #f
	#:unpack-path "github.com/Foxboron/go-uefi"
        #:phases
	 (modify-phases %standard-phases
			(delete 'install)
			(replace 'build
           (lambda arguments
             (for-each
              (lambda (directory)
                (apply (assoc-ref %standard-phases 'build)
                       `(,@arguments #:import-path ,directory)))
              (list
	       "github.com/Foxboron/go-uefi"))
	                         (chdir "github.com/Foxboron/go-uefi")
				 (invoke "make" "build"))))))
    (native-inputs `(("make" ,gnu-make)))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-crypto"
         ,go-golang-org-x-crypto)
        ("go-go-mozilla-org-pkcs7"
         ,go-go-mozilla-org-pkcs7)
        ("go-github-com-pkg-errors"
         ,go-github-com-pkg-errors)))
    (home-page "https://github.com/Foxboron/go-uefi")
    (synopsis "go-uefi")
    (description
      "This package provides a UEFI library written to interact with Linux efivars.  The goal is to provide a
Go library to enable application authors to better utilize secure boot and UEFI.
This also includes unit-testing to ensure the library is compatible with
existing tools, and integration tests to ensure the library is able of deal with
future UEFI revisions.")
    (license #f)))
