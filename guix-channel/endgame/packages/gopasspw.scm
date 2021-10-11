(define-module (endgame packages gopasspw)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages syncthing)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

; Graph loop
(define-public go-filippo-io-age
  (package
    (name "go-filippo-io-age")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/FiloSottile/age")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "19fz68n262kvg2ssw4r6nik30zk6g6cy7rdi0fm05czwigqrdz1i"))))
    (build-system go-build-system)
    (arguments '(#:import-path "filippo.io/age"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-term" ,go-golang-org-x-term)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-filippo-io-edwards25519" ,go-filippo-io-edwards25519)))
    (home-page "https://filippo.io/age")
    (synopsis "Usage")
    (description
      "Package age implements file encryption according to the age-encryption.org/v1
specification.
")
    (license license:bsd-3)))

(define-public go-filippo-io-edwards25519
  (package
    (name "go-filippo-io-edwards25519")
    (version "1.0.0-rc.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/FiloSottile/edwards25519")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1g004b3yw7pbxcx1fr34a8dyyfjhknz97b9zkmjn4lb2c8rl8y5c"))))
    (build-system go-build-system)
    (arguments '(#:import-path "filippo.io/edwards25519"))
    (home-page "https://filippo.io/edwards25519")
    (synopsis "filippo.io/edwards25519")
    (description
      "Package edwards25519 implements group logic for the twisted Edwards curve
")
    (license license:bsd-3)))

(define-public go-github-com-atotto-clipboard
  (package
    (name "go-github-com-atotto-clipboard")
    (version "0.1.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/atotto/clipboard")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ycd8zkgsq9iil9svhlwvhcqwcd7vik73nf8rnyfnn10gpjx97k5"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/atotto/clipboard"))
    (home-page "https://github.com/atotto/clipboard")
    (synopsis "Clipboard for Go")
    (description "Package clipboard read/write on clipboard
")
    (license license:bsd-3)))

(define-public go-github-com-blang-semver-v4
  (package
    (name "go-github-com-blang-semver-v4")
    (version "4.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/blang/semver")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "14h9ys4n4kx9cbj42lkdf4i5k3nkll6sd62jcvl7cs565v6fiknz"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/blang/semver/v4"))
    (home-page "https://github.com/blang/semver")
    (synopsis #f)
    (description #f)
    (license license:expat)))

(define-public go-gotest-tools-v3
  (package
    (name "go-gotest-tools-v3")
    (version "3.0.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gotestyourself/gotest.tools")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1h316233n33lkfhbak8ljdj5i8df6hcwwm48n200svf22x3d95ww"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "gotest.tools/v3" #:unpack-path "gotest.tools/v3"))
    (propagated-inputs
      `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
    (home-page "https://gotest.tools/v3")
    (synopsis "gotest.tools")
    (description
      "Package gotesttools is a collection of packages to augment `testing` and
support common patterns.
")
    (license license:asl2.0)))

(define-public go-github-com-caspr-io-yamlpath
  (package
    (name "go-github-com-caspr-io-yamlpath")
    (version "0.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/caspr-io/yamlpath")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1mp03b55q218zmq41ssdd5dxvz3zyy674qfbpfg63dkins428hyh"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/caspr-io/yamlpath"))
    (propagated-inputs
      `(("go-gotest-tools-v3" ,go-gotest-tools-v3)
        ("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)))
    (home-page "https://github.com/caspr-io/yamlpath")
    (synopsis #f)
    (description #f)
    (license #f)))

(define-public go-github-com-cenkalti-backoff
  (package
    (name "go-github-com-cenkalti-backoff")
    (version "2.2.1+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cenkalti/backoff")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1mf4lsl3rbb8kk42x0mrhzzy4ikqy0jf6nxpzhkr02rdgwh6rjk8"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/cenkalti/backoff"))
    (home-page "https://github.com/cenkalti/backoff")
    (synopsis "Exponential Backoff")
    (description
      "Package backoff implements backoff algorithms for retrying operations.
")
    (license license:expat)))

(define-public go-github-com-chzyer-readline
  (package
    (name "go-github-com-chzyer-readline")
    (version "0.0.0-20180603132655-2972be24d48e")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/chzyer/readline")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "104q8dazj8yf6b089jjr82fy9h1g80zyyzvp3g8b44a7d8ngjj6r"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/chzyer/readline"))
    (home-page "https://github.com/chzyer/readline")
    (synopsis "Guide")
    (description
      "Readline is a pure go implementation for GNU-Readline kind library.
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
          (base32 "0d1rg1drrfmabilqjjayklsz5d0n3hkf979sr3wsrw92bfbkivs7"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/russross/blackfriday/v2"))
    (home-page "https://github.com/russross/blackfriday")
    (synopsis "Blackfriday")
    (description "Package blackfriday is a markdown processor.
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
          (base32 "051ljpzf1f5nh631lvn53ziclkzmx5lza8545mkk6wxdfnfdcx8f"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/cpuguy83/go-md2man/v2"))
    (propagated-inputs
      `(("go-github-com-russross-blackfriday-v2"
         ,go-github-com-russross-blackfriday-v2)))
    (home-page "https://github.com/cpuguy83/go-md2man")
    (synopsis "go-md2man")
    (description "Converts markdown into roff (man pages).")
    (license license:expat)))

(define-public go-github-com-gokyle-twofactor
  (package
    (name "go-github-com-gokyle-twofactor")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gokyle/twofactor")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0fhbw6cyq054w4frfvbgmffijg0bd1shvawm3ddl4cf1l12x1qxh"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gokyle/twofactor"))
    (home-page "https://github.com/gokyle/twofactor")
    (synopsis #f)
    (description "twofactor implements two-factor authentication.
")
    (license license:expat)))

(define-public go-github-com-google-go-github-v33
  (package
    (name "go-github-com-google-go-github-v33")
    (version "33.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/google/go-github")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1nzwgvaa9k1ky3sfynib6nhalam9dx66h5lxff334m9kk3rf5nn0"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/google/go-github/v33"))
    (propagated-inputs
      `(("go-google-golang-org-appengine" ,go-google-golang-org-appengine)
        ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-google-go-querystring"
         ,go-github-com-google-go-querystring)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
    (home-page "https://github.com/google/go-github")
    (synopsis "go-github")
    (description
      "go-github is a Go client library for accessing the @url{https://docs.github.com/en/rest,GitHub API v3}.")
    (license license:bsd-3)))

(define-public go-github-com-gopasspw-pinentry
  (package
    (name "go-github-com-gopasspw-pinentry")
    (version "0.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gopasspw/pinentry")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0sfsp8kdm2pndiah8gypnjkzj4q5cjp23yqp99p4x33s76y1p89j"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gopasspw/pinentry"))
    (home-page "https://github.com/gopasspw/pinentry")
    (synopsis "pinentry")
    (description
      "Package pinentry implements a cross platform pinentry client.  It can be used
to obtain credentials from the user through a simple UI application.
")
    (license license:expat)))

(define-public go-github-com-hashicorp-errwrap
  (package
    (name "go-github-com-hashicorp-errwrap")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/errwrap")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0p5wdz8p7dmwphmb33gwhy3iwci5k9wkfqmmfa6ay1lz0cqjwp7a"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/errwrap"))
    (home-page "https://github.com/hashicorp/errwrap")
    (synopsis "errwrap")
    (description
      "Package errwrap implements methods to formalize error wrapping in Go.
")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-go-multierror
  (package
    (name "go-github-com-hashicorp-go-multierror")
    (version "1.1.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/go-multierror")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0l4s41skdpifndn9s8y6s9vzgghdzg4z8z0lld9qjr28888wzp00"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/go-multierror"))
    (propagated-inputs
      `(("go-github-com-hashicorp-errwrap" ,go-github-com-hashicorp-errwrap)))
    (home-page "https://github.com/hashicorp/go-multierror")
    (synopsis "go-multierror")
    (description
      "@code{go-multierror} is a package for Go that provides a mechanism for
representing a list of @code{error} values as a single @code{error}.")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-golang-lru
  (package
    (name "go-github-com-hashicorp-golang-lru")
    (version "0.5.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/golang-lru")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1sdbymypp9vrnzp8ashw0idlxvaq0rb0alwxx3x8g27yjlqi9jfn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/golang-lru"))
    (home-page "https://github.com/hashicorp/golang-lru")
    (synopsis "golang-lru")
    (description
      "Package lru provides three different LRU caches of varying sophistication.
")
    (license license:mpl2.0)))

(define-public go-github-com-jsimonetti-pwscheme
  (package
    (name "go-github-com-jsimonetti-pwscheme")
    (version "0.0.0-20160922125227-76804708ecad")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jsimonetti/pwscheme")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1gyr7m5rmqcrvj5865sr4ihhib3vn75ljzncpgkx200wvxikk8wa"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jsimonetti/pwscheme"))
    (home-page "https://github.com/jsimonetti/pwscheme")
    (synopsis "pwscheme")
    (description "Golang package defining password schemes")
    (license license:expat)))

(define-public go-github-com-martinhoefling-goxkcdpwgen
  (package
    (name "go-github-com-martinhoefling-goxkcdpwgen")
    (version "0.0.0-20190331205820-7dc3d102eca3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/martinhoefling/goxkcdpwgen")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1l05jj46dwwzx6vdbsic8pc1g479068sf7jlpxwq2gkmizjlczic"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/martinhoefling/goxkcdpwgen"))
    (home-page "https://github.com/martinhoefling/goxkcdpwgen")
    (synopsis "goxkcdpwgen")
    (description "xkcd style password generator library and cli tool")
    (license license:expat)))

(define-public go-github-com-mitchellh-go-ps
  (package
    (name "go-github-com-mitchellh-go-ps")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/mitchellh/go-ps")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ipcbz66x7q8xczi7cyfq06y7n7v0syvkp730vn9jrn7s8f5ag0z"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/mitchellh/go-ps"))
    (home-page "https://github.com/mitchellh/go-ps")
    (synopsis "Process List Library for Go")
    (description
      "ps provides an API for finding and listing processes in a platform-agnostic
way.
")
    (license license:expat)))

(define-public go-github-com-muesli-crunchy
  (package
    (name "go-github-com-muesli-crunchy")
    (version "0.4.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/muesli/crunchy")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1qj0xlcx9vsx3igdy8aq47d0qh4ccvlqsvrxfakr2qh1v35p4p0d"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/muesli/crunchy"))
    (propagated-inputs
      `(("go-github-com-xrash-smetrics" ,go-github-com-xrash-smetrics)))
    (home-page "https://github.com/muesli/crunchy")
    (synopsis "crunchy")
    (description
      "Finds common flaws in passwords.  Like cracklib, but written in Go.")
    (license license:expat)))

(define-public go-github-com-nbutton23-zxcvbn-go
  (package
    (name "go-github-com-nbutton23-zxcvbn-go")
    (version "0.0.0-20210217022336-fa2cb2858354")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nbutton23/zxcvbn-go")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "026f5y0lprk61f3k4ld7l0hdqa8wpmvg202kj1gbfw8vjmv2kmwa"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nbutton23/zxcvbn-go"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (home-page "https://github.com/nbutton23/zxcvbn-go")
    (synopsis "Use")
    (description
      "This is a goLang port of python-zxcvbn and @url{https://github.com/dropbox/zxcvbn,zxcvbn}, which are python and JavaScript password strength
generators.  zxcvbn attempts to give sound password advice through pattern
matching and conservative entropy calculations.  It finds 10k common passwords,
common American names and surnames, common English words, and common patterns
like dates, repeats (aaa), sequences (abcd), and QWERTY patterns.")
    (license license:expat)))

(define-public go-github-com-schollz-closestmatch
  (package
    (name "go-github-com-schollz-closestmatch")
    (version "2.1.0+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/schollz/closestmatch")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1gpzqrvka1bps790b2px0h9z1j2vjga5xx7204anl83qndiyyrli"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/schollz/closestmatch"))
    (home-page "https://github.com/schollz/closestmatch")
    (synopsis "closestmatch ð\x9f\x93\x83")
    (description
      " is a simple and fast Go library for fuzzy matching an input string to a list of target strings.  is useful for handling input from a user where the input (which could be mispelled or out of order) needs to match a key in a database.  uses a @url{https://en.wikipedia.org/wiki/Bag-of-words_model,bag-of-words approach} to precompute character n-grams to represent each possible target string.  The closest matches have highest overlap between the sets of n-grams.  The precomputation scales well and is much faster and more accurate than Levenshtein for long strings.")
    (license license:expat)))

(define-public go-github-com-skip2-go-qrcode
  (package
    (name "go-github-com-skip2-go-qrcode")
    (version "0.0.0-20200617195104-da1b6568686e")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/skip2/go-qrcode")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0pghd6y2x8a5fqy4rjn4d8j5jcslb236naycdza5an7vyvinsgs9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/skip2/go-qrcode"))
    (home-page "https://github.com/skip2/go-qrcode")
    (synopsis "go-qrcode")
    (description "Package qrcode implements a QR Code encoder.
")
    (license license:expat)))

(define-public go-github-com-xrash-smetrics
  (package
    (name "go-github-com-xrash-smetrics")
    (version "0.0.0-20201216005158-039620a65673")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/xrash/smetrics")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0cmzcq567avzqzrf1ns7lz1gv69s8dxbs276m0j8qbm4yddysqaq"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/xrash/smetrics"))
    (home-page "https://github.com/xrash/smetrics")
    (synopsis "smetrics")
    (description
      "Package smetrics provides a bunch of algorithms for calculating
the distance between strings.
")
    (license license:expat)))

(define-public go-google-golang-org-appengine
  (package
    (name "go-google-golang-org-appengine")
    (version "1.6.7")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/appengine")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1wkipg7xxc0ha5p6c3bj0vpgq38l18441n5l6zxdhx0gzvz5z1hs"))))
    (build-system go-build-system)
    (arguments '(#:import-path "google.golang.org/appengine"))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
    (home-page "https://google.golang.org/appengine")
    (synopsis "Go App Engine packages")
    (description
      "Package appengine provides basic functionality for Google App Engine.
")
    (license license:asl2.0)))

(define-public go-github-com-golang-protobuf
  (package
    (name "go-github-com-golang-protobuf")
    (version "1.5.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/protobuf")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1mh5fyim42dn821nsd3afnmgscrzzhn3h8rag635d2jnr23r1zhk"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang/protobuf"))
    (propagated-inputs
      `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
    (home-page "https://github.com/golang/protobuf")
    (synopsis "Go support for Protocol Buffers")
    (description
      "This module
(@url{https://pkg.go.dev/mod/github.com/golang/protobuf,(code github.com/golang/protobuf)})
contains Go bindings for protocol buffers.")
    (license license:bsd-3)))

(define-public go-github-com-google-go-cmp
  (package
    (name "go-github-com-google-go-cmp")
    (version "0.5.6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/google/go-cmp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0lrb0pacv5iy3m6fn1qb3nv7zwimfhpzqq8f6hwpwx88cx3g6p1s"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/google/go-cmp"))
    (propagated-inputs `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)))
    (home-page "https://github.com/google/go-cmp")
    (synopsis "Package for equality of Go values")
    (description
      "This package is intended to be a more powerful and safer alternative to
@code{reflect.DeepEqual} for comparing whether two values are semantically equal.")
    (license license:bsd-3)))

(define-public go-google-golang-org-protobuf
  (package
    (name "go-google-golang-org-protobuf")
    (version "1.27.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://go.googlesource.com/protobuf")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0aszb7cv8fq1m8akgd4kjyg5q7g5z9fdqnry6057ygq9r8r2yif2"))))
    (build-system go-build-system)
    (arguments '(#:import-path "google.golang.org/protobuf"))
    (propagated-inputs
      `(("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
    (home-page "https://google.golang.org/protobuf")
    (synopsis "Go support for Protocol Buffers")
    (description
      "This project hosts the Go implementation for
@url{https://developers.google.com/protocol-buffers,protocol buffers}, which is a
language-neutral, platform-neutral, extensible mechanism for serializing
structured data.  The protocol buffer language is a language for specifying the
schema for structured data.  This schema is compiled into language specific
bindings.  This project provides both a tool to generate Go code for the
protocol buffer language, and also the runtime implementation to handle
serialization of messages in Go.  See the
@url{https://developers.google.com/protocol-buffers/docs/overview,protocol buffer developer guide}
for more information about protocol buffers themselves.")
    (license license:bsd-3)))

(define-public go-gotest-tools
  (package
    (name "go-gotest-tools")
    (version "1.4.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gotestyourself/gotest.tools")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ykgj2rpi3yha9rd23abx2885rm72jarhpgw1hkasmrb9i7j6nqk"))))
    (build-system go-build-system)
    (arguments '(#:import-path "gotest.tools"))
    (home-page "https://gotest.tools")
    (synopsis "gotest.tools")
    (description
      "Package gotesttools is a collection of packages to augment `testing` and
support common patterns.
")
    (license license:asl2.0)))

(define-public go-rsc-io-qr
  (package
    (name "go-rsc-io-qr")
    (version "0.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/rsc/qr")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "04yx493g0fqp8i59zjxnl4k3s0cl0kr5m8xh0ph8m10r1hkw0xr3"))))
    (build-system go-build-system)
    (arguments '(#:import-path "rsc.io/qr"))
    (home-page "https://rsc.io/qr")
    (synopsis #f)
    (description "Package qr encodes QR codes.
")
    (license license:bsd-3)))

(define-public go-github-com-gopasspw-gopass
  (package
    (name "go-github-com-gopasspw-gopass")
    (version "1.12.8")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gopasspw/gopass")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0f3nnhipx2p8w04rxva0pcf7g1nhr4f5bz5dbvr2m76lkiaz5q3v"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gopasspw/gopass"))
    (propagated-inputs
      `(("go-rsc-io-qr" ,go-rsc-io-qr)
        ("go-gotest-tools" ,go-gotest-tools)
        ("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
        ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
        ("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-google-golang-org-appengine" ,go-google-golang-org-appengine)
        ("go-golang-org-x-term" ,go-golang-org-x-term)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-xrash-smetrics" ,go-github-com-xrash-smetrics)
        ("go-github-com-urfave-cli-v2" ,go-github-com-urfave-cli-v2)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-skip2-go-qrcode" ,go-github-com-skip2-go-qrcode)
        ("go-github-com-schollz-closestmatch"
         ,go-github-com-schollz-closestmatch)
        ("go-github-com-rogpeppe-go-internal"
         ,go-github-com-rogpeppe-go-internal)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-nbutton23-zxcvbn-go"
         ,go-github-com-nbutton23-zxcvbn-go)
        ("go-github-com-muesli-crunchy" ,go-github-com-muesli-crunchy)
        ("go-github-com-mitchellh-go-ps" ,go-github-com-mitchellh-go-ps)
        ("go-github-com-mitchellh-go-homedir"
         ,go-github-com-mitchellh-go-homedir)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-martinhoefling-goxkcdpwgen"
         ,go-github-com-martinhoefling-goxkcdpwgen)
        ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
        ("go-github-com-kballard-go-shellquote"
         ,go-github-com-kballard-go-shellquote)
        ("go-github-com-jsimonetti-pwscheme"
         ,go-github-com-jsimonetti-pwscheme)
        ("go-github-com-hashicorp-golang-lru"
         ,go-github-com-hashicorp-golang-lru)
        ("go-github-com-hashicorp-go-multierror"
         ,go-github-com-hashicorp-go-multierror)
        ("go-github-com-hashicorp-errwrap" ,go-github-com-hashicorp-errwrap)
        ("go-github-com-gopasspw-pinentry" ,go-github-com-gopasspw-pinentry)
        ("go-github-com-google-go-querystring"
         ,go-github-com-google-go-querystring)
        ("go-github-com-google-go-github-v33"
         ,go-github-com-google-go-github-v33)
        ("go-github-com-google-go-github" ,go-github-com-google-go-github)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-gokyle-twofactor" ,go-github-com-gokyle-twofactor)
        ("go-github-com-godbus-dbus" ,go-github-com-godbus-dbus)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-dustin-go-humanize" ,go-github-com-dustin-go-humanize)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
        ("go-github-com-cpuguy83-go-md2man-v2"
         ,go-github-com-cpuguy83-go-md2man-v2)
        ("go-github-com-chzyer-readline" ,go-github-com-chzyer-readline)
        ("go-github-com-cenkalti-backoff" ,go-github-com-cenkalti-backoff)
        ("go-github-com-caspr-io-yamlpath" ,go-github-com-caspr-io-yamlpath)
        ("go-github-com-blang-semver-v4" ,go-github-com-blang-semver-v4)
        ("go-github-com-atotto-clipboard" ,go-github-com-atotto-clipboard)
        ("go-filippo-io-edwards25519" ,go-filippo-io-edwards25519)
        ("go-filippo-io-age" ,go-filippo-io-age)))
    (home-page "https://github.com/gopasspw/gopass")
    (synopsis "gopass")
    (description
      "gopass is a password manager for the command line written in Go.  It supports all major operating systems (Linux, MacOS, BSD) as well as Windows.")
    (license license:expat)))
