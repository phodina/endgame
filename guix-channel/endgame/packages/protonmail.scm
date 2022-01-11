(define-module (endgame packages protonmail)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages syncthing)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

(define-public go-github-com-neelance-sourcemap
  (package
    (name "go-github-com-neelance-sourcemap")
    (version "0.0.0-20200213170602-2833bce08e4c")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/neelance/sourcemap")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "05ymjg1z9phf0wp4w058kvf13bmn4skv67chb3r04z69in8y8jih"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/neelance/sourcemap"))
    (home-page "https://github.com/neelance/sourcemap")
    (synopsis #f)
    (description #f)
    (license license:bsd-2)))

(define-public go-github-com-0xax-notificator
  (package
    (name "go-github-com-0xax-notificator")
    (version "0.0.0-20210731104411-c42e3d4a43ee")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/0xAX/notificator")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1sqmabsvp8k0pl23cabp7m1vsinvcx67y1jjb0xdnf7k07sg4p6v"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/0xAX/notificator"))
    (home-page "https://github.com/0xAX/notificator")
    (synopsis "notificator")
    (description "Desktop notification with Golang for:")
    (license license:bsd-3)))

(define-public go-github-com-masterminds-semver-v3
  (package
    (name "go-github-com-masterminds-semver-v3")
    (version "3.1.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Masterminds/semver")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0dsqa585ixz6pbff60p0pk709kp3kksh668mjwrlxgqiammxa1p8"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/Masterminds/semver/v3"))
    (home-page "https://github.com/Masterminds/semver")
    (synopsis "SemVer")
    (description
      "Package semver provides the ability to work with Semantic Versions (@url{http://semver.org,http://semver.org}) in Go.
")
    (license license:expat)))

(define-public go-github-com-protonmail-go-autostart
  (package
    (name "go-github-com-protonmail-go-autostart")
    (version "0.0.0-20210130080809-00ed301c8e9a")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-autostart")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0cqqvbzn32xv5lknfygrx01rx2sc6pi833k7008nlk9lsfgry06v"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/go-autostart"))
    (home-page "https://github.com/ProtonMail/go-autostart")
    (synopsis "go-autostart")
    (description
      "This package provides a Go library to run a command after login.")
    (license license:expat)))

(define-public go-github-com-protonmail-go-imap-id
  (package
    (name "go-github-com-protonmail-go-imap-id")
    (version "0.0.0-20190926060100-f94a56b9ecde")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-imap-id")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1pi87xq6nrb1kdf4za4xp8cfkpwr3p93kjrmzmnr4z0j90y26vfi"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/go-imap-id"))
    (home-page "https://github.com/ProtonMail/go-imap-id")
    (synopsis "go-imap-id")
    (description
      "Implements the IMAP ID Extension, defined in @url{https://rfc-editor.org/rfc/rfc2971.html,RFC 2971}.
")
    (license license:expat)))

(define-public go-github-com-antlr-antlr4
  (package
    (name "go-github-com-antlr-antlr4")
    (version "0.0.0-20211012092035-3421a9699c40")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/antlr/antlr4")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1p4f2hfx5dgpr0wg4wdy3jkpg46yl96fbgqp879jzbfgy2wvgqdf"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/antlr/antlr4"))
    (home-page "https://github.com/antlr/antlr4")
    (synopsis "ANTLR v4")
    (description
      "@strong{ANTLR} (ANother Tool for Language Recognition) is a powerful parser generator for reading, processing, executing, or translating structured text or binary files.  It's widely used to build languages, tools, and frameworks.  From a grammar, ANTLR generates a parser that can build parse trees and also generates a listener interface (or visitor) that makes it easy to respond to the recognition of phrases of interest.")
    (license #f)))
; TODO: license

(define-public go-github-com-protonmail-go-rfc5322
  (package
    (name "go-github-com-protonmail-go-rfc5322")
    (version "0.8.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/go-rfc5322")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ak8hm1kfami8sljrdzzwlg88ibdyy7pzr94h93xy6swhfn8s6ww"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/go-rfc5322"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
        ("go-github-com-antlr-antlr4" ,go-github-com-antlr-antlr4)))
    (home-page "https://github.com/ProtonMail/go-rfc5322")
    (synopsis "Outline")
    (description
      "The @code{rfc5322} package implements a parser for @code{address-list} and @code{date-time} strings, as defined in RFC5322.
It also supports encoded words (RFC2047) and has international tokens (RFC6532).")
    (license license:expat)))

(define-public go-github-com-cronokirby-saferith
  (package
    (name "go-github-com-cronokirby-saferith")
    (version "0.32.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cronokirby/saferith")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "13f9wwgimqgi9gb2n8xhs8xl9rygr9r909bcrhl1ga7dmazyy990"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/cronokirby/saferith"))
    (home-page "https://github.com/cronokirby/saferith")
    (synopsis "saferith")
    (description
      "The purpose of this package is to provide a version of arbitrary sized
arithmetic, in a safer (i.e.  constant-time) way, for cryptography.")
    (license license:expat)))

(define-public go-github-com-protonmail-go-srp
  (package
    (name "go-github-com-protonmail-go-srp")
    (version "0.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/go-srp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0cdc3xxwnp7c1fvi59jf3x52m4y7zgh5l7zjp4gcvfpml8l7iln7"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/go-srp"))
    (propagated-inputs
      `(("go-github-com-protonmail-go-mobile"
         ,go-github-com-protonmail-go-mobile)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-protonmail-bcrypt" ,go-github-com-protonmail-bcrypt)
        ("go-github-com-cronokirby-saferith"
         ,go-github-com-cronokirby-saferith)
        ("go-github-com-protonmail-go-crypto"
         ,go-github-com-protonmail-go-crypto)))
    (home-page "https://github.com/ProtonMail/go-srp")
    (synopsis "go-srp")
    (description
      "Golang implementation of the @url{https://datatracker.ietf.org/doc/html/rfc5054,SRP protocol}, used for authentication of ProtonMail users.")
    (license license:expat)))

(define-public go-github-com-protonmail-go-vcard
  (package
    (name "go-github-com-protonmail-go-vcard")
    (version "0.0.0-20180326232728-33aaa0a0c8a5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/go-vcard")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "19cify6lxd2yirqc92yfgzvn5qlc8a01a2kxjdg83jv0lx6ps26q"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/go-vcard"))
    (home-page "https://github.com/ProtonMail/go-vcard")
    (synopsis "go-vcard")
    (description
      "Package vcard implements the vCard format, defined in @url{https://rfc-editor.org/rfc/rfc6350.html,RFC 6350}.
")
    (license license:expat)))

(define-public go-github-com-protonmail-go-crypto
  (package
    (name "go-github-com-protonmail-go-crypto")
    (version "0.0.0-20210920160938-87db9fbc61c7")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/go-crypto")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "158i56qrmsf1birzaawahizn6cchzi59n0h6cd3dh2h7cpzpqmaj"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/go-crypto"))
    (propagated-inputs `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)))
    (home-page "https://github.com/ProtonMail/go-crypto")
    (synopsis #f)
    (description
      "This module is backwards compatible with x/crypto/openpgp,
so you can simply replace all imports of @code{golang.org/x/crypto/openpgp} with
@code{github.com/ProtonMail/go-crypto/openpgp}.")
    (license license:bsd-3)))

(define-public go-github-com-protonmail-go-mime
  (package
    (name "go-github-com-protonmail-go-mime")
    (version "0.0.0-20190923161245-9b5a4261663a")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/go-mime")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "03y40nr7796ghmim0qhzysnrgl7s6y74xs2hqgzrxjz62frcd7s0"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/go-mime"))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)))
    (home-page "https://github.com/ProtonMail/go-mime")
    (synopsis "Go Mime Wrapper Library")
    (description
      "Run @code{go get -u github.com/ProtonMail/go-mime}, or manually @code{git clone} the
repository into @code{$GOPATH/src/github.com/ProtonMail/go-mime}.")
    (license license:expat)))

(define-public go-dmitri-shuralyov-com-gpu-mtl
  (package
    (name "go-dmitri-shuralyov-com-gpu-mtl")
    (version "0.0.0-20201218220906-28db891af037")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://dmitri.shuralyov.com/gpu/mtl")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0g6anij6hfiniljhki3vlwawxjyxffzpvcvc6iswmjjcfwjq4ncv"))))
    (build-system go-build-system)
    (arguments '(#:import-path "dmitri.shuralyov.com/gpu/mtl"))
    (home-page "https://dmitri.shuralyov.com/gpu/mtl")
    (synopsis #f)
    (description
      "Package mtl provides access to Apple's Metal API (@url{https://developer.apple.com/documentation/metal,https://developer.apple.com/documentation/metal}).
")
    (license license:bsd-3)))

(define-public go-github-com-burntsushi-xgb
  (package
    (name "go-github-com-burntsushi-xgb")
    (version "0.0.0-20210121224620-deaf085860bc")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/BurntSushi/xgb")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0rndd37p14i4j0n8p19l7gnk8m95kdbvx7zd0cp0gjaqx9c2xs84"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/BurntSushi/xgb"))
    (home-page "https://github.com/BurntSushi/xgb")
    (synopsis #f)
    (description
      "Package XGB provides the X Go Binding, which is a low-level API to communicate
with the core X protocol and many of the X extensions.
")
    (license #f)))
; TODO: license

(define-public go-github-com-go-gl-glfw-v3-3-glfw
  (package
    (name "go-github-com-go-gl-glfw-v3-3-glfw")
    (version "0.0.0-20210727001814-0db043d8d5be")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-gl/glfw")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0cbifrp5i5926fx8dnfcpkkxgqw16pg7jaj3qnz9sqg7a94561bz"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "github.com/go-gl/glfw/v3.3/glfw"
        #:unpack-path
        "github.com/go-gl/glfw"))
    (home-page "https://github.com/go-gl/glfw")
    (synopsis #f)
    (description #f)
    (license license:bsd-3)))

(define-public go-github-com-vividcortex-gohistogram
  (package
    (name "go-github-com-vividcortex-gohistogram")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/VividCortex/gohistogram")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1ykpvrkri3mzc0z77kdva93ylh0bqg7jq3i024r3iv0i6bwx3rnf"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/VividCortex/gohistogram"))
    (home-page "https://github.com/VividCortex/gohistogram")
    (synopsis "gohistogram - Histograms in Go")
    (description
      "Package gohistogram contains implementations of weighted and exponential histograms.
")
    (license license:expat)))

(define-public go-github-com-afex-hystrix-go
  (package
    (name "go-github-com-afex-hystrix-go")
    (version "0.0.0-20180502004556-fa1af6a1f4f5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/afex/hystrix-go")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0zlj0330j816flvwvis4d4vv1gigpxlghph7awbc9jb7ggf2qssn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/afex/hystrix-go"))
    (home-page "https://github.com/afex/hystrix-go")
    (synopsis "hystrix-go")
    (description
      "@url{https://github.com/Netflix/Hystrix,Hystrix} is a great project from Netflix.")
    (license license:expat)))

(define-public go-github-com-aws-aws-sdk-go
  (package
    (name "go-github-com-aws-aws-sdk-go")
    (version "1.41.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/aws/aws-sdk-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0adjjhjq510aaq8px4xaa7bcvw1hq86hlfwrj0zq5ifxb825dqj3"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/aws/aws-sdk-go"))
    (propagated-inputs
      `(("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-jmespath-go-jmespath"
         ,go-github-com-jmespath-go-jmespath)))
    (home-page "https://github.com/aws/aws-sdk-go")
    (synopsis "AWS SDK for Go")
    (description
      "Package sdk is the official AWS SDK for the Go programming language.
")
    (license license:asl2.0)))

(define-public go-github-com-aws-aws-sdk-go-v2
  (package
    (name "go-github-com-aws-aws-sdk-go-v2")
    (version "1.9.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/aws/aws-sdk-go-v2")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "143mwngw7nc9px0lw7n6xnl6b8zcqzavkx7flmb1gh8dhfy9drr0"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/aws/aws-sdk-go-v2"))
    (propagated-inputs
      `(("go-github-com-jmespath-go-jmespath"
         ,go-github-com-jmespath-go-jmespath)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)))
    (home-page "https://github.com/aws/aws-sdk-go-v2")
    (synopsis "AWS SDK for Go v2")
    (description
      "Package sdk is the official AWS SDK v2 for the Go programming language.
")
    (license license:asl2.0)))

(define-public go-github-com-casbin-casbin-v2
  (package
    (name "go-github-com-casbin-casbin-v2")
    (version "2.37.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/casbin/casbin")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zszf92n38ym6zgkrl23w4np65pg9cxlymj4lg4dhah48k02ax77"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/casbin/casbin/v2"))
    (propagated-inputs
      `(("go-github-com-golang-mock" ,go-github-com-golang-mock)
        ("go-github-com-knetic-govaluate" ,go-github-com-knetic-govaluate)))
    (home-page "https://github.com/casbin/casbin")
    (synopsis "Casbin")
    (description
      "@strong{News}: still worry about how to write the correct Casbin policy? @code{Casbin online editor} is coming to help! Try it at: @url{https://casbin.org/editor/,https://casbin.org/editor/}")
    (license license:asl2.0)))

(define-public go-github-com-go-kit-log
  (package
    (name "go-github-com-go-kit-log")
    (version "0.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-kit/log")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "13gbqrwvqy9j903j44x0kix5gnn34a8hl8skbdijy7arpkxpj6h3"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-kit/log"))
    (propagated-inputs
      `(("go-github-com-go-logfmt-logfmt" ,go-github-com-go-logfmt-logfmt)))
    (home-page "https://github.com/go-kit/log")
    (synopsis "package log")
    (description "Package log provides a structured logger.
")
    (license license:expat)))

(define-public go-github-com-go-zookeeper-zk
  (package
    (name "go-github-com-go-zookeeper-zk")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-zookeeper/zk")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0z7xvpww2mfgbbl6id68wggkvflfczy637vsyhjijfz86yhjkqza"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-zookeeper/zk"))
    (home-page "https://github.com/go-zookeeper/zk")
    (synopsis "Native Go Zookeeper Client Library")
    (description
      "Package zk is a native Go client library for the ZooKeeper orchestration service.
")
    (license license:bsd-3)))

(define-public go-github-com-golang-jwt-jwt-v4
  (package
    (name "go-github-com-golang-jwt-jwt-v4")
    (version "4.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang-jwt/jwt")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "020yxsrplnnm9vcd0jdaaziv6pyhvvs9y0qadzbbrqblqmj0vy4x"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang-jwt/jwt/v4"))
    (home-page "https://github.com/golang-jwt/jwt")
    (synopsis "jwt-go")
    (description
      "Package jwt is a Go implementation of JSON Web Tokens: @url{http://self-issued.info/docs/draft-jones-json-web-token.html,http://self-issued.info/docs/draft-jones-json-web-token.html}
")
    (license license:expat)))

(define-public go-github-com-franela-goblin
  (package
    (name "go-github-com-franela-goblin")
    (version "0.0.0-20211003143422-0a4f594942bf")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/franela/goblin")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "06mdnw8wk8mxaapfqlz86jf4qgzg6j77875bmraasf8il48ap0b5"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/franela/goblin"))
    (home-page "https://github.com/franela/goblin")
    (synopsis "Goblin")
    (description
      "This package provides a @url{http://mochajs.org/,Mocha} like BDD testing framework written in Go that requires no additional dependencies.  Requires no extensive documentation nor complicated steps to get it running.")
    (license license:expat)))

(define-public go-github-com-hudl-fargo
  (package
    (name "go-github-com-hudl-fargo")
    (version "1.4.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hudl/fargo")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "18pk1b5yybkghrjxskgssz8gzpv37k8w7gk0cldhcnffx85rqi0m"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hudl/fargo"))
    (propagated-inputs
      `(("go-gopkg-in-warnings-v0" ,go-gopkg-in-warnings-v0)
        ("go-gopkg-in-gcfg-v1" ,go-gopkg-in-gcfg-v1)
        ("go-github-com-smartystreets-goconvey"
         ,go-github-com-smartystreets-goconvey)
        ("go-github-com-op-go-logging" ,go-github-com-op-go-logging)
        ("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
        ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
        ("go-github-com-franela-goreq" ,go-github-com-franela-goreq)
        ("go-github-com-franela-goblin" ,go-github-com-franela-goblin)
        ("go-github-com-clbanning-mxj" ,go-github-com-clbanning-mxj)
        ("go-github-com-cenkalti-backoff-v4"
         ,go-github-com-cenkalti-backoff-v4)))
    (home-page "https://github.com/hudl/fargo")
    (synopsis "fargo")
    (description
      "Netflix Eureka client in golang.  Named for the show Eureka.")
    (license license:expat)))

(define-public go-github-com-influxdata-influxdb1-client
  (package
    (name "go-github-com-influxdata-influxdb1-client")
    (version "0.0.0-20200827194710-b269163b24ab")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/influxdata/influxdb1-client")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0pm1j437xk7d32px60j52qm98zgn21nmaqavjflvr44zaglrz5n9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/influxdata/influxdb1-client"))
    (home-page "https://github.com/influxdata/influxdb1-client")
    (synopsis "influxdb1-clientv2")
    (description
      "Package client implements a now-deprecated client for InfluxDB;
use github.com/influxdata/influxdb1-client/v2 instead.
")
    (license license:expat)))

(define-public go-github-com-nats-io-nats-server-v2
  (package
    (name "go-github-com-nats-io-nats-server-v2")
    (version "2.6.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nats-io/nats-server")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1yzgj1c8g1zag1vn57sssaglpsczh2nr2qjydrlgz4ik35bazspm"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nats-io/nats-server/v2"))
    (propagated-inputs
      `(("go-golang-org-x-time" ,go-golang-org-x-time)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-nats-io-nuid" ,go-github-com-nats-io-nuid)
        ("go-github-com-nats-io-nkeys" ,go-github-com-nats-io-nkeys)
        ("go-github-com-nats-io-nats-go" ,go-github-com-nats-io-nats-go)
        ("go-github-com-nats-io-jwt-v2" ,go-github-com-nats-io-jwt-v2)
        ("go-github-com-minio-highwayhash" ,go-github-com-minio-highwayhash)
        ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
    (home-page "https://github.com/nats-io/nats-server")
    (synopsis "Documentation")
    (description
      "@url{https://nats.io,NATS} is a simple, secure and performant communications system for digital systems, services and devices.  NATS is part of the Cloud Native Computing Foundation (@url{https://cncf.io,CNCF}).  NATS has over @url{https://nats.io/download/,40 client language implementations}, and its server can run on-premise, in the cloud, at the edge, and even on a Raspberry Pi.  NATS can secure and simplify design and operation of modern distributed systems.")
    (license license:asl2.0)))

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

(define-public go-github-com-shopify-toxiproxy-v2
  (package
    (name "go-github-com-shopify-toxiproxy-v2")
    (version "2.1.7")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Shopify/toxiproxy")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1gmb53vr7224404kafi07h5s6lczsw0j8yxjlmq1gh4fvks8bx09"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/Shopify/toxiproxy/v2"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-shurcool-sanitized-anchor-name"
         ,go-github-com-shurcool-sanitized-anchor-name)
        ("go-github-com-russross-blackfriday-v2"
         ,go-github-com-russross-blackfriday-v2)
        ("go-github-com-cpuguy83-go-md2man-v2"
         ,go-github-com-cpuguy83-go-md2man-v2)
        ("go-gopkg-in-tomb-v1" ,go-gopkg-in-tomb-v1)
        ("go-golang-org-x-term" ,go-golang-org-x-term)
        ("go-github-com-urfave-cli-v2" ,go-github-com-urfave-cli-v2)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
        ("go-github-com-gorilla-mux" ,go-github-com-gorilla-mux)))
    (home-page "https://github.com/Shopify/toxiproxy")
    (synopsis "Toxiproxy")
    (description
      "Toxiproxy is a framework for simulating network conditions.  It's made
specifically to work in testing, CI and development environments, supporting
deterministic tampering with connections, but with support for randomized chaos
and customization.  We've been
successfully using it in all development and test environments at Shopify since
October, 2014.  See our @url{https://shopifyengineering.myshopify.com/blogs/engineering/building-and-testing-resilient-ruby-on-rails-applications,blog post} on resiliency for more information.")
    (license license:expat)))

(define-public go-github-com-fortytw2-leaktest
  (package
    (name "go-github-com-fortytw2-leaktest")
    (version "1.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/fortytw2/leaktest")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0487zghyxqzk6zdbhd2j074pcc2l15l4sfg5clrjqwfbql7519wx"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/fortytw2/leaktest"))
    (home-page "https://github.com/fortytw2/leaktest")
    (synopsis "Leaktest")
    (description
      "Package leaktest provides tools to detect leaked goroutines in tests.
To use it, call \"defer leaktest.Check(t)()\" at the beginning of each
test that may use goroutines.
copied out of the cockroachdb source tree with slight modifications to be
more re-useable
")
    (license license:bsd-3)))

(define-public go-github-com-gorilla-sessions
  (package
    (name "go-github-com-gorilla-sessions")
    (version "1.2.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gorilla/sessions")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zjw2s37yggk9231db0vmgs67z8m3am8i8l4gpgz6fvlbv52baxp"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gorilla/sessions"))
    (propagated-inputs
      `(("go-github-com-gorilla-securecookie"
         ,go-github-com-gorilla-securecookie)))
    (home-page "https://github.com/gorilla/sessions")
    (synopsis "sessions")
    (description
      "Package sessions provides cookie and filesystem sessions and
infrastructure for custom session backends.
")
    (license license:bsd-3)))

(define-public go-github-com-jcmturner-aescts-v2
  (package
    (name "go-github-com-jcmturner-aescts-v2")
    (version "2.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jcmturner/aescts")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0yrdiisdhcqfs8jpicc30dfmbqzxhkmbayn902xrgwkndky8w7l1"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jcmturner/aescts/v2"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
    (home-page "https://github.com/jcmturner/aescts")
    (synopsis #f)
    (description
      "Package aescts provides AES CBC CipherText Stealing encryption and decryption methods
")
    (license license:asl2.0)))

(define-public go-github-com-jcmturner-dnsutils-v2
  (package
    (name "go-github-com-jcmturner-dnsutils-v2")
    (version "2.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jcmturner/dnsutils")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "116zbgvfj88vv93fnapmmgyd5g8kzy774cdyzsnnzyzng92j61c9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jcmturner/dnsutils/v2"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
    (home-page "https://github.com/jcmturner/dnsutils")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-jcmturner-gofork
  (package
    (name "go-github-com-jcmturner-gofork")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jcmturner/gofork")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0xzsnjqv3d59w9pgqzf6550wdwaqnac7zcdgqfd25w65yhcffzhr"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jcmturner/gofork"))
    (home-page "https://github.com/jcmturner/gofork")
    (synopsis "GoFork")
    (description
      "This repository contains modified Go standard library packages for use as work arounds until issues are addressed in the official distribution.")
    (license license:bsd-3)))

(define-public go-github-com-jcmturner-goidentity-v6
  (package
    (name "go-github-com-jcmturner-goidentity-v6")
    (version "6.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jcmturner/goidentity")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "064ysvxvrvij843s7qj1nkzl5qc6j1qbrsb3s0zmwd1sa7vq8q1n"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jcmturner/goidentity/v6"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)))
    (home-page "https://github.com/jcmturner/goidentity")
    (synopsis "goidentity")
    (description "Please import as below")
    (license license:asl2.0)))

(define-public go-github-com-jcmturner-rpc-v2
  (package
    (name "go-github-com-jcmturner-rpc-v2")
    (version "2.0.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jcmturner/rpc")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1nm4j2nwcszghldw39rwdx2hr56i1lybfpv33y4gd67w6qcqbpsi"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jcmturner/rpc/v2"))
    (propagated-inputs
      `(("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
    (home-page "https://github.com/jcmturner/rpc")
    (synopsis "RPC")
    (description
      "This project relates to @url{http://pubs.opengroup.org/onlinepubs/9629399/,CDE 1.1: Remote Procedure Call}")
    (license license:asl2.0)))

(define-public go-github-com-jcmturner-gokrb5-v8
  (package
    (name "go-github-com-jcmturner-gokrb5-v8")
    (version "8.4.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jcmturner/gokrb5")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0w9d1pa3r6qmdblk25bghf78ncs03l15l1sxnh4n536c356rzq4b"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jcmturner/gokrb5/v8"))
    (propagated-inputs
      `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-jcmturner-rpc-v2" ,go-github-com-jcmturner-rpc-v2)
        ("go-github-com-jcmturner-goidentity-v6"
         ,go-github-com-jcmturner-goidentity-v6)
        ("go-github-com-jcmturner-gofork" ,go-github-com-jcmturner-gofork)
        ("go-github-com-jcmturner-dnsutils-v2"
         ,go-github-com-jcmturner-dnsutils-v2)
        ("go-github-com-jcmturner-aescts-v2"
         ,go-github-com-jcmturner-aescts-v2)
        ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)
        ("go-github-com-gorilla-sessions" ,go-github-com-gorilla-sessions)))
    (home-page "https://github.com/jcmturner/gokrb5")
    (synopsis "gokrb5")
    (description
      "Package gokrb5 provides a Kerberos 5 implementation for Go.
")
    (license license:asl2.0)))

(define-public go-github-com-xdg-go-pbkdf2
  (package
    (name "go-github-com-xdg-go-pbkdf2")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/xdg-go/pbkdf2")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1nipijy5xkdnfyhkp5ryrjzm14si1i2v2xyfmblf84binwkbr8jh"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/xdg-go/pbkdf2"))
    (home-page "https://github.com/xdg-go/pbkdf2")
    (synopsis "pbkdf2 â\x80\x93Â\xa0Go implementation of PBKDF2")
    (description
      "Package pbkdf2 implements password-based key derivation using the PBKDF2
algorithm described in @url{https://rfc-editor.org/rfc/rfc2898.html,RFC 2898} and @url{https://rfc-editor.org/rfc/rfc8018.html,RFC 8018}.
")
    (license license:asl2.0)))

(define-public go-github-com-xdg-go-stringprep
  (package
    (name "go-github-com-xdg-go-stringprep")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/xdg-go/stringprep")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1df0l5n3c520y9filzz83j42wa5c056jcygmfwhjyf1pq8f6jkv9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/xdg-go/stringprep"))
    (propagated-inputs `(("go-golang-org-x-text" ,go-golang-org-x-text)))
    (home-page "https://github.com/xdg-go/stringprep")
    (synopsis
      "stringprep â\x80\x93Â\xa0Go implementation of RFC-3454 stringprep and RFC-4013 SASLprep")
    (description
      "Package stringprep provides data tables and algorithms for RFC-3454,
including errata (as of 2018-02).  It also provides a profile for
SASLprep as defined in RFC-4013.
")
    (license license:asl2.0)))

(define-public go-github-com-xdg-go-scram
  (package
    (name "go-github-com-xdg-go-scram")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/xdg-go/scram")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1jyv4qgc1dgh3v96pazmgljpp9ij25k8hwn0v4fck18g16i0nccm"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/xdg-go/scram"))
    (propagated-inputs
      `(("go-github-com-xdg-go-stringprep" ,go-github-com-xdg-go-stringprep)
        ("go-github-com-xdg-go-pbkdf2" ,go-github-com-xdg-go-pbkdf2)))
    (home-page "https://github.com/xdg-go/scram")
    (synopsis "scram â\x80\x93Â\xa0Go implementation of RFC-5802")
    (description
      "Package scram provides client and server implementations of the Salted
Challenge Response Authentication Mechanism (SCRAM) described in RFC-5802
and RFC-7677.
")
    (license license:asl2.0)))

(define-public go-github-com-shopify-sarama
  (package
    (name "go-github-com-shopify-sarama")
    (version "1.30.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Shopify/sarama")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ws6xsfa6ywx3sacdskbjdwfw2s87h5szpkw5n7azsxv1xlalmcg"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/Shopify/sarama"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
        ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
        ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-xdg-go-scram" ,go-github-com-xdg-go-scram)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-rcrowley-go-metrics"
         ,go-github-com-rcrowley-go-metrics)
        ("go-github-com-pierrec-lz4" ,go-github-com-pierrec-lz4)
        ("go-github-com-kr-text" ,go-github-com-kr-text)
        ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
        ("go-github-com-jcmturner-gokrb5-v8"
         ,go-github-com-jcmturner-gokrb5-v8)
        ("go-github-com-jcmturner-gofork" ,go-github-com-jcmturner-gofork)
        ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
        ("go-github-com-frankban-quicktest" ,go-github-com-frankban-quicktest)
        ("go-github-com-fortytw2-leaktest" ,go-github-com-fortytw2-leaktest)
        ("go-github-com-eapache-queue" ,go-github-com-eapache-queue)
        ("go-github-com-eapache-go-xerial-snappy"
         ,go-github-com-eapache-go-xerial-snappy)
        ("go-github-com-eapache-go-resiliency"
         ,go-github-com-eapache-go-resiliency)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
        ("go-github-com-shopify-toxiproxy-v2"
         ,go-github-com-shopify-toxiproxy-v2)))
    (home-page "https://github.com/Shopify/sarama")
    (synopsis "sarama")
    (description
      "Package sarama is a pure Go client library for dealing with Apache Kafka (versions 0.8 and later).  It includes a high-level
API for easily producing and consuming messages, and a low-level API for controlling bytes on the wire when the high-level
API is insufficient.  Usage examples for the high-level APIs are provided inline with their full documentation.
")
    (license license:expat)))

(define-public go-github-com-shopify-toxiproxy
  (package
    (name "go-github-com-shopify-toxiproxy")
    (version "1.2.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Shopify/toxiproxy")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "15r0dyfs1981z5nxf8hznlsip8d5gb3w886rnw7d1b6rg42icwq4"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/Shopify/toxiproxy"))
    (home-page "https://github.com/Shopify/toxiproxy")
    (synopsis "Toxiproxy")
    (description
      "Toxiproxy is a framework for simulating network conditions.  It's made
specifically to work in testing, CI and development environments, supporting
deterministic tampering with connections, but with support for randomized chaos
and customization.  We've been
successfully using it in all development and test environments at Shopify since
October, 2014.  See our @url{https://shopifyengineering.myshopify.com/blogs/engineering/building-and-testing-resilient-ruby-on-rails-applications,blog post} on resiliency for more information.")
    (license license:expat)))

(define-public go-github-com-eapache-go-resiliency
  (package
    (name "go-github-com-eapache-go-resiliency")
    (version "1.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/eapache/go-resiliency")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "01rskda1hdmrmf9wz2zn33zisavkkrgd8ycj9zvlz19v5rgjrsqy"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/eapache/go-resiliency"))
    (home-page "https://github.com/eapache/go-resiliency")
    (synopsis "go-resiliency")
    (description
      "Resiliency patterns for golang.
Based in part on @url{https://github.com/Netflix/Hystrix,Hystrix},
@url{https://github.com/Shopify/semian,Semian}, and others.")
    (license license:expat)))

(define-public go-github-com-eapache-go-xerial-snappy
  (package
    (name "go-github-com-eapache-go-xerial-snappy")
    (version "0.0.0-20180814174437-776d5712da21")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/eapache/go-xerial-snappy")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ncc41dv7xwb1znyzmzh7cvs6j5fzz0f1n8h1v3grl9ma6s1si9d"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/eapache/go-xerial-snappy"))
    (home-page "https://github.com/eapache/go-xerial-snappy")
    (synopsis "go-xerial-snappy")
    (description "Xerial-compatible Snappy framing support for golang.")
    (license license:expat)))

(define-public go-github-com-eapache-queue
  (package
    (name "go-github-com-eapache-queue")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/eapache/queue")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "07dp54n94gn3gsvdcki56yqh7py7wqqigxbamhxwgbr05n61fqyg"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/eapache/queue"))
    (home-page "https://github.com/eapache/queue")
    (synopsis "Queue")
    (description
      "Package queue provides a fast, ring-buffer queue based on the version suggested by Dariusz GÃ³recki.
Using this instead of other, simpler, queue implementations (slice+append or linked list) provides
substantial memory and time benefits, and fewer GC pauses.
")
    (license license:expat)))

(define-public go-github-com-pierrec-lz4
  (package
    (name "go-github-com-pierrec-lz4")
    (version "2.6.1+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/pierrec/lz4")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0vfn01gd3hcpbj6gb4ig3pw6bv0g4j5780awr0fv4kf9id8gjvyy"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/pierrec/lz4"))
    (home-page "https://github.com/pierrec/lz4")
    (synopsis "lz4 : LZ4 compression in pure Go")
    (description
      "Package lz4 implements reading and writing lz4 compressed data (a frame),
as specified in @url{http://fastcompression.blogspot.fr/2013/04/lz4-streaming-format-final.html,http://fastcompression.blogspot.fr/2013/04/lz4-streaming-format-final.html}.
")
    (license license:bsd-3)))

(define-public go-github-com-openzipkin-zipkin-go
  (package
    (name "go-github-com-openzipkin-zipkin-go")
    (version "0.2.5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/openzipkin/zipkin-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "16khin03g3x1nmp4cizga72hg7n3bv9diy11y75nhidx360bg7fc"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/openzipkin/zipkin-go"))
    (propagated-inputs
      `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-github-com-streadway-amqp" ,go-github-com-streadway-amqp)
        ("go-github-com-rcrowley-go-metrics"
         ,go-github-com-rcrowley-go-metrics)
        ("go-github-com-pierrec-lz4" ,go-github-com-pierrec-lz4)
        ("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
        ("go-github-com-onsi-ginkgo" ,go-github-com-onsi-ginkgo)
        ("go-github-com-gorilla-mux" ,go-github-com-gorilla-mux)
        ("go-github-com-gorilla-context" ,go-github-com-gorilla-context)
        ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-eapache-queue" ,go-github-com-eapache-queue)
        ("go-github-com-eapache-go-xerial-snappy"
         ,go-github-com-eapache-go-xerial-snappy)
        ("go-github-com-eapache-go-resiliency"
         ,go-github-com-eapache-go-resiliency)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
        ("go-github-com-shopify-toxiproxy" ,go-github-com-shopify-toxiproxy)
        ("go-github-com-shopify-sarama" ,go-github-com-shopify-sarama)))
    (home-page "https://github.com/openzipkin/zipkin-go")
    (synopsis "Zipkin Library for Go")
    (description
      "Package zipkin implements a native Zipkin instrumentation library for Go.
")
    (license license:asl2.0)))

(define-public go-github-com-performancecopilot-speed-v4
  (package
    (name "go-github-com-performancecopilot-speed-v4")
    (version "4.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/performancecopilot/speed")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0zpf42pid3cd3sqv4gy2h51adq2zpw0pi0v3fpgxqna4iia280j0"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/performancecopilot/speed/v4"))
    (propagated-inputs
      `(("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-edsrzf-mmap-go" ,go-github-com-edsrzf-mmap-go)
        ("go-github-com-hdrhistogram-hdrhistogram-go"
         ,go-github-com-hdrhistogram-hdrhistogram-go)))
    (home-page "https://github.com/performancecopilot/speed")
    (synopsis "Install")
    (description
      "Package speed implements a golang client for the Performance Co-Pilot
instrumentation API.
")
    (license license:expat)))

(define-public go-github-com-sony-gobreaker
  (package
    (name "go-github-com-sony-gobreaker")
    (version "0.4.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/sony/gobreaker")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0iarblm3w2d0p997jsw9bkznfj0wa8d586nh37ii5gnqy41va700"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/sony/gobreaker"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
    (home-page "https://github.com/sony/gobreaker")
    (synopsis "gobreaker")
    (description
      "Package gobreaker implements the Circuit Breaker pattern.
See @url{https://msdn.microsoft.com/en-us/library/dn589784.aspx,https://msdn.microsoft.com/en-us/library/dn589784.aspx}.
")
    (license license:expat)))

(define-public go-github-com-streadway-amqp
  (package
    (name "go-github-com-streadway-amqp")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/streadway/amqp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0k740vmzkdv9il201x4mj0md73w30jqlmn1q7m1ng3dmi635qrlr"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/streadway/amqp"))
    (home-page "https://github.com/streadway/amqp")
    (synopsis "Go RabbitMQ Client Library")
    (description
      "Package amqp is an AMQP 0.9.1 client with RabbitMQ extensions
")
    (license license:bsd-2)))

(define-public go-github-com-streadway-handy
  (package
    (name "go-github-com-streadway-handy")
    (version "0.0.0-20200128134331-0f66f006fb2e")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/streadway/handy")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "03cm61ndfj6mz8kjsdb5jjka94v21fqn6nd5agnvhb7qx3fkq1y4"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/streadway/handy"))
    (home-page "https://github.com/streadway/handy")
    (synopsis "Handy Handlers")
    (description
      "Package handy organizes some useful http server handler filters or handlers for reuse.
")
    (license license:bsd-2)))

(define-public go-go-etcd-io-etcd-client-pkg-v3
  (package
    (name "go-go-etcd-io-etcd-client-pkg-v3")
    (version "3.5.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/etcd-io/etcd")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1dinf1668bkpq5lff8sr4fjd7dkxw9smm1f9zcadpdz3ci3knpzg"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "go.etcd.io/etcd/client/pkg/v3"
        #:unpack-path
        "go.etcd.io/etcd/client/pkg/v3"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-go-uber-org-zap" ,go-go-uber-org-zap)
        ("go-github-com-coreos-go-systemd-v22"
         ,go-github-com-coreos-go-systemd-v22)))
    (home-page "https://go.etcd.io/etcd/client/pkg/v3")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-grpc-ecosystem-go-grpc-prometheus
  (package
    (name "go-github-com-grpc-ecosystem-go-grpc-prometheus")
    (version "1.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/grpc-ecosystem/go-grpc-prometheus")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1lzk54h7np32b3acidg1ggbn8ppbnns0m71gcg9d1qkkdh8zrijl"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/grpc-ecosystem/go-grpc-prometheus"))
    (home-page "https://github.com/grpc-ecosystem/go-grpc-prometheus")
    (synopsis "Go gRPC Interceptors for Prometheus monitoring")
    (description
      "@url{https://prometheus.io/,Prometheus} monitoring for your @url{https://github.com/grpc/grpc-go,gRPC Go} servers and clients.")
    (license license:asl2.0)))

(define-public go-sigs-k8s-io-yaml
  (package
    (name "go-sigs-k8s-io-yaml")
    (version "1.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/kubernetes-sigs/yaml")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0qxs0ppqwqrfqs4aywyn1h28xh1qlj5ds4drmygaz1plrxj02dqn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "sigs.k8s.io/yaml"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (home-page "https://sigs.k8s.io/yaml")
    (synopsis "YAML marshaling and unmarshaling support for Go")
    (description
      "kubernetes-sigs/yaml is a permanent fork of @url{https://github.com/ghodss/yaml,ghodss/yaml}.")
    (license #f)))
; TODO license

(define-public go-go-etcd-io-etcd-client-v3
  (package
    (name "go-go-etcd-io-etcd-client-v3")
    (version "3.5.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/etcd-io/etcd")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1dinf1668bkpq5lff8sr4fjd7dkxw9smm1f9zcadpdz3ci3knpzg"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "go.etcd.io/etcd/client/v3"
        #:unpack-path
        "go.etcd.io/etcd/client/v3"))
    (propagated-inputs
      `(("go-sigs-k8s-io-yaml" ,go-sigs-k8s-io-yaml)
        ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-go-uber-org-zap" ,go-go-uber-org-zap)
        ("go-github-com-prometheus-client-golang"
         ,go-github-com-prometheus-client-golang)
        ("go-github-com-grpc-ecosystem-go-grpc-prometheus"
         ,go-github-com-grpc-ecosystem-go-grpc-prometheus)
        ("go-github-com-dustin-go-humanize"
         ,go-github-com-dustin-go-humanize)))
    (home-page "https://go.etcd.io/etcd/client/v3")
    (synopsis "etcd/clientv3")
    (description
      "Package clientv3 implements the official Go etcd client for v3.
")
    (license license:asl2.0)))

(define-public go-go-opencensus-io
  (package
    (name "go-go-opencensus-io")
    (version "0.23.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/census-instrumentation/opencensus-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0gw4f7inf8y2ik00yfb36xganiq9rl4w2d1a41bsjqsh83ajz2km"))))
    (build-system go-build-system)
    (arguments '(#:import-path "go.opencensus.io"))
    (propagated-inputs
      `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-golang-groupcache" ,go-github-com-golang-groupcache)))
    (home-page "https://go.opencensus.io")
    (synopsis "OpenCensus Libraries for Go")
    (description "Package opencensus contains Go support for OpenCensus.
")
    (license license:asl2.0)))

(define-public go-github-com-niemeyer-pretty
  (package
    (name "go-github-com-niemeyer-pretty")
    (version "0.0.0-20200227124842-a10e7caefd8e")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/niemeyer/pretty")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1jmazh4xzaa3v6g46hz60q2z7nmqs9l9cxdzmmscn3kbcs2znq4v"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/niemeyer/pretty"))
    (propagated-inputs `(("go-github-com-kr-text" ,go-github-com-kr-text)))
    (home-page "https://github.com/niemeyer/pretty")
    (synopsis #f)
    (description
      "Package pretty provides pretty-printing for Go values.  This is
useful during debugging, to avoid wrapping long output lines in
the terminal.
")
    (license license:expat)))

(define-public go-github-com-hdrhistogram-hdrhistogram-go
  (package
    (name "go-github-com-hdrhistogram-hdrhistogram-go")
    (version "1.1.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/HdrHistogram/hdrhistogram-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0l12j3dvljp868p1d2izpiq7ysll05fchvxij8zb8r160lmqv58r"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/HdrHistogram/hdrhistogram-go"))
    (propagated-inputs
      `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
        ("go-gonum-org-v1-gonum" ,go-gonum-org-v1-gonum)
        ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
        ("go-golang-org-x-exp" ,go-golang-org-x-exp)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-niemeyer-pretty" ,go-github-com-niemeyer-pretty)
        ("go-github-com-kr-text" ,go-github-com-kr-text)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (home-page "https://github.com/HdrHistogram/hdrhistogram-go")
    (synopsis "hdrhistogram-go")
    (description
      "Package hdrhistogram provides an implementation of Gil Tene's HDR Histogram
data structure.  The HDR Histogram allows for fast and accurate analysis of
the extreme ranges of data with non-normal distributions, like latency.
")
    (license license:expat)))

(define-public go-github-com-knetic-govaluate
  (package
    (name "go-github-com-knetic-govaluate")
    (version "3.0.0+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Knetic/govaluate")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1b0sy89hy5d1720i43ikqfcxr4v6p9g9c7rnbif8s6256a7c2rsq"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/Knetic/govaluate"))
    (home-page "https://github.com/Knetic/govaluate")
    (synopsis "govaluate")
    (description
      "This package provides support for evaluating arbitrary C-like artithmetic/string expressions.")
    (license license:expat)))

(define-public go-github-com-aws-smithy-go
  (package
    (name "go-github-com-aws-smithy-go")
    (version "1.8.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/aws/smithy-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1sz6bcg60k00khhs89in8vapgqzkjm26fampa79b8al887fc7qsh"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/aws/smithy-go"))
    (propagated-inputs
      `(("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
    (home-page "https://github.com/aws/smithy-go")
    (synopsis "Smithy Go")
    (description
      "Package smithy provides the core components for a Smithy SDK.
")
    (license license:asl2.0)))

(define-public go-github-com-beorn7-perks
  (package
    (name "go-github-com-beorn7-perks")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/beorn7/perks")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "17n4yygjxa6p499dj3yaqzfww2g7528165cl13haj97hlx94dgl7"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/beorn7/perks"))
    (home-page "https://github.com/beorn7/perks")
    (synopsis "Perks for Go (golang.org)")
    (description
      "Perks contains the Go package quantile that computes approximate quantiles over
an unbounded data stream within low memory and CPU bounds.")
    (license license:expat)))

(define-public go-github-com-cenkalti-backoff-v4
  (package
    (name "go-github-com-cenkalti-backoff-v4")
    (version "4.1.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cenkalti/backoff")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "08c28226q612i1pv83161y57qh16631vpc51ai9f76qfrzsy946z"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/cenkalti/backoff/v4"))
    (home-page "https://github.com/cenkalti/backoff")
    (synopsis "Exponential Backoff")
    (description
      "Package backoff implements backoff algorithms for retrying operations.
")
    (license license:expat)))

(define-public go-github-com-clbanning-mxj
  (package
    (name "go-github-com-clbanning-mxj")
    (version "1.8.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/clbanning/mxj")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "13qlrycdp63q1v8sdpv6n720b6h6jpg58r38ldg4a70iv1wg7s9g"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/clbanning/mxj"))
    (home-page "https://github.com/clbanning/mxj")
    (synopsis #f)
    (description
      "Marshal/Unmarshal XML to/from map[string]interface{} values (and JSON); extract/modify values from maps by key or key-path, including wildcards.
")
    (license #f)))
; TODO license

(define-public go-github-com-edsrzf-mmap-go
  (package
    (name "go-github-com-edsrzf-mmap-go")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/edsrzf/mmap-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ajmkk5cj6xmbngx3nhar7672i2vrkwpnbv1f26i5p4f5aydhl4k"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/edsrzf/mmap-go"))
    (home-page "https://github.com/edsrzf/mmap-go")
    (synopsis "mmap-go")
    (description
      "Package mmap allows mapping files into memory.  It tries to provide a simple, reasonably portable interface,
but doesn't go out of its way to abstract away every little platform detail.
This specifically means:
")
    (license license:bsd-3)))

(define-public go-github-com-franela-goreq
  (package
    (name "go-github-com-franela-goreq")
    (version "0.0.0-20171204163338-bcd34c9993f8")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/franela/goreq")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "055a20nc5f1blk2swiwpwqpxd3z495ms1qr6a7cbbss1w3a7a7sb"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/franela/goreq"))
    (home-page "https://github.com/franela/goreq")
    (synopsis "GoReq")
    (description "Simple and sane HTTP request library for Go language.")
    (license license:expat)))

(define-public go-github-com-golang-groupcache
  (package
    (name "go-github-com-golang-groupcache")
    (version "0.0.0-20210331224755-41bb18bfe9da")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/groupcache")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "07amgr8ji4mnq91qbsw2jlcmw6hqiwdf4kzfdrj8c4b05w4knszc"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang/groupcache"))
    (home-page "https://github.com/golang/groupcache")
    (synopsis "groupcache")
    (description
      "Package groupcache provides a data loading mechanism with caching
and de-duplication that works across a set of peer processes.
")
    (license license:asl2.0)))

(define-public go-github-com-hashicorp-go-rootcerts
  (package
    (name "go-github-com-hashicorp-go-rootcerts")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/go-rootcerts")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "06z1bxcnr0rma02b6r52m6y0q7niikqjs090vm1i8xi3scyaw1qa"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/go-rootcerts"))
    (propagated-inputs
      `(("go-github-com-mitchellh-go-homedir"
         ,go-github-com-mitchellh-go-homedir)))
    (home-page "https://github.com/hashicorp/go-rootcerts")
    (synopsis "rootcerts")
    (description
      "Package rootcerts contains functions to aid in loading CA certificates for
TLS connections.
")
    (license license:mpl2.0)))

(define-public go-github-com-armon-circbuf
  (package
    (name "go-github-com-armon-circbuf")
    (version "0.0.0-20190214190532-5111143e8da2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/armon/circbuf")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1nhzs8wza5sxqjh0920jypy9irq6cspd55g8a9vgyjjfrqb5njs0"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/armon/circbuf"))
    (home-page "https://github.com/armon/circbuf")
    (synopsis "circbuf")
    (description
      "This repository provides the @code{circbuf} package.  This provides a @code{Buffer} object
which is a circular (or ring) buffer.  It has a fixed size, but can be written
to infinitely.  Only the last @code{size} bytes are ever retained.  The buffer implements
the @code{io.Writer} interface.")
    (license license:expat)))

(define-public go-github-com-hashicorp-logutils
  (package
    (name "go-github-com-hashicorp-logutils")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/logutils")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "076wf4sh5p3f953ndqk1cc0x7jhmlqrxak9953rz79rcdw77rjvv"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/logutils"))
    (home-page "https://github.com/hashicorp/logutils")
    (synopsis "logutils")
    (description
      "Package logutils augments the standard log package with levels.
")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-mdns
  (package
    (name "go-github-com-hashicorp-mdns")
    (version "1.0.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/mdns")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1r0l8akczckyzdrp2jjhqwrn5a55nahhxdvnxzy58ad31k9ig1xr"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/mdns"))
    (propagated-inputs
      `(("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)))
    (home-page "https://github.com/hashicorp/mdns")
    (synopsis "mdns")
    (description
      "Simple mDNS client/server library in Golang.  mDNS or Multicast DNS can be
used to discover services on the local network without the use of an authoritative
DNS server.  This enables peer-to-peer discovery.  It is important to note that many
networks restrict the use of multicasting, which prevents mDNS from functioning.
Notably, multicast cannot be used in any sort of cloud, or shared infrastructure
environment.  However it works well in most office, home, or private infrastructure
environments.")
    (license license:expat)))

(define-public go-github-com-datadog-datadog-go
  (package
    (name "go-github-com-datadog-datadog-go")
    (version "4.8.2+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/DataDog/datadog-go")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "12phb1mnn6z1i227z3b27g9d3vq8nbf65hkpkryim1w6g8z0rkkx"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/DataDog/datadog-go"))
    (home-page "https://github.com/DataDog/datadog-go")
    (synopsis "Datadog Go")
    (description
      "@code{datadog-go} is a library that provides a @url{https://docs.datadoghq.com/developers/dogstatsd/?tab=go,DogStatsD} client in Golang.")
    (license license:expat)))

(define-public go-github-com-circonus-labs-circonus-gometrics
  (package
    (name "go-github-com-circonus-labs-circonus-gometrics")
    (version "2.3.1+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/circonus-labs/circonus-gometrics")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0s2wir711h0k2h8xsypgpzshccnx8jkwjfni7n32l7wd8yng9ngs"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/circonus-labs/circonus-gometrics"))
    (home-page "https://github.com/circonus-labs/circonus-gometrics")
    (synopsis "Circonus metrics tracking for Go applications")
    (description
      "Package circonusgometrics provides instrumentation for your applications in the form
of counters, gauges and histograms and allows you to publish them to
Circonus
")
    (license license:bsd-3)))

(define-public go-github-com-circonus-labs-circonusllhist
  (package
    (name "go-github-com-circonus-labs-circonusllhist")
    (version "0.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/openhistogram/circonusllhist")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "04dkhd0np0kg2rmsnghg613x93glkxhllzjh3ha8k77wdcw6mcak"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/circonus-labs/circonusllhist"))
    (home-page "https://github.com/circonus-labs/circonusllhist")
    (synopsis #f)
    (description
      "Package circllhist provides an implementation of Circonus' fixed log-linear
histogram data structure.  This allows tracking of histograms in a
composable way such that accurate error can be reasoned about.
")
    (license license:bsd-3)))

(define-public go-github-com-hashicorp-go-cleanhttp
  (package
    (name "go-github-com-hashicorp-go-cleanhttp")
    (version "0.5.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/go-cleanhttp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1i5xslizzwd966w81bz6dxjwzgml4q9bwqa186bsxd1vi8lqxl9p"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/go-cleanhttp"))
    (home-page "https://github.com/hashicorp/go-cleanhttp")
    (synopsis "cleanhttp")
    (description
      "Package cleanhttp offers convenience utilities for acquiring \"clean\"
http.Transport and http.Client structs.
")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-go-hclog
  (package
    (name "go-github-com-hashicorp-go-hclog")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/go-hclog")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1bhpqrjjfsr97wkr8dkwzxsvfvxbbmwq6z4cfpgq7zaccda76n9r"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/go-hclog"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (home-page "https://github.com/hashicorp/go-hclog")
    (synopsis "go-hclog")
    (description
      "@code{go-hclog} is a package for Go that provides a simple key/value logging
interface for use in development and production environments.")
    (license license:expat)))

(define-public go-github-com-hashicorp-go-retryablehttp
  (package
    (name "go-github-com-hashicorp-go-retryablehttp")
    (version "0.7.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/go-retryablehttp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1pq6a7qyb4yvbvbpkqw8qq2qnk3i3mfalfg61g4lnddf33wad8yl"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/go-retryablehttp"))
    (propagated-inputs
      `(("go-github-com-hashicorp-go-hclog" ,go-github-com-hashicorp-go-hclog)
        ("go-github-com-hashicorp-go-cleanhttp"
         ,go-github-com-hashicorp-go-cleanhttp)))
    (home-page "https://github.com/hashicorp/go-retryablehttp")
    (synopsis "go-retryablehttp")
    (description
      "Package retryablehttp provides a familiar HTTP client interface with
automatic retries and exponential backoff.  It is a thin wrapper over the
standard net/http client library and exposes nearly the same public API.
This makes retryablehttp very easy to drop into existing programs.
")
    (license license:mpl2.0)))

(define-public go-github-com-armon-go-metrics
  (package
    (name "go-github-com-armon-go-metrics")
    (version "0.3.9")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/armon/go-metrics")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0sbnzw7sdjcf2l6nsxynpv99m6sza1zyakl82by37sqhn60hj9is"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/armon/go-metrics"))
    (propagated-inputs
      `(("go-github-com-tv42-httpunix" ,go-github-com-tv42-httpunix)
        ("go-github-com-prometheus-common" ,go-github-com-prometheus-common)
        ("go-github-com-prometheus-client-model"
         ,go-github-com-prometheus-client-model)
        ("go-github-com-prometheus-client-golang"
         ,go-github-com-prometheus-client-golang)
        ("go-github-com-pascaldekloe-goe" ,go-github-com-pascaldekloe-goe)
        ("go-github-com-hashicorp-go-retryablehttp"
         ,go-github-com-hashicorp-go-retryablehttp)
        ("go-github-com-hashicorp-go-immutable-radix"
         ,go-github-com-hashicorp-go-immutable-radix)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-circonus-labs-circonusllhist"
         ,go-github-com-circonus-labs-circonusllhist)
        ("go-github-com-circonus-labs-circonus-gometrics"
         ,go-github-com-circonus-labs-circonus-gometrics)
        ("go-github-com-datadog-datadog-go"
         ,go-github-com-datadog-datadog-go)))
    (home-page "https://github.com/armon/go-metrics")
    (synopsis "go-metrics")
    (description
      "This library provides a @code{metrics} package which can be used to instrument code,
expose application metrics, and profile runtime performance in a flexible manner.")
    (license license:expat)))

(define-public go-github-com-google-btree
  (package
    (name "go-github-com-google-btree")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/google/btree")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0fv5577bmpf2gkzw8z271q8mn3x6fqyzqjrbzm580bqld0a1xwnl"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/google/btree"))
    (home-page "https://github.com/google/btree")
    (synopsis "BTree implementation for Go")
    (description
      "Package btree implements in-memory B-Trees of arbitrary degree.
")
    (license license:asl2.0)))

(define-public go-github-com-hashicorp-go-msgpack
  (package
    (name "go-github-com-hashicorp-go-msgpack")
    (version "1.1.5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/go-msgpack")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1waxi42kpnvb62xb027kqh830im2hqsh4si2j0an79mnjm2wzlpx"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/go-msgpack"))
    (propagated-inputs `(("go-golang-org-x-tools" ,go-golang-org-x-tools)))
    (home-page "https://github.com/hashicorp/go-msgpack")
    (synopsis "go-codec")
    (description "This repository contains the @code{go-codec} library.")
    (license license:expat)))

(define-public go-github-com-hashicorp-go-sockaddr
  (package
    (name "go-github-com-hashicorp-go-sockaddr")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/go-sockaddr")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0y106nhd3s63lj7h7k21iq0br97h0z9qjrvx028zqcsq9407k9is"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/go-sockaddr"))
    (propagated-inputs
      `(("go-github-com-ryanuber-columnize" ,go-github-com-ryanuber-columnize)
        ("go-github-com-mitchellh-go-wordwrap"
         ,go-github-com-mitchellh-go-wordwrap)
        ("go-github-com-mitchellh-cli" ,go-github-com-mitchellh-cli)
        ("go-github-com-hashicorp-errwrap" ,go-github-com-hashicorp-errwrap)))
    (home-page "https://github.com/hashicorp/go-sockaddr")
    (synopsis "go-sockaddr")
    (description
      "Package sockaddr is a Go implementation of the UNIX socket family data types and
related helper functions.
")
    (license license:mpl2.0)))

(define-public go-github-com-pascaldekloe-goe
  (package
    (name "go-github-com-pascaldekloe-goe")
    (version "0.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/pascaldekloe/goe")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1dqd3mfb4z2vmv6pg6fhgvfc53vhndk24wcl9lj1rz02n6m279fq"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/pascaldekloe/goe"))
    (home-page "https://github.com/pascaldekloe/goe")
    (synopsis "Go Enterprise")
    (description
      "Common enterprise features for the Go programming language (golang).")
    (license license:cc0)))

(define-public go-github-com-sean--seed
  (package
    (name "go-github-com-sean--seed")
    (version "0.0.0-20170313163322-e2103e2c3529")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/sean-/seed")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0glir8jxi1w7aga2jwdb63pp1h8q4whknili7xixsqzwyy716125"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/sean-/seed"))
    (home-page "https://github.com/sean-/seed")
    (synopsis "- Quickly Seed Go's Random Number Generator")
    (description
      "Boiler-plate to securely @url{https://en.wikipedia.org/wiki/Random_seed,seed} Go's
random number generator (if possible).  This library isn't anything fancy, it's
just a canonical way of seeding Go's random number generator.  Cribbed from
@url{https://github.com/hashicorp/nomad/commit/f89a993ec6b91636a3384dd568898245fbc273a1,(code Nomad)}
before it was moved into
@url{https://github.com/hashicorp/consul/commit/d695bcaae6e31ee307c11fdf55bb0bf46ea9fcf4,(code Consul)}
and made into a helper function, and now further modularized to be a super
lightweight and reusable library.")
    (license #f)))
; TODO license

(define-public go-github-com-hashicorp-memberlist
  (package
    (name "go-github-com-hashicorp-memberlist")
    (version "0.2.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/memberlist")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1kd2pzphdkpw3fvv1yd6kj9492nwnjcbmznhmw6fm9yqqrix9n78"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/memberlist"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-sean--seed" ,go-github-com-sean--seed)
        ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
        ("go-github-com-pascaldekloe-goe" ,go-github-com-pascaldekloe-goe)
        ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
        ("go-github-com-hashicorp-go-sockaddr"
         ,go-github-com-hashicorp-go-sockaddr)
        ("go-github-com-hashicorp-go-multierror"
         ,go-github-com-hashicorp-go-multierror)
        ("go-github-com-hashicorp-go-msgpack"
         ,go-github-com-hashicorp-go-msgpack)
        ("go-github-com-hashicorp-go-immutable-radix"
         ,go-github-com-hashicorp-go-immutable-radix)
        ("go-github-com-google-btree" ,go-github-com-google-btree)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
        ("go-github-com-armon-go-metrics" ,go-github-com-armon-go-metrics)))
    (home-page "https://github.com/hashicorp/memberlist")
    (synopsis "memberlist")
    (description
      "memberlist is a library that manages cluster
membership and member failure detection using a gossip based protocol.
")
    (license license:mpl2.0)))

(define-public go-github-com-armon-go-radix
  (package
    (name "go-github-com-armon-go-radix")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/armon/go-radix")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1m1k0jz9gjfrk4m7hjm7p03qmviamfgxwm2ghakqxw3hdds8v503"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/armon/go-radix"))
    (home-page "https://github.com/armon/go-radix")
    (synopsis "go-radix")
    (description
      "This package provides the @code{radix} package that implements a @url{http://en.wikipedia.org/wiki/Radix_tree,radix tree}.
The package only provides a single @code{Tree} implementation, optimized for sparse nodes.")
    (license license:expat)))

(define-public go-github-com-bgentry-speakeasy
  (package
    (name "go-github-com-bgentry-speakeasy")
    (version "0.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/bgentry/speakeasy")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "02dfrj0wyphd3db9zn2mixqxwiz1ivnyc5xc7gkz58l5l27nzp8s"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/bgentry/speakeasy"))
    (home-page "https://github.com/bgentry/speakeasy")
    (synopsis "Speakeasy")
    (description
      "This package provides cross-platform Go (#golang) helpers for taking user input
from the terminal while not echoing the input back (similar to @code{getpasswd}).  The
package uses syscalls to avoid any dependence on cgo, and is therefore
compatible with cross-compiling.")
    (license license:expat)))

(define-public go-github-com-mitchellh-cli
  (package
    (name "go-github-com-mitchellh-cli")
    (version "1.1.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/mitchellh/cli")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1nb6452rkd7xrfm7pn8ljnwka26db5nac0l1l4zw4zz3h1mihs50"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/mitchellh/cli"))
    (propagated-inputs
      `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-posener-complete" ,go-github-com-posener-complete)
        ("go-github-com-mitchellh-copystructure"
         ,go-github-com-mitchellh-copystructure)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
        ("go-github-com-huandu-xstrings" ,go-github-com-huandu-xstrings)
        ("go-github-com-hashicorp-go-multierror"
         ,go-github-com-hashicorp-go-multierror)
        ("go-github-com-google-uuid" ,go-github-com-google-uuid)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-bgentry-speakeasy" ,go-github-com-bgentry-speakeasy)
        ("go-github-com-armon-go-radix" ,go-github-com-armon-go-radix)
        ("go-github-com-masterminds-sprig" ,go-github-com-masterminds-sprig)
        ("go-github-com-masterminds-semver" ,go-github-com-masterminds-semver)
        ("go-github-com-masterminds-goutils"
         ,go-github-com-masterminds-goutils)))
    (home-page "https://github.com/mitchellh/cli")
    (synopsis "Go CLI Library")
    (description
      "cli is a library for implementing powerful command-line interfaces in Go.
cli is the library that powers the CLI for
@url{https://github.com/mitchellh/packer,Packer},
@url{https://github.com/hashicorp/serf,Serf},
@url{https://github.com/hashicorp/consul,Consul},
@url{https://github.com/hashicorp/vault,Vault},
@url{https://github.com/hashicorp/terraform,Terraform}, and
@url{https://github.com/hashicorp/nomad,Nomad}.")
    (license license:mpl2.0)))

(define-public go-github-com-posener-complete
  (package
    (name "go-github-com-posener-complete")
    (version "1.2.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/posener/complete")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0nri6hkfb0z3dkxf2fsfidr4bxbn91rjsqhg5s0c2jplf0aclppz"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/posener/complete"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-hashicorp-go-multierror"
         ,go-github-com-hashicorp-go-multierror)))
    (home-page "https://github.com/posener/complete")
    (synopsis "complete")
    (description
      "Package complete provides a tool for bash writing bash completion in go, and bash completion for the go command line.
")
    (license license:expat)))

(define-public go-github-com-hashicorp-serf
  (package
    (name "go-github-com-hashicorp-serf")
    (version "0.9.5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/serf")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0f1rsmvp96dpsv69sbn7wkiw0r4r98nrpr2ln50zyzjzy1pmbrrx"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/serf"))
    (propagated-inputs
      `(("go-github-com-ryanuber-columnize" ,go-github-com-ryanuber-columnize)
        ("go-github-com-posener-complete" ,go-github-com-posener-complete)
        ("go-github-com-mitchellh-mapstructure"
         ,go-github-com-mitchellh-mapstructure)
        ("go-github-com-mitchellh-cli" ,go-github-com-mitchellh-cli)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-hashicorp-memberlist"
         ,go-github-com-hashicorp-memberlist)
        ("go-github-com-hashicorp-mdns" ,go-github-com-hashicorp-mdns)
        ("go-github-com-hashicorp-logutils" ,go-github-com-hashicorp-logutils)
        ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)
        ("go-github-com-hashicorp-go-syslog"
         ,go-github-com-hashicorp-go-syslog)
        ("go-github-com-hashicorp-go-multierror"
         ,go-github-com-hashicorp-go-multierror)
        ("go-github-com-hashicorp-go-msgpack"
         ,go-github-com-hashicorp-go-msgpack)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-armon-go-radix" ,go-github-com-armon-go-radix)
        ("go-github-com-armon-go-metrics" ,go-github-com-armon-go-metrics)
        ("go-github-com-armon-circbuf" ,go-github-com-armon-circbuf)))
    (home-page "https://github.com/hashicorp/serf")
    (synopsis "Serf")
    (description
      "Serf is a decentralized solution for service discovery and orchestration
that is lightweight, highly available, and fault tolerant.")
    (license license:mpl2.0)))

(define-public go-github-com-matttproud-golang-protobuf-extensions
  (package
    (name "go-github-com-matttproud-golang-protobuf-extensions")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/matttproud/golang_protobuf_extensions")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1d0c1isd2lk9pnfq2nk0aih356j30k3h1gi2w0ixsivi5csl7jya"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/matttproud/golang_protobuf_extensions"))
    (home-page "https://github.com/matttproud/golang_protobuf_extensions")
    (synopsis "Overview")
    (description
      "This repository provides various Protocol Buffer extensions for the Go
language (golang), namely support for record length-delimited message
streaming.")
    (license license:asl2.0)))

(define-public go-github-com-minio-highwayhash
  (package
    (name "go-github-com-minio-highwayhash")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/minio/highwayhash")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1inrix7720273ccynxcyi7xsgc55cskxrw7gwn08qkmdj9xdxqai"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/minio/highwayhash"))
    (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://github.com/minio/highwayhash")
    (synopsis "HighwayHash")
    (description
      "Package highwayhash implements the pseudo-random-function (PRF) HighwayHash.
HighwayHash is a fast hash function designed to defend hash-flooding attacks
or to authenticate short-lived messages.
")
    (license license:asl2.0)))

(define-public go-github-com-nats-io-jwt-v2
  (package
    (name "go-github-com-nats-io-jwt-v2")
    (version "2.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nats-io/jwt")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "05h52c0h3khhmf1s4x5hs4bcnpgfgxz7k8c6lwjpiyn7hf8psnf5"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nats-io/jwt/v2"))
    (propagated-inputs
      `(("go-github-com-nats-io-nkeys" ,go-github-com-nats-io-nkeys)))
    (home-page "https://github.com/nats-io/jwt")
    (synopsis #f)
    (description
      "* Copyright 2020 The NATS Authors
* Licensed under the Apache License, Version 2.0 (the \"License\");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* @url{http://www.apache.org/licenses/LICENSE-2.0,http://www.apache.org/licenses/LICENSE-2.0}
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an \"AS IS\" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
")
    (license license:asl2.0)))

(define-public go-go-etcd-io-etcd-api-v3
  (package
    (name "go-go-etcd-io-etcd-api-v3")
    (version "3.5.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/etcd-io/etcd")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1dinf1668bkpq5lff8sr4fjd7dkxw9smm1f9zcadpdz3ci3knpzg"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "go.etcd.io/etcd/api/v3"
        #:unpack-path
        "go.etcd.io/etcd/api/v3"))
    (propagated-inputs
      `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
        ("go-github-com-grpc-ecosystem-grpc-gateway"
         ,go-github-com-grpc-ecosystem-grpc-gateway)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
        ("go-github-com-coreos-go-semver" ,go-github-com-coreos-go-semver)))
    (home-page "https://go.etcd.io/etcd/api/v3")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-cncf-udpa-go
  (package
    (name "go-github-com-cncf-udpa-go")
    (version "0.0.0-20210930031921-04548b0d99d4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cncf/udpa")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "16z9iqs7g6c084fh6y9v3skdbxnpyqw3d1y19v42llyl9hzx361v"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "github.com/cncf/udpa/go"
        #:unpack-path
        "github.com/cncf/udpa"))
    (propagated-inputs
      `(("go-github-com-cncf-xds-go" ,go-github-com-cncf-xds-go)))
    (home-page "https://github.com/cncf/udpa")
    (synopsis "Description")
    (description
      "This library has been deprecated in favor of @code{github.com/cncf/xds/go}.  All users are recommended to switch their imports.")
    (license license:asl2.0)))

(define-public go-github-com-census-instrumentation-opencensus-proto
  (package
    (name "go-github-com-census-instrumentation-opencensus-proto")
    (version "0.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/census-instrumentation/opencensus-proto")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1ngp6jb345xahsijjpwwlcy2giymyzsy7kdhkrvgjafqssk6aw6f"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/census-instrumentation/opencensus-proto"))
    (home-page "https://github.com/census-instrumentation/opencensus-proto")
    (synopsis
      "OpenCensus Proto - Language Independent Interface Types For OpenCensus")
    (description
      "Census provides a framework to define and collect stats against metrics and to
break those stats down across user-defined dimensions.")
    (license license:asl2.0)))

(define-public go-github-com-cncf-xds-go
  (package
    (name "go-github-com-cncf-xds-go")
    (version "0.0.0-20211011173535-cb28da3451f1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cncf/xds")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1m32hvpcv7lq5y1mgdxhd0i8kcswsjbi2x8y2imr7gv9g6nha2fd"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "github.com/cncf/xds/go"
        #:unpack-path
        "github.com/cncf/xds"))
    (propagated-inputs
      `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-envoyproxy-protoc-gen-validate"
         ,go-github-com-envoyproxy-protoc-gen-validate)))
    (home-page "https://github.com/cncf/xds")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-iancoleman-strcase
  (package
    (name "go-github-com-iancoleman-strcase")
    (version "0.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/iancoleman/strcase")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0rgfn6zz1r9h7yic3b0dcqq900bi638d6qgcyy9jhvk00f4dlg5j"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/iancoleman/strcase"))
    (home-page "https://github.com/iancoleman/strcase")
    (synopsis "strcase")
    (description
      "Package strcase converts strings to various cases.  See the conversion table below:
")
    (license license:expat)))

(define-public go-github-com-lyft-protoc-gen-star
  (package
    (name "go-github-com-lyft-protoc-gen-star")
    (version "0.6.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/lyft/protoc-gen-star")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0mbgwnd3nhafx9hvjbyyl38x1ch1b4nmk03pisybqfq1qyadx93q"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/lyft/protoc-gen-star"))
    (propagated-inputs
      `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-spf13-afero" ,go-github-com-spf13-afero)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
    (home-page "https://github.com/lyft/protoc-gen-star")
    (synopsis "protoc-gen-star (PG*)")
    (description
      "Package pgs provides a library for building protoc plugins
")
    (license license:asl2.0)))

(define-public go-github-com-envoyproxy-protoc-gen-validate
  (package
    (name "go-github-com-envoyproxy-protoc-gen-validate")
    (version "0.6.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/envoyproxy/protoc-gen-validate")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "15x8klgwl98kh81la8j007jfcsx9jxmxrrmys3a7p92pf0k5vzrx"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/envoyproxy/protoc-gen-validate"))
    (propagated-inputs
      `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-lint" ,go-golang-org-x-lint)
        ("go-github-com-spf13-afero" ,go-github-com-spf13-afero)
        ("go-github-com-lyft-protoc-gen-star"
         ,go-github-com-lyft-protoc-gen-star)
        ("go-github-com-iancoleman-strcase" ,go-github-com-iancoleman-strcase)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
    (home-page "https://github.com/envoyproxy/protoc-gen-validate")
    (synopsis "protoc-gen-validate (PGV)")
    (description
      "PGV is a protoc plugin to generate polyglot message validators.  While protocol buffers effectively guarantee the types of structured data, they cannot enforce semantic rules for values.  This plugin adds support to protoc-generated code to validate such constraints.")
    (license license:asl2.0)))

(define-public go-github-com-antihax-optional
  (package
    (name "go-github-com-antihax-optional")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/antihax/optional")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1ix08vl49qxr58rc6201cl97g1yznhhkwvqldslawind99js4rj0"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/antihax/optional"))
    (home-page "https://github.com/antihax/optional")
    (synopsis #f)
    (description #f)
    (license license:expat)))

(define-public go-github-com-ghodss-yaml
  (package
    (name "go-github-com-ghodss-yaml")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ghodss/yaml")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0skwmimpy7hlh7pva2slpcplnm912rp3igs98xnqmn859kwa5v8g"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ghodss/yaml"))
    (home-page "https://github.com/ghodss/yaml")
    (synopsis "YAML marshaling and unmarshaling support for Go")
    (description
      "Copyright 2013 The Go Authors.  All rights reserved.
Use of this source code is governed by a BSD-style
license that can be found in the LICENSE file.
")
    (license #f)))
; TODO license

(define-public go-github-com-rogpeppe-fastuuid
  (package
    (name "go-github-com-rogpeppe-fastuuid")
    (version "1.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/rogpeppe/fastuuid")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "028acdg63zkxpjz3l639nlhki2l0canr2v5jglrmwa1wpjqcfff8"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/rogpeppe/fastuuid"))
    (home-page "https://github.com/rogpeppe/fastuuid")
    (synopsis "fastuuid")
    (description
      "Package fastuuid provides fast UUID generation of 192 bit
universally unique identifiers.
")
    (license license:bsd-3)))

(define-public go-github-com-grpc-ecosystem-grpc-gateway
  (package
    (name "go-github-com-grpc-ecosystem-grpc-gateway")
    (version "1.16.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/grpc-ecosystem/grpc-gateway")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0dzq1qbgzz2c6vnh8anx0j3py34sd72p35x6s2wrl001q68am5cc"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/grpc-ecosystem/grpc-gateway"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
        ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
        ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
        ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-rogpeppe-fastuuid" ,go-github-com-rogpeppe-fastuuid)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-golang-glog" ,go-github-com-golang-glog)
        ("go-github-com-ghodss-yaml" ,go-github-com-ghodss-yaml)
        ("go-github-com-antihax-optional" ,go-github-com-antihax-optional)))
    (home-page "https://github.com/grpc-ecosystem/grpc-gateway")
    (synopsis "grpc-gateway")
    (description
      "The grpc-gateway is a plugin of the Google protocol buffers compiler
@url{https://github.com/protocolbuffers/protobuf,protoc}.
It reads protobuf service definitions and generates a reverse-proxy server which
translates a RESTful HTTP API into gRPC.  This server is generated according to the
@url{https://github.com/googleapis/googleapis/raw/master/google/api/http.proto#L46,(code google.api.http)}
annotations in your service definitions.")
    (license license:bsd-3)))

(define-public go-go-opentelemetry-io-proto-otlp
  (package
    (name "go-go-opentelemetry-io-proto-otlp")
    (version "0.9.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/open-telemetry/opentelemetry-proto-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0f6iix9szi76x4hvia9c97yfmx0xqi29mhnn7vradk3xbhcaih9d"))))
    (build-system go-build-system)
    (arguments '(#:import-path "go.opentelemetry.io/proto/otlp"))
    (propagated-inputs
      `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-github-com-grpc-ecosystem-grpc-gateway"
         ,go-github-com-grpc-ecosystem-grpc-gateway)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
    (home-page "https://go.opentelemetry.io/proto/otlp")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-envoyproxy-go-control-plane
  (package
    (name "go-github-com-envoyproxy-go-control-plane")
    (version "0.9.9")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/envoyproxy/go-control-plane")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1cb3s6x2jx93cdljb9jwp2wc2iljv91h7706gq1amkkwdhdxhcdv"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/envoyproxy/go-control-plane"))
    (propagated-inputs
      `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
        ("go-go-opentelemetry-io-proto-otlp"
         ,go-go-opentelemetry-io-proto-otlp)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-prometheus-client-model"
         ,go-github-com-prometheus-client-model)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-envoyproxy-protoc-gen-validate"
         ,go-github-com-envoyproxy-protoc-gen-validate)
        ("go-github-com-cncf-xds-go" ,go-github-com-cncf-xds-go)
        ("go-github-com-census-instrumentation-opencensus-proto"
         ,go-github-com-census-instrumentation-opencensus-proto)))
    (home-page "https://github.com/envoyproxy/go-control-plane")
    (synopsis "control-plane")
    (description
      "This repository contains a Go-based implementation of an API server that
implements the discovery service APIs defined in
@url{https://github.com/envoyproxy/data-plane-api,data-plane-api}.")
    (license license:asl2.0)))

(define-public go-google-golang-org-grpc
  (package
    (name "go-google-golang-org-grpc")
    (version "1.41.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/grpc/grpc-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "10a0n2lmvl8zqhcswz3sjyqil0sk0mvp892d04lfnq61wq1ssgsn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "google.golang.org/grpc"))
    (propagated-inputs
      `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-google-uuid" ,go-github-com-google-uuid)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-golang-glog" ,go-github-com-golang-glog)
        ("go-github-com-envoyproxy-go-control-plane"
         ,go-github-com-envoyproxy-go-control-plane)
        ("go-github-com-cncf-udpa-go" ,go-github-com-cncf-udpa-go)
        ("go-github-com-cespare-xxhash-v2" ,go-github-com-cespare-xxhash-v2)))
    (home-page "https://google.golang.org/grpc")
    (synopsis "gRPC-Go")
    (description "Package grpc implements an RPC system called gRPC.
")
    (license license:asl2.0)))

(define-public go-google-golang-org-genproto
  (package
    (name "go-google-golang-org-genproto")
    (version "0.0.0-20211013025323-ce878158c4d4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/googleapis/go-genproto")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0r4jhk67835jw7yhpcyq3bam91qdfk14ap4hgx3f9fk2hvjjh346"))))
    (build-system go-build-system)
    (arguments '(#:import-path "google.golang.org/genproto"))
    (propagated-inputs
      `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
    (home-page "https://google.golang.org/genproto")
    (synopsis "Go generated proto packages")
    (description
      "This repository contains the generated Go packages for common protocol buffer
types, and the generated @url{http://grpc.io,gRPC} code necessary for interacting with Google's gRPC
APIs.")
    (license license:asl2.0)))

(define-public go-gopkg-in-gcfg-v1
  (package
    (name "go-gopkg-in-gcfg-v1")
    (version "1.2.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://gopkg.in/gcfg.v1")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "165f9wincwnkblp8x6m1f4ch4m8k4gvy5v4x4gqdpmf59kqv5y7s"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "gopkg.in/gcfg.v1" #:unpack-path "gopkg.in/gcfg.v1"))
    (home-page "https://gopkg.in/gcfg.v1")
    (synopsis #f)
    (description
      "Package gcfg reads \"INI-style\" text-based configuration files with
\"name=value\" pairs grouped into sections (gcfg files).
")
    (license license:bsd-3)))

(define-public go-gopkg-in-warnings-v0
  (package
    (name "go-gopkg-in-warnings-v0")
    (version "0.1.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://gopkg.in/warnings.v0")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1kzj50jn708cingn7a13c2wdlzs6qv89dr2h4zj8d09647vlnd81"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "gopkg.in/warnings.v0"
        #:unpack-path
        "gopkg.in/warnings.v0"))
    (home-page "https://gopkg.in/warnings.v0")
    (synopsis #f)
    (description
      "Package warnings implements error handling with non-fatal errors (warnings).
")
    (license license:bsd-2)))

(define-public go-github-com-go-kit-kit
  (package
    (name "go-github-com-go-kit-kit")
    (version "0.12.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-kit/kit")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "15cm24sjyvwxpprfha2k0s3c1hhpg5y2kljnw04hayfyazqc79wl"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-kit/kit"))
    (propagated-inputs
      `(("go-gopkg-in-warnings-v0" ,go-gopkg-in-warnings-v0)
        ("go-gopkg-in-gcfg-v1" ,go-gopkg-in-gcfg-v1)
        ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
        ("go-go-uber-org-atomic" ,go-go-uber-org-atomic)
        ("go-go-etcd-io-etcd-api-v3" ,go-go-etcd-io-etcd-api-v3)
        ("go-github-com-prometheus-procfs" ,go-github-com-prometheus-procfs)
        ("go-github-com-prometheus-common" ,go-github-com-prometheus-common)
        ("go-github-com-prometheus-client-model"
         ,go-github-com-prometheus-client-model)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-op-go-logging" ,go-github-com-op-go-logging)
        ("go-github-com-nats-io-nuid" ,go-github-com-nats-io-nuid)
        ("go-github-com-nats-io-nkeys" ,go-github-com-nats-io-nkeys)
        ("go-github-com-nats-io-jwt-v2" ,go-github-com-nats-io-jwt-v2)
        ("go-github-com-modern-go-reflect2" ,go-github-com-modern-go-reflect2)
        ("go-github-com-modern-go-concurrent"
         ,go-github-com-modern-go-concurrent)
        ("go-github-com-mitchellh-mapstructure"
         ,go-github-com-mitchellh-mapstructure)
        ("go-github-com-mitchellh-go-homedir"
         ,go-github-com-mitchellh-go-homedir)
        ("go-github-com-minio-highwayhash" ,go-github-com-minio-highwayhash)
        ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
        ("go-github-com-matttproud-golang-protobuf-extensions"
         ,go-github-com-matttproud-golang-protobuf-extensions)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
        ("go-github-com-json-iterator-go" ,go-github-com-json-iterator-go)
        ("go-github-com-jmespath-go-jmespath"
         ,go-github-com-jmespath-go-jmespath)
        ("go-github-com-hashicorp-serf" ,go-github-com-hashicorp-serf)
        ("go-github-com-hashicorp-golang-lru"
         ,go-github-com-hashicorp-golang-lru)
        ("go-github-com-hashicorp-go-rootcerts"
         ,go-github-com-hashicorp-go-rootcerts)
        ("go-github-com-hashicorp-go-immutable-radix"
         ,go-github-com-hashicorp-go-immutable-radix)
        ("go-github-com-hashicorp-go-hclog" ,go-github-com-hashicorp-go-hclog)
        ("go-github-com-hashicorp-go-cleanhttp"
         ,go-github-com-hashicorp-go-cleanhttp)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-golang-groupcache" ,go-github-com-golang-groupcache)
        ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
        ("go-github-com-go-logfmt-logfmt" ,go-github-com-go-logfmt-logfmt)
        ("go-github-com-franela-goreq" ,go-github-com-franela-goreq)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-edsrzf-mmap-go" ,go-github-com-edsrzf-mmap-go)
        ("go-github-com-coreos-go-systemd-v22"
         ,go-github-com-coreos-go-systemd-v22)
        ("go-github-com-coreos-go-semver" ,go-github-com-coreos-go-semver)
        ("go-github-com-clbanning-mxj" ,go-github-com-clbanning-mxj)
        ("go-github-com-cespare-xxhash-v2" ,go-github-com-cespare-xxhash-v2)
        ("go-github-com-cenkalti-backoff-v4"
         ,go-github-com-cenkalti-backoff-v4)
        ("go-github-com-beorn7-perks" ,go-github-com-beorn7-perks)
        ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)
        ("go-github-com-armon-go-metrics" ,go-github-com-armon-go-metrics)
        ("go-github-com-knetic-govaluate" ,go-github-com-knetic-govaluate)
        ("go-github-com-hdrhistogram-hdrhistogram-go"
         ,go-github-com-hdrhistogram-hdrhistogram-go)
        ("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-golang-org-x-time" ,go-golang-org-x-time)
        ("go-golang-org-x-sync" ,go-golang-org-x-sync)
        ("go-go-uber-org-zap" ,go-go-uber-org-zap)
        ("go-go-opencensus-io" ,go-go-opencensus-io)
        ("go-go-etcd-io-etcd-client-v3" ,go-go-etcd-io-etcd-client-v3)
        ("go-go-etcd-io-etcd-client-v2" ,go-go-etcd-io-etcd-client-v2)
        ("go-go-etcd-io-etcd-client-pkg-v3" ,go-go-etcd-io-etcd-client-pkg-v3)
        ("go-github-com-streadway-handy" ,go-github-com-streadway-handy)
        ("go-github-com-streadway-amqp" ,go-github-com-streadway-amqp)
        ("go-github-com-sony-gobreaker" ,go-github-com-sony-gobreaker)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
        ("go-github-com-prometheus-client-golang"
         ,go-github-com-prometheus-client-golang)
        ("go-github-com-performancecopilot-speed-v4"
         ,go-github-com-performancecopilot-speed-v4)
        ("go-github-com-openzipkin-zipkin-go"
         ,go-github-com-openzipkin-zipkin-go)
        ("go-github-com-opentracing-opentracing-go"
         ,go-github-com-opentracing-opentracing-go)
        ("go-github-com-nats-io-nats-go" ,go-github-com-nats-io-nats-go)
        ("go-github-com-nats-io-nats-server-v2"
         ,go-github-com-nats-io-nats-server-v2)
        ("go-github-com-influxdata-influxdb1-client"
         ,go-github-com-influxdata-influxdb1-client)
        ("go-github-com-hudl-fargo" ,go-github-com-hudl-fargo)
        ("go-github-com-hashicorp-consul-api"
         ,go-github-com-hashicorp-consul-api)
        ("go-github-com-golang-jwt-jwt-v4" ,go-github-com-golang-jwt-jwt-v4)
        ("go-github-com-go-zookeeper-zk" ,go-github-com-go-zookeeper-zk)
        ("go-github-com-go-kit-log" ,go-github-com-go-kit-log)
        ("go-github-com-casbin-casbin-v2" ,go-github-com-casbin-casbin-v2)
        ("go-github-com-aws-aws-sdk-go-v2-service-cloudwatch"
         ,go-github-com-aws-aws-sdk-go-v2-service-cloudwatch)
        ("go-github-com-aws-aws-sdk-go-v2" ,go-github-com-aws-aws-sdk-go-v2)
        ("go-github-com-aws-aws-sdk-go" ,go-github-com-aws-aws-sdk-go)
        ("go-github-com-afex-hystrix-go" ,go-github-com-afex-hystrix-go)
        ("go-github-com-vividcortex-gohistogram"
         ,go-github-com-vividcortex-gohistogram)))
    (home-page "https://github.com/go-kit/kit")
    (synopsis "Go kit")
    (description
      "@strong{Go kit} is a @strong{programming toolkit} for building microservices
(or elegant monoliths) in Go.  We solve common problems in distributed
systems and application architecture so you can focus on delivering
business value.")
    (license license:expat)))

(define-public go-github-com-go-logfmt-logfmt
  (package
    (name "go-github-com-go-logfmt-logfmt")
    (version "0.5.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-logfmt/logfmt")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "01fs4x2aqw2qcsz18s4nfvyqv3rcwz5xmgpk3bic6nzgyzsjd7dp"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-logfmt/logfmt"))
    (home-page "https://github.com/go-logfmt/logfmt")
    (synopsis "logfmt")
    (description
      "Package logfmt implements utilities to marshal and unmarshal data in the
logfmt format.  The logfmt format records key/value pairs in a way that
balances readability for humans and simplicity of computer parsing.  It is
most commonly used as a more human friendly alternative to JSON for
structured logging.
")
    (license license:expat)))

(define-public go-github-com-go-logr-logr
  (package
    (name "go-github-com-go-logr-logr")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-logr/logr")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1805nbnnj0vqv4cqqi9im9jv0aq23693rgmg9z0s4zxpdi9ivhap"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-logr/logr"))
    (home-page "https://github.com/go-logr/logr")
    (synopsis "A minimal logging API for Go")
    (description
      "Package logr defines a general-purpose logging API and abstract interfaces
to back that API.  Packages in the Go ecosystem can depend on this package,
while callers can implement logging with whatever backend is appropriate.
")
    (license license:asl2.0)))

(define-public go-github-com-godbus-dbus-v5
  (package
    (name "go-github-com-godbus-dbus-v5")
    (version "5.0.5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/godbus/dbus")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "09nx3v4170qjkvnk1nfzv5bmyki7sivarjr3yc01zxbp7q4p0blp"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/godbus/dbus/v5"))
    (home-page "https://github.com/godbus/dbus")
    (synopsis "dbus")
    (description
      "Package dbus implements bindings to the D-Bus message bus system.
")
    (license license:bsd-2)))

(define-public go-github-com-coreos-go-systemd-v22
  (package
    (name "go-github-com-coreos-go-systemd-v22")
    (version "22.3.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/coreos/go-systemd")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1ndi86b8va84ha93njqgafypz4di7yxfd5r5kf1r0s3y3ghcjajq"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/coreos/go-systemd/v22"))
    (propagated-inputs
      `(("go-github-com-godbus-dbus-v5" ,go-github-com-godbus-dbus-v5)))
    (home-page "https://github.com/coreos/go-systemd")
    (synopsis "go-systemd")
    (description "Go bindings to systemd.  The project has several packages:")
    (license license:asl2.0)))

(define-public go-github-com-rs-xid
  (package
    (name "go-github-com-rs-xid")
    (version "1.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/rs/xid")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0w2hva6ymn16yn6zrwb6nx3kxaffva95w7gj2fwg0xx39fyfslbb"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/rs/xid"))
    (home-page "https://github.com/rs/xid")
    (synopsis "Globally Unique ID Generator")
    (description
      "Package xid is a globally unique id generator suited for web scale
")
    (license license:expat)))

(define-public go-github-com-rs-zerolog
  (package
    (name "go-github-com-rs-zerolog")
    (version "1.25.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/rs/zerolog")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "006n5gf3q0wkd8hcxwjn3g1fz387hqqq134bwkgkzjcqyfn6y5b3"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/rs/zerolog"))
    (propagated-inputs
      `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-github-com-rs-xid" ,go-github-com-rs-xid)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-coreos-go-systemd-v22"
         ,go-github-com-coreos-go-systemd-v22)))
    (home-page "https://github.com/rs/zerolog")
    (synopsis "Zero Allocation JSON Logger")
    (description
      "Package zerolog provides a lightweight logging library dedicated to JSON logging.
")
    (license license:expat)))

(define-public go-go-opentelemetry-io-otel
  (package
    (name "go-go-opentelemetry-io-otel")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/open-telemetry/opentelemetry-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "021aq1w4pzwf45vqs2pa6jskdn1jj3p4ky6bf7zkkjh8ds44fb6f"))))
    (build-system go-build-system)
    (arguments '(#:import-path "go.opentelemetry.io/otel"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
    (home-page "https://go.opentelemetry.io/otel")
    (synopsis "OpenTelemetry-Go")
    (description
      "Package otel provides global access to the OpenTelemetry API.  The subpackages of
the otel package provide an implementation of the OpenTelemetry API.
")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-otel-sdk
  (package
    (name "go-go-opentelemetry-io-otel-sdk")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/open-telemetry/opentelemetry-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "021aq1w4pzwf45vqs2pa6jskdn1jj3p4ky6bf7zkkjh8ds44fb6f"))))
    (build-system go-build-system)
    (arguments '(#:import-path "go.opentelemetry.io/otel/sdk"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
    (home-page "https://go.opentelemetry.io/otel/sdk")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-otel-trace
  (package
    (name "go-go-opentelemetry-io-otel-trace")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/open-telemetry/opentelemetry-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "021aq1w4pzwf45vqs2pa6jskdn1jj3p4ky6bf7zkkjh8ds44fb6f"))))
    (build-system go-build-system)
    (arguments '(#:import-path "go.opentelemetry.io/otel/trace"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
    (home-page "https://go.opentelemetry.io/otel/trace")
    (synopsis #f)
    (description
      "Package trace provides an implementation of the tracing part of the
OpenTelemetry API.
")
    (license license:asl2.0)))

(define-public go-golang-org-x-exp
  (package
    (name "go-golang-org-x-exp")
    (version "0.0.0-20211012155715-ffe10e552389")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://go.googlesource.com/exp")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0lprkb08km31iv1hmmrl9b206xaps50jmpx3whkxmmnhbaq0phhb"))))
    (build-system go-build-system)
    (arguments '(#:import-path "golang.org/x/exp"))
    (propagated-inputs
      `(("go-honnef-co-go-tools" ,go-honnef-co-go-tools)
        ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
        ("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-mod" ,go-golang-org-x-mod)
        ("go-golang-org-x-mobile" ,go-golang-org-x-mobile)
        ("go-golang-org-x-image" ,go-golang-org-x-image)
        ("go-go-uber-org-zap" ,go-go-uber-org-zap)
        ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
        ("go-go-uber-org-atomic" ,go-go-uber-org-atomic)
        ("go-go-opentelemetry-io-otel-trace"
         ,go-go-opentelemetry-io-otel-trace)
        ("go-go-opentelemetry-io-otel-sdk" ,go-go-opentelemetry-io-otel-sdk)
        ("go-go-opentelemetry-io-otel-metric"
         ,go-go-opentelemetry-io-otel-metric)
        ("go-go-opentelemetry-io-otel" ,go-go-opentelemetry-io-otel)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
        ("go-github-com-rs-zerolog" ,go-github-com-rs-zerolog)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-go-logr-logr" ,go-github-com-go-logr-logr)
        ("go-github-com-go-logfmt-logfmt" ,go-github-com-go-logfmt-logfmt)
        ("go-github-com-go-kit-kit" ,go-github-com-go-kit-kit)
        ("go-github-com-go-gl-glfw-v3-3-glfw"
         ,go-github-com-go-gl-glfw-v3-3-glfw)
        ("go-github-com-burntsushi-xgb" ,go-github-com-burntsushi-xgb)
        ("go-dmitri-shuralyov-com-gpu-mtl" ,go-dmitri-shuralyov-com-gpu-mtl)))
    (home-page "https://golang.org/x/exp")
    (synopsis "exp")
    (description
      "This subrepository holds experimental and deprecated (in the @code{old}
directory) packages.")
    (license license:bsd-3)))

(define-public go-golang-org-x-mobile
  (package
    (name "go-golang-org-x-mobile")
    (version "0.0.0-20210924032853-1c027f395ef7")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://go.googlesource.com/mobile")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zxh8q45c6zh9q2g3wrwkzkjm4anzxnryqsa003rvr5pdxf6cp1b"))))
    (build-system go-build-system)
    (arguments '(#:import-path "golang.org/x/mobile"))
    (propagated-inputs
      `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-golang-org-x-mod" ,go-golang-org-x-mod)
        ("go-golang-org-x-image" ,go-golang-org-x-image)
        ("go-golang-org-x-exp" ,go-golang-org-x-exp)))
    (home-page "https://golang.org/x/mobile")
    (synopsis "Go support for Mobile devices")
    (description
      "The Go mobile repository holds packages and build tools for using Go on mobile platforms.")
    (license license:bsd-3)))

(define-public go-github-com-protonmail-gopenpgp-v2
  (package
    (name "go-github-com-protonmail-gopenpgp-v2")
    (version "2.2.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/gopenpgp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "03lf6dk24vih4gm8mn4b4l7hcygy0kg8b916jk1xqr9gmky4pdcp"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/gopenpgp/v2"))
    (propagated-inputs
      `(("go-golang-org-x-mobile" ,go-golang-org-x-mobile)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-protonmail-go-mime" ,go-github-com-protonmail-go-mime)
        ("go-github-com-protonmail-go-crypto"
         ,go-github-com-protonmail-go-crypto)))
    (home-page "https://github.com/ProtonMail/gopenpgp")
    (synopsis "GopenPGP V2")
    (description "GopenPGP is a high-level OpenPGP library built on top of .")
    (license license:expat)))

(define-public go-github-com-abiosoft-ishell
  (package
    (name "go-github-com-abiosoft-ishell")
    (version "0.0.0-20210602093954-1c52a1a9f803")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/abiosoft/ishell")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0jmnnszqni4nmrpygpxgb8j4v76ipsj4g4hv0zl9sccv2zarixp9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/abiosoft/ishell"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-flynn-archive-go-shlex"
         ,go-github-com-flynn-archive-go-shlex)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-chzyer-test" ,go-github-com-chzyer-test)
        ("go-github-com-chzyer-logex" ,go-github-com-chzyer-logex)
        ("go-github-com-abiosoft-readline" ,go-github-com-abiosoft-readline)))
    (home-page "https://github.com/abiosoft/ishell")
    (synopsis "ishell")
    (description "Package ishell implements an interactive shell.
")
    (license license:expat)))

(define-public go-github-com-abiosoft-readline
  (package
    (name "go-github-com-abiosoft-readline")
    (version "0.0.0-20180607040430-155bce2042db")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/abiosoft/readline")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "104q8dazj8yf6b089jjr82fy9h1g80zyyzvp3g8b44a7d8ngjj6r"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/abiosoft/readline"))
    (home-page "https://github.com/abiosoft/readline")
    (synopsis "Guide")
    (description
      "Readline is a pure go implementation for GNU-Readline kind library.
")
    (license license:expat)))

(define-public go-github-com-allan-simon-go-singleinstance
  (package
    (name "go-github-com-allan-simon-go-singleinstance")
    (version "0.0.0-20210120080615-d0997106ab37")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/allan-simon/go-singleinstance")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0rmkin2vjkl4qpbdcll1f4gy22xj5v83ixvbsyn78632wv0x2mqv"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/allan-simon/go-singleinstance"))
    (home-page "https://github.com/allan-simon/go-singleinstance")
    (synopsis "go-singleinstance")
    (description
      "Cross plateform library to have only one instance of a software (based on python's @url{https://github.com/pycontribs/tendo/raw/master/tendo/singleton.py,tendo}).")
    (license license:expat)))

(define-public go-github-com-chzyer-logex
  (package
    (name "go-github-com-chzyer-logex")
    (version "1.1.10")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/chzyer/logex")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "08pbjj3wx9acavlwyr055isa8a5hnmllgdv5k6ra60l5y1brmlq4"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/chzyer/logex"))
    (home-page "https://github.com/chzyer/logex")
    (synopsis #f)
    (description #f)
    (license #f)))

(define-public go-github-com-chzyer-test
  (package
    (name "go-github-com-chzyer-test")
    (version "0.0.0-20210722231415-061457976a23")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/chzyer/test")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1jjskijacwzz0qxzrbwsglpg5vil7v4xaq8l40r2fhd2icl9hz7a"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/chzyer/test"))
    (home-page "https://github.com/chzyer/test")
    (synopsis "test")
    (description #f)
    (license license:expat)))

(define-public go-github-com-cucumber-gherkin-go-v19
  (package
    (name "go-github-com-cucumber-gherkin-go-v19")
    (version "19.0.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cucumber/gherkin-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0kfjygxp6929rs4ih9r3afmwhj4lavdbj1cp8ddgawpbzc5bd9g8"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/cucumber/gherkin-go/v19"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-cucumber-messages-go-v16"
         ,go-github-com-cucumber-messages-go-v16)))
    (home-page "https://github.com/cucumber/gherkin-go")
    (synopsis "Gherkin for Go")
    (description
      "Gherkin parser/compiler for Go.  Please see @url{https://github.com/cucumber/common/tree/main/gherkin,Gherkin} for details.")
    (license license:expat)))

(define-public go-github-com-hashicorp-go-immutable-radix
  (package
    (name "go-github-com-hashicorp-go-immutable-radix")
    (version "1.3.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/go-immutable-radix")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0s7sf8y5lj8rx4gdymrz29gg6y2xwksfpgniaz32yzcmg3c817zb"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/go-immutable-radix"))
    (propagated-inputs
      `(("go-github-com-hashicorp-golang-lru"
         ,go-github-com-hashicorp-golang-lru)
        ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)))
    (home-page "https://github.com/hashicorp/go-immutable-radix")
    (synopsis "go-immutable-radix")
    (description
      "This package provides the @code{iradix} package that implements an immutable @url{http://en.wikipedia.org/wiki/Radix_tree,radix tree}.
The package only provides a single @code{Tree} implementation, optimized for sparse nodes.")
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

(define-public go-github-com-hashicorp-go-memdb
  (package
    (name "go-github-com-hashicorp-go-memdb")
    (version "1.3.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/go-memdb")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1xri3yahanjm0mn85f0f8k3nsdvfzkamql0sf2rjp3qfz667vwiy"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/go-memdb"))
    (propagated-inputs
      `(("go-github-com-hashicorp-golang-lru"
         ,go-github-com-hashicorp-golang-lru)
        ("go-github-com-hashicorp-go-immutable-radix"
         ,go-github-com-hashicorp-go-immutable-radix)))
    (home-page "https://github.com/hashicorp/go-memdb")
    (synopsis "go-memdb")
    (description
      "Package memdb provides an in-memory database that supports transactions
and MVCC.
")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-go-uuid
  (package
    (name "go-github-com-hashicorp-go-uuid")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/go-uuid")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1azjn5a03cv0bdab3clmkfz8g9807nxxjwy9i7dy73p7d4sikhja"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/go-uuid"))
    (home-page "https://github.com/hashicorp/go-uuid")
    (synopsis "uuid")
    (description
      "Generates UUID-format strings using high quality,  bytes.  It is @strong{not} intended to be RFC compliant, merely to use a well-understood string representation of a 128-bit value.  It can also parse UUID-format strings into their component bytes.")
    (license license:mpl2.0)))

(define-public go-github-com-cucumber-godog
  (package
    (name "go-github-com-cucumber-godog")
    (version "0.12.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cucumber/godog")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0z6rfgplmxig9xz9plzh2xmb3mbqb8gp1ilnavnrly7hqy1lqlhg"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/cucumber/godog"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
        ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
        ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)
        ("go-github-com-smartystreets-goconvey"
         ,go-github-com-smartystreets-goconvey)
        ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)
        ("go-github-com-hashicorp-go-memdb" ,go-github-com-hashicorp-go-memdb)
        ("go-github-com-cucumber-messages-go-v16"
         ,go-github-com-cucumber-messages-go-v16)
        ("go-github-com-cucumber-gherkin-go-v19"
         ,go-github-com-cucumber-gherkin-go-v19)))
    (home-page "https://github.com/cucumber/godog")
    (synopsis "Godog")
    (description
      "Package godog is the official Cucumber BDD framework for Golang, it merges specification
and test documentation into one cohesive whole.
")
    (license license:expat)))

(define-public go-github-com-gofrs-uuid
  (package
    (name "go-github-com-gofrs-uuid")
    (version "4.0.0+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gofrs/uuid")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "08ma37vvrni836fxlswjd3bl2sdqyw3nxv6zdi1nyncnl9l0421k"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gofrs/uuid"))
    (home-page "https://github.com/gofrs/uuid")
    (synopsis "UUID")
    (description
      "Package uuid provides implementations of the Universally Unique Identifier
(UUID), as specified in RFC-4122,
")
    (license license:expat)))

(define-public go-github-com-cucumber-messages-go-v16
  (package
    (name "go-github-com-cucumber-messages-go-v16")
    (version "16.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cucumber/messages-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1wb5nl24xav08467ykhna7viblm7hgxb20i0y00dscjijialyizc"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/cucumber/messages-go/v16"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-gofrs-uuid" ,go-github-com-gofrs-uuid)))
    (home-page "https://github.com/cucumber/messages-go")
    (synopsis #f)
    (description #f)
    (license license:expat)))

(define-public go-github-com-emersion-go-imap-appendlimit
  (package
    (name "go-github-com-emersion-go-imap-appendlimit")
    (version "0.0.0-20210907172056-e3baed77bbe4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-imap-appendlimit")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0fb2v51k0r5aipz8r2sz6yw0x7kia6yx40ly9v0942ifc44dchhh"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/emersion/go-imap-appendlimit"))
    (home-page "https://github.com/emersion/go-imap-appendlimit")
    (synopsis "go-imap-appendlimit")
    (description
      "Implements the IMAP APPENDLIMIT Extension, as defined in @url{https://rfc-editor.org/rfc/rfc7889.html,RFC 7889}.
")
    (license license:expat)))

(define-public go-github-com-emersion-go-imap-move
  (package
    (name "go-github-com-emersion-go-imap-move")
    (version "0.0.0-20210907172020-fe4558f9c872")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-imap-move")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1aw98d6hlnmbzn1z83v4lqfgr7wm09cp5gfx5ibwzhqi0whdyr18"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/emersion/go-imap-move"))
    (home-page "https://github.com/emersion/go-imap-move")
    (synopsis "go-imap-move")
    (description
      "Implements the IMAP MOVE Extension, defined in @url{https://rfc-editor.org/rfc/rfc6851.html,RFC 6851}.
")
    (license license:expat)))

(define-public go-github-com-emersion-go-imap-quota
  (package
    (name "go-github-com-emersion-go-imap-quota")
    (version "0.0.0-20210203125329-619074823f3c")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-imap-quota")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0qm0gbl43b1l017j2f3in55mk2k69fixjkwdbzv9vcvmikqbcib8"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/emersion/go-imap-quota"))
    (home-page "https://github.com/emersion/go-imap-quota")
    (synopsis "go-imap-quota")
    (description
      "Implements the IMAP QUOTA extension, as defined in @url{https://rfc-editor.org/rfc/rfc2087.html,RFC 2087}.
")
    (license license:expat)))

(define-public go-github-com-emersion-go-imap-unselect
  (package
    (name "go-github-com-emersion-go-imap-unselect")
    (version "0.0.0-20210907172115-4c2c4843bf69")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-imap-unselect")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "16246gyshbwh4dz3ds2hqhcr15alnjdgyv3kmd7016shxpajkyx3"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/emersion/go-imap-unselect"))
    (home-page "https://github.com/emersion/go-imap-unselect")
    (synopsis "go-imap-unselect")
    (description
      "Implements the IMAP UNSELECT Extension, defined in @url{https://rfc-editor.org/rfc/rfc3691.html,RFC 3691}.
")
    (license license:expat)))

(define-public go-github-com-emersion-go-mbox
  (package
    (name "go-github-com-emersion-go-mbox")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-mbox")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1l7x2mviqfzhviyyhkzna29mag6ncmdfjvjd6b9jgdicrqq2v9as"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/emersion/go-mbox"))
    (home-page "https://github.com/emersion/go-mbox")
    (synopsis "go-mbox")
    (description "Package mbox parses and formats the mbox file format.
")
    (license license:expat)))

(define-public go-github-com-emersion-go-smtp
  (package
    (name "go-github-com-emersion-go-smtp")
    (version "0.15.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-smtp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1vhc0vpjd4yhxk6wrh01sdpi7nprjn98s46yy82xwlkm0cskl0h7"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/emersion/go-smtp"))
    (propagated-inputs
      `(("go-github-com-emersion-go-sasl" ,go-github-com-emersion-go-sasl)))
    (home-page "https://github.com/emersion/go-smtp")
    (synopsis "go-smtp")
    (description
      "Package smtp implements the Simple Mail Transfer Protocol as defined in @url{https://rfc-editor.org/rfc/rfc5321.html,RFC 5321}.
")
    (license license:expat)))

(define-public go-github-com-emersion-go-vcard
  (package
    (name "go-github-com-emersion-go-vcard")
    (version "0.0.0-20210521075357-3445b9171995")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-vcard")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1pd3zk5y88bhbac6aqqx0l7cx9iqwnbjbxqm5isqvh513b3yf5si"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/emersion/go-vcard"))
    (home-page "https://github.com/emersion/go-vcard")
    (synopsis "go-vcard")
    (description
      "Package vcard implements the vCard format, defined in @url{https://rfc-editor.org/rfc/rfc6350.html,RFC 6350}.
")
    (license license:expat)))

(define-public go-github-com-ajg-form
  (package
    (name "go-github-com-ajg-form")
    (version "1.5.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ajg/form")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1d6sxzzf9yycdf8jm5877y0khmhkmhxfw3sc4xpdcsrdlc7gqh5a"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ajg/form"))
    (home-page "https://github.com/ajg/form")
    (synopsis "form")
    (description
      "Package form implements encoding and decoding of application/x-www-form-urlencoded data.
")
    (license license:bsd-3)))

(define-public go-github-com-codegangsta-inject
  (package
    (name "go-github-com-codegangsta-inject")
    (version "0.0.0-20150114235600-33e0aa1cb7c0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/codegangsta/inject")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1jqakr3z9l60qhcgrdzsb6rlk8ikcamisw0g2ndmrf27s0ibfcaj"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/codegangsta/inject"))
    (home-page "https://github.com/codegangsta/inject")
    (synopsis "inject")
    (description
      "Package inject provides utilities for mapping and injecting dependencies in various ways.
")
    (license license:expat)))

(define-public go-github-com-fasthttp-contrib-websocket
  (package
    (name "go-github-com-fasthttp-contrib-websocket")
    (version "0.0.0-20160511215533-1f3b11f56072")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/fasthttp-contrib/websocket")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1yacmwmil625p0pzj800h9dnmiab6bjwfmi48p9fcrvy2yyv9b97"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/fasthttp-contrib/websocket"))
    (home-page "https://github.com/fasthttp-contrib/websocket")
    (synopsis #f)
    (description #f)
    (license #f)))

(define-public go-github-com-gin-contrib-sse
  (package
    (name "go-github-com-gin-contrib-sse")
    (version "0.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gin-contrib/sse")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "072nq91a65n5xvwslqjyvydfd0mfpnvb3vwjyfvmzm1ym96wr1nd"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gin-contrib/sse"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
    (home-page "https://github.com/gin-contrib/sse")
    (synopsis "Server-Sent Events")
    (description
      "Server-sent events (SSE) is a technology where a browser receives automatic updates from a server via HTTP connection.  The Server-Sent Events EventSource API is @url{http://www.w3.org/TR/2009/WD-eventsource-20091029/,standardized as part of HTML5[1] by the W3C}.")
    (license license:expat)))

(define-public go-github-com-go-playground-assert-v2
  (package
    (name "go-github-com-go-playground-assert-v2")
    (version "2.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-playground/assert")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1cl9c4s405zddzrj36hhs0a18g02zscdl46fyipp6k91mhvai8wz"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-playground/assert/v2"))
    (home-page "https://github.com/go-playground/assert")
    (synopsis "Package assert")
    (description
      "Package assert provides some basic assertion functions for testing and
also provides the building blocks for creating your own more complex
validations.
")
    (license license:expat)))

(define-public go-github-com-go-playground-validator-v10
  (package
    (name "go-github-com-go-playground-validator-v10")
    (version "10.9.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-playground/validator")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "06qgmksqsfsdc2w1zbf5rdll82irdnf3ii83l138ba5fwbw46csk"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-playground/validator/v10"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
        ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-rogpeppe-go-internal"
         ,go-github-com-rogpeppe-go-internal)
        ("go-github-com-leodido-go-urn" ,go-github-com-leodido-go-urn)
        ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
        ("go-github-com-go-playground-universal-translator"
         ,go-github-com-go-playground-universal-translator)
        ("go-github-com-go-playground-locales"
         ,go-github-com-go-playground-locales)
        ("go-github-com-go-playground-assert-v2"
         ,go-github-com-go-playground-assert-v2)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (home-page "https://github.com/go-playground/validator")
    (synopsis "Package validator")
    (description
      "Package validator implements value validations for structs and individual fields
based on tags.
")
    (license license:expat)))

(define-public go-github-com-gin-gonic-gin
  (package
    (name "go-github-com-gin-gonic-gin")
    (version "1.7.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gin-gonic/gin")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "11ykj4lc6pkp01fg2rwfawaycvhpr2wqnr9qp1wswiyig73kkdmi"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gin-gonic/gin"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
        ("go-github-com-ugorji-go-codec" ,go-github-com-ugorji-go-codec)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-json-iterator-go" ,go-github-com-json-iterator-go)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-go-playground-validator-v10"
         ,go-github-com-go-playground-validator-v10)
        ("go-github-com-gin-contrib-sse" ,go-github-com-gin-contrib-sse)))
    (home-page "https://github.com/gin-gonic/gin")
    (synopsis "Gin Web Framework")
    (description "Package gin implements a HTTP web framework called gin.
")
    (license license:expat)))

(define-public go-github-com-go-errors-errors
  (package
    (name "go-github-com-go-errors-errors")
    (version "1.4.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-errors/errors")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0nnb2d63jw3h0qfkqw2jpm7jkgfj72mf65v07j4apk9vh9907py3"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-errors/errors"))
    (home-page "https://github.com/go-errors/errors")
    (synopsis "go-errors/errors")
    (description "Package errors provides errors that have stack-traces.
")
    (license license:expat)))

(define-public go-github-com-go-martini-martini
  (package
    (name "go-github-com-go-martini-martini")
    (version "0.0.0-20170121215854-22fa46961aab")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-martini/martini")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "01ip3mwbnm5isq120ww73yrvbcn6n5944prhhbyf2ggyf6g46ylh"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-martini/martini"))
    (home-page "https://github.com/go-martini/martini")
    (synopsis "Martini")
    (description
      "Package martini is a powerful package for quickly writing modular web applications/services in Golang.
")
    (license license:expat)))

(define-public go-github-com-imkira-go-interpol
  (package
    (name "go-github-com-imkira-go-interpol")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/imkira/go-interpol")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "180h3pf2p0pch6hmqf45wk7wd87md83d3p122f8ll43x5nja5mph"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/imkira/go-interpol"))
    (home-page "https://github.com/imkira/go-interpol")
    (synopsis "interpol")
    (description
      "Package interpol provides utility functions for doing format-string like
string interpolation using named parameters.
Currently, a template only accepts variable placeholders delimited by brace
characters (eg. \"Hello {foo} {bar}\").
")
    (license license:expat)))

(define-public go-github-com-k0kubun-colorstring
  (package
    (name "go-github-com-k0kubun-colorstring")
    (version "0.0.0-20150214042306-9440f1994b88")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/k0kubun/colorstring")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0isskya7ky4k9znrh85crfc2pxwyfz2s8j1a5cbjb8b8zf2v0qbj"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/k0kubun/colorstring"))
    (home-page "https://github.com/k0kubun/colorstring")
    (synopsis "colorstring")
    (description
      "colorstring provides functions for colorizing strings for terminal
output.
")
    (license license:expat)))

(define-public go-github-com-cloudykit-fastprinter
  (package
    (name "go-github-com-cloudykit-fastprinter")
    (version "0.0.0-20200109182630-33d98a066a53")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/CloudyKit/fastprinter")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "06kkykc9rblq64q1bzi2r53r9y7iddi6abx2lhgkas55ld5qsjr9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/CloudyKit/fastprinter"))
    (home-page "https://github.com/CloudyKit/fastprinter")
    (synopsis "fastprinter")
    (description
      "FastPrinter supports write values in io.Writer without allocation")
    (license license:expat)))

(define-public go-github-com-cloudykit-jet-v3
  (package
    (name "go-github-com-cloudykit-jet-v3")
    (version "3.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/CloudyKit/jet")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1p99f10a5pm1v8rp4jr2w9lhxpzngkxfww102gvw4klbqs80bk6i"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/CloudyKit/jet/v3"))
    (propagated-inputs
      `(("go-github-com-cloudykit-fastprinter"
         ,go-github-com-cloudykit-fastprinter)))
    (home-page "https://github.com/CloudyKit/jet")
    (synopsis "Jet Template Engine for Go")
    (description
      "Jet is a template engine developed to be easy to use, powerful, dynamic, yet secure and very fast.")
    (license license:asl2.0)))

(define-public go-github-com-shopify-goreferrer
  (package
    (name "go-github-com-shopify-goreferrer")
    (version "0.0.0-20210630161223-536fa16abd6f")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Shopify/goreferrer")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1dcidyv9x0xszad0bg8mdc49ndzj4d6rq39gj031fhb6y06sb1rh"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/Shopify/goreferrer"))
    (home-page "https://github.com/Shopify/goreferrer")
    (synopsis "goreferrer")
    (description
      "This package provides a Go package that analyzes and classifies different kinds of referrer URLs (search, social, ...).")
    (license license:expat)))

(define-public go-github-com-aymerick-raymond
  (package
    (name "go-github-com-aymerick-raymond")
    (version "2.0.2+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/aymerick/raymond")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0s5nxzx87a12hcdzhliy1j8albfx2jqddaks4m86yfrcawm6vndn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/aymerick/raymond"))
    (home-page "https://github.com/aymerick/raymond")
    (synopsis "raymond")
    (description "Package raymond provides handlebars evaluation
")
    (license license:expat)))

(define-public go-github-com-andreasbriese-bbloom
  (package
    (name "go-github-com-andreasbriese-bbloom")
    (version "0.0.0-20190825152654-46b345b51c96")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/AndreasBriese/bbloom")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "021c0pl7r4pc9yslqhbjg9wr6dm03lnzf94a0b9c0hmg0bhhkln9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/AndreasBriese/bbloom"))
    (home-page "https://github.com/AndreasBriese/bbloom")
    (synopsis "bbloom: a bitset Bloom filter for go/golang")
    (description "===")
    (license #f)))
; TODO license

(define-public go-github-com-cespare-xxhash-v2
  (package
    (name "go-github-com-cespare-xxhash-v2")
    (version "2.1.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cespare/xxhash")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1f3wyr9msnnz94szrkmnfps9wm40s5sp9i4ak0kl92zcrkmpy29a"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/cespare/xxhash/v2"))
    (home-page "https://github.com/cespare/xxhash")
    (synopsis "xxhash")
    (description
      "Package xxhash implements the 64-bit variant of xxHash (XXH64) as described
at @url{http://cyan4973.github.io/xxHash/,http://cyan4973.github.io/xxHash/}.
")
    (license license:expat)))

(define-public go-github-com-dgryski-go-farm
  (package
    (name "go-github-com-dgryski-go-farm")
    (version "0.0.0-20200201041132-a6ae2369ad13")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/dgryski/go-farm")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1qbz4a4fv3853ix974x02q1129kc4xxf0c92ib5sdpsq04zjbqv8"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/dgryski/go-farm"))
    (home-page "https://github.com/dgryski/go-farm")
    (synopsis "go-farm")
    (description "FarmHash, a family of hash functions.")
    (license license:expat)))

(define-public go-github-com-golang-glog
  (package
    (name "go-github-com-golang-glog")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/glog")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0vm206qrvhn3d571bqcman6fnavw4y3a31ffrmv2xkk0li74h2bf"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang/glog"))
    (home-page "https://github.com/golang/glog")
    (synopsis "glog")
    (description
      "Package glog implements logging analogous to the Google-internal C++ INFO/ERROR/V setup.
It provides functions Info, Warning, Error, Fatal, plus formatting variants such as
Infof.  It also provides V-style logging controlled by the -v and -vmodule=file=2 flags.
")
    (license license:asl2.0)))

(define-public go-github-com-dgraph-io-ristretto
  (package
    (name "go-github-com-dgraph-io-ristretto")
    (version "0.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/dgraph-io/ristretto")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0lj1dwfqmk0f83c5jc17xdf3c919b8kgljchjv0l33jvjgxascav"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/dgraph-io/ristretto"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-golang-glog" ,go-github-com-golang-glog)
        ("go-github-com-dustin-go-humanize" ,go-github-com-dustin-go-humanize)
        ("go-github-com-dgryski-go-farm" ,go-github-com-dgryski-go-farm)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
        ("go-github-com-cespare-xxhash-v2" ,go-github-com-cespare-xxhash-v2)))
    (home-page "https://github.com/dgraph-io/ristretto")
    (synopsis "Ristretto")
    (description
      "Ristretto is a fast, fixed size, in-memory cache with a dual focus on
throughput and hit ratio performance.  You can easily add Ristretto to an
existing system and keep the most valuable data where you need it.
")
    (license license:asl2.0)))

(define-public go-github-com-dgraph-io-badger
  (package
    (name "go-github-com-dgraph-io-badger")
    (version "1.6.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/dgraph-io/badger")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0y37di0da6jciv1mwj0d8kv2xf56sribmwbcmd6ma65c5h6mdch9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/dgraph-io/badger"))
    (propagated-inputs
      `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)
        ("go-github-com-spaolacci-murmur3" ,go-github-com-spaolacci-murmur3)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-dustin-go-humanize" ,go-github-com-dustin-go-humanize)
        ("go-github-com-dgraph-io-ristretto"
         ,go-github-com-dgraph-io-ristretto)
        ("go-github-com-andreasbriese-bbloom"
         ,go-github-com-andreasbriese-bbloom)))
    (home-page "https://github.com/dgraph-io/badger")
    (synopsis "BadgerDB")
    (description
      "Package badger implements an embeddable, simple and fast key-value database,
written in pure Go.  It is designed to be highly performant for both reads and
writes simultaneously.  Badger uses Multi-Version Concurrency Control (MVCC), and
supports transactions.  It runs transactions concurrently, with serializable
snapshot isolation guarantees.
")
    (license license:asl2.0)))

(define-public go-github-com-eknkc-amber
  (package
    (name "go-github-com-eknkc-amber")
    (version "0.0.0-20171010120322-cdade1c07385")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/eknkc/amber")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "152w97yckwncgw7lwjvgd8d00wy6y0nxzlvx72kl7nqqxs9vhxd9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/eknkc/amber"))
    (home-page "https://github.com/eknkc/amber")
    (synopsis "amber")
    (description
      "Package amber is an elegant templating engine for Go Programming Language.
It is inspired from HAML and Jade.
")
    (license license:expat)))

(define-public go-github-com-etcd-io-bbolt
  (package
    (name "go-github-com-etcd-io-bbolt")
    (version "1.3.6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/etcd-io/bbolt")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0pj5245d417za41j6p09fmkbv05797vykr1bi9a6rnwddh1dbs8d"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/etcd-io/bbolt"))
    (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://github.com/etcd-io/bbolt")
    (synopsis "bbolt")
    (description
      "package bbolt implements a low-level key/value store in pure Go.  It supports
fully serializable transactions, ACID semantics, and lock-free MVCC with
multiple readers and a single writer.  Bolt can be used for projects that
want a simple data store without the need to add large dependencies such as
Postgres or MySQL.
")
    (license license:expat)))

(define-public go-github-com-fatih-structs
  (package
    (name "go-github-com-fatih-structs")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/fatih/structs")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1wrhb8wp8zpzggl61lapb627lw8yv281abvr6vqakmf569nswa9q"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/fatih/structs"))
    (home-page "https://github.com/fatih/structs")
    (synopsis "Structs")
    (description
      "Package structs contains various utilities functions to work with structs.
")
    (license license:expat)))

(define-public go-github-com-gavv-httpexpect
  (package
    (name "go-github-com-gavv-httpexpect")
    (version "1.1.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gavv/httpexpect")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0gnq1451d588nbgwc1q6xgl4facv6f6512v898y7vfylv9p5m1kq"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gavv/httpexpect"))
    (home-page "https://github.com/gavv/httpexpect")
    (synopsis "httpexpect")
    (description
      "Package httpexpect helps with end-to-end HTTP and REST API testing.
")
    (license license:expat)))

(define-public go-github-com-gomodule-redigo
  (package
    (name "go-github-com-gomodule-redigo")
    (version "1.8.5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gomodule/redigo")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "03h2hr3c1hrflh9wi21q3v5sncfjfzcdhdxq8r09rb73wr4ldkfl"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gomodule/redigo"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
    (home-page "https://github.com/gomodule/redigo")
    (synopsis "Redigo")
    (description
      "Redigo is a @url{http://golang.org/,Go} client for the @url{http://redis.io/,Redis} database.")
    (license license:asl2.0)))

(define-public go-github-com-iris-contrib-blackfriday
  (package
    (name "go-github-com-iris-contrib-blackfriday")
    (version "2.0.0+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/iris-contrib/blackfriday")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1gkizavajqmxm79il8r6cbi0g9ls3vwdh9wr0zy89vc9sq17p3im"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/iris-contrib/blackfriday"))
    (home-page "https://github.com/iris-contrib/blackfriday")
    (synopsis #f)
    (description #f)
    (license license:bsd-2)))

(define-public go-github-com-go-check-check
  (package
    (name "go-github-com-go-check-check")
    (version "0.0.0-20201130134442-10cb98267c6c")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-check/check")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1jwxndf8rsyx0fgrp47d99rp55yzssmryb92jfj3yf7zd8rjjljn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-check/check"))
    (propagated-inputs `(("go-github-com-kr-pretty" ,go-github-com-kr-pretty)))
    (home-page "https://github.com/go-check/check")
    (synopsis "Instructions")
    (description
      "Package check is a rich testing extension for Go's testing package.
")
    (license license:bsd-2)))

(define-public go-github-com-mattn-goveralls
  (package
    (name "go-github-com-mattn-goveralls")
    (version "0.0.11")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/mattn/goveralls")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "127cv8q9jj2bmz2qfnwaw7wxm32ivq1ynpsd5h7b7bhhvgxvcg8r"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/mattn/goveralls"))
    (propagated-inputs
      `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
        ("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-golang-org-x-mod" ,go-golang-org-x-mod)))
    (home-page "https://github.com/mattn/goveralls")
    (synopsis #f)
    (description #f)
    (license #f)))

(define-public go-gopkg-in-mgo-v2
  (package
    (name "go-gopkg-in-mgo-v2")
    (version "2.0.0-20190816093944-a6b53ec6cb22")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://gopkg.in/mgo.v2")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1lgvwxsbmdrf4938qkxl56wbwgbphk2qqnmpf73qdmlv4qsg14na"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "gopkg.in/mgo.v2" #:unpack-path "gopkg.in/mgo.v2"))
    (home-page "https://gopkg.in/mgo.v2")
    (synopsis "The MongoDB driver for Go")
    (description "Package mgo offers a rich MongoDB driver for Go.
")
    (license license:bsd-2)))

(define-public go-github-com-iris-contrib-pongo2
  (package
    (name "go-github-com-iris-contrib-pongo2")
    (version "0.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/iris-contrib/pongo2")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1a3pd65yjxcazrdhicy62j2870k78ccba976wnax3ixvpahkn7gj"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/iris-contrib/pongo2"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
        ("go-gopkg-in-mgo-v2" ,go-gopkg-in-mgo-v2)
        ("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-github-com-mattn-goveralls" ,go-github-com-mattn-goveralls)
        ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
        ("go-github-com-go-check-check" ,go-github-com-go-check-check)))
    (home-page "https://github.com/iris-contrib/pongo2")
    (synopsis "2")
    (description
      "This package provides a Django-syntax like template-engine
")
    (license license:expat)))

(define-public go-github-com-iris-contrib-schema
  (package
    (name "go-github-com-iris-contrib-schema")
    (version "0.0.6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/iris-contrib/schema")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0njlpmbb9pdkkl9ikmyi07h03zz4900w7986nfk0398w9bm3hffs"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/iris-contrib/schema"))
    (home-page "https://github.com/iris-contrib/schema")
    (synopsis #f)
    (description #f)
    (license #f)))

(define-public go-github-com-iris-contrib-jade
  (package
    (name "go-github-com-iris-contrib-jade")
    (version "1.1.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/iris-contrib/jade")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1bi77afk4db7wx294qri3s4hwhnmld5shxg736p16kj05aca29p5"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/iris-contrib/jade"))
    (home-page "https://github.com/iris-contrib/jade")
    (synopsis "Jade(Pug) Parser")
    (description
      "Jade.go - template engine.  Package implements Jade-lang templates for generating Go html/template output.
")
    (license license:bsd-3)))

(define-public go-github-com-modern-go-concurrent
  (package
    (name "go-github-com-modern-go-concurrent")
    (version "0.0.0-20180306012644-bacd9c7ef1dd")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/modern-go/concurrent")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0s0fxccsyb8icjmiym5k7prcqx36hvgdwl588y0491gi18k5i4zs"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/modern-go/concurrent"))
    (home-page "https://github.com/modern-go/concurrent")
    (synopsis "concurrent")
    (description
      "because sync.Map is only available in go 1.9, we can use concurrent.Map to make code portable")
    (license license:asl2.0)))

(define-public go-github-com-modern-go-reflect2
  (package
    (name "go-github-com-modern-go-reflect2")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/modern-go/reflect2")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "05a89f9j4nj8v1bchfkv2sy8piz746ikj831ilbp54g8dqhl8vzr"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/modern-go/reflect2"))
    (home-page "https://github.com/modern-go/reflect2")
    (synopsis "reflect2")
    (description "reflect api that avoids runtime reflect.Value cost")
    (license license:asl2.0)))

(define-public go-github-com-json-iterator-go
  (package
    (name "go-github-com-json-iterator-go")
    (version "1.1.12")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/json-iterator/go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1c8f0hxm18wivx31bs615x3vxs2j3ba0v6vxchsjhldc8kl311bz"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/json-iterator/go"))
    (propagated-inputs
      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-modern-go-reflect2" ,go-github-com-modern-go-reflect2)
        ("go-github-com-modern-go-concurrent"
         ,go-github-com-modern-go-concurrent)
        ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (home-page "https://github.com/json-iterator/go")
    (synopsis "Benchmark")
    (description
      "Package jsoniter implements encoding and decoding of JSON as defined in
@url{https://rfc-editor.org/rfc/rfc4627.html,RFC 4627} and provides interfaces with identical syntax of standard lib encoding/json.
Converting from encoding/json to jsoniter is no more than replacing the package with jsoniter
and variable type declarations (if any).
jsoniter interfaces gives 100% compatibility with code using standard lib.
")
    (license license:expat)))

(define-public go-github-com-gobwas-httphead
  (package
    (name "go-github-com-gobwas-httphead")
    (version "0.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gobwas/httphead")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "106l8ml5yihld3rrf45q5fhlsx64hrpj2dsvnnm62av4ya5nf0gb"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gobwas/httphead"))
    (home-page "https://github.com/gobwas/httphead")
    (synopsis "httphead.")
    (description
      "Package httphead contains utils for parsing HTTP and HTTP-grammar compatible
text protocols headers.
")
    (license license:expat)))

(define-public go-github-com-gobwas-pool
  (package
    (name "go-github-com-gobwas-pool")
    (version "0.2.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gobwas/pool")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0imipsf8nslc78in78wcri2ir2zzajp2h543dp2cshrrdbwkybx7"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gobwas/pool"))
    (home-page "https://github.com/gobwas/pool")
    (synopsis "pool")
    (description
      "Package pool contains helpers for pooling structures distinguishable by
size.
")
    (license license:expat)))

(define-public go-github-com-gobwas-ws
  (package
    (name "go-github-com-gobwas-ws")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gobwas/ws")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1nv7kksbm3swyp0z85zskdjqchr49bwkhk99cfgdpm3hx8516b87"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gobwas/ws"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-gobwas-pool" ,go-github-com-gobwas-pool)
        ("go-github-com-gobwas-httphead" ,go-github-com-gobwas-httphead)))
    (home-page "https://github.com/gobwas/ws")
    (synopsis "ws")
    (description
      "Package ws implements a client and server for the WebSocket protocol as
specified in @url{https://rfc-editor.org/rfc/rfc6455.html,RFC 6455}.
")
    (license license:expat)))

(define-public go-github-com-gorilla-websocket
  (package
    (name "go-github-com-gorilla-websocket")
    (version "1.4.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gorilla/websocket")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0mkm9w6kjkrlzab5wh8p4qxkc0icqawjbvr01d2nk6ykylrln40s"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gorilla/websocket"))
    (home-page "https://github.com/gorilla/websocket")
    (synopsis "Gorilla WebSocket")
    (description
      "Package websocket implements the WebSocket protocol defined in @url{https://rfc-editor.org/rfc/rfc6455.html,RFC 6455}.
")
    (license license:bsd-2)))

(define-public go-github-com-iris-contrib-go-uuid
  (package
    (name "go-github-com-iris-contrib-go-uuid")
    (version "2.0.0+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/iris-contrib/go.uuid")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0nc0ggn0a6bcwdrwinnx3z6889x65c20a2dwja0n8can3xblxs35"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/iris-contrib/go.uuid"))
    (home-page "https://github.com/iris-contrib/go.uuid")
    (synopsis "UUID package for Go language")
    (description
      "Package uuid provides implementation of Universally Unique Identifier (UUID).
Supported versions are 1, 3, 4 and 5 (as specified in @url{https://rfc-editor.org/rfc/rfc4122.html,RFC 4122}) and
version 2 (as specified in DCE 1.1).
")
    (license license:expat)))

(define-public go-github-com-nats-io-nkeys
  (package
    (name "go-github-com-nats-io-nkeys")
    (version "0.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nats-io/nkeys")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "06wbmb3cxjrcfvgfbn6rdfzb4pfaaw11bnvl1r4kig4ag22qcz7b"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nats-io/nkeys"))
    (propagated-inputs `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)))
    (home-page "https://github.com/nats-io/nkeys")
    (synopsis "NKEYS")
    (description
      "Package nkeys is an Ed25519 based public-key signature system that simplifies keys and seeds
and performs signing and verification.
")
    (license license:asl2.0)))

(define-public go-github-com-nats-io-nuid
  (package
    (name "go-github-com-nats-io-nuid")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nats-io/nuid")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "11zbhg4kds5idsya04bwz4plj0mmiigypzppzih731ppbk2ms1zg"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nats-io/nuid"))
    (home-page "https://github.com/nats-io/nuid")
    (synopsis "NUID")
    (description
      "This package provides a unique identifier generator that is high performance, very fast, and tries to be entropy pool friendly.
")
    (license license:asl2.0)))

(define-public go-github-com-nats-io-nats-go
  (package
    (name "go-github-com-nats-io-nats-go")
    (version "1.13.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nats-io/nats.go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0nnpp0llqsv1ijfliava5hlq3cb1bk20jz23fwfsvisgcjgbp384"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nats-io/nats.go"))
    (propagated-inputs
      `(("go-github-com-nats-io-nuid" ,go-github-com-nats-io-nuid)
        ("go-github-com-nats-io-nkeys" ,go-github-com-nats-io-nkeys)))
    (home-page "https://github.com/nats-io/nats.go")
    (synopsis "NATS - Go Client")
    (description
      "This package provides a Go client for the NATS messaging system (@url{https://nats.io,https://nats.io}).
")
    (license license:asl2.0)))

(define-public go-github-com-kataras-neffos
  (package
    (name "go-github-com-kataras-neffos")
    (version "0.0.18")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/kataras/neffos")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "18mm64dyym0q46ax5i0wg3rdlwsmipg86ibh1yfy436vvmb3l8pb"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/kataras/neffos"))
    (propagated-inputs
      `(("go-golang-org-x-sync" ,go-golang-org-x-sync)
        ("go-github-com-nats-io-nats-go" ,go-github-com-nats-io-nats-go)
        ("go-github-com-mediocregopher-radix-v3"
         ,go-github-com-mediocregopher-radix-v3)
        ("go-github-com-iris-contrib-go-uuid"
         ,go-github-com-iris-contrib-go-uuid)
        ("go-github-com-gorilla-websocket" ,go-github-com-gorilla-websocket)
        ("go-github-com-gobwas-ws" ,go-github-com-gobwas-ws)
        ("go-github-com-gobwas-pool" ,go-github-com-gobwas-pool)
        ("go-github-com-gobwas-httphead" ,go-github-com-gobwas-httphead)))
    (home-page "https://github.com/kataras/neffos")
    (synopsis "About neffos")
    (description
      "Neffos is a cross-platform real-time framework with expressive, elegant API written in @url{https://golang.org,Go}.  Neffos takes the pain out of development by easing common tasks used in real-time backend and frontend applications such as:")
    (license license:expat)))

(define-public go-github-com-kataras-sitemap
  (package
    (name "go-github-com-kataras-sitemap")
    (version "0.0.5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/kataras/sitemap")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "12alp5dw1xld5kb6bd5wh4bg95k41m5qcq8fafr9qp3yay645k88"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/kataras/sitemap"))
    (home-page "https://github.com/kataras/sitemap")
    (synopsis "Sitemap (Go)")
    (description
      "Package sitemap implements the Sitemap Protocol.
Reference: @url{https://www.sitemaps.org/protocol.html,https://www.sitemaps.org/protocol.html}
")
    (license license:expat)))

(define-public go-github-com-mediocregopher-radix-v3
  (package
    (name "go-github-com-mediocregopher-radix-v3")
    (version "3.7.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/mediocregopher/radix")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "06xvh8aqadf8gi1frflfpqsjqfi5qkfr0635z0aks1vy9pnpj907"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/mediocregopher/radix/v3"))
    (propagated-inputs
      `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (home-page "https://github.com/mediocregopher/radix")
    (synopsis "Radix")
    (description
      "Package radix implements all functionality needed to work with redis and all
things related to it, including redis cluster, pubsub, sentinel, scanning,
lua scripting, and more.
")
    (license license:expat)))

(define-public go-github-com-ryanuber-columnize
  (package
    (name "go-github-com-ryanuber-columnize")
    (version "2.1.2+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ryanuber/columnize")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0xxzzgvfabc2qx6n313vis8l4npkggiy5kjflv0arm2y7xnv73qj"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ryanuber/columnize"))
    (home-page "https://github.com/ryanuber/columnize")
    (synopsis "Columnize")
    (description "Easy column-formatted output for golang")
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

(define-public go-github-com-kataras-iris-v12
  (package
    (name "go-github-com-kataras-iris-v12")
    (version "12.1.8")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/kataras/iris")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1kk52h3b30q1wl6xrrdc6yy0d78wda9adbl5npvbdl7rl9h9v24k"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/kataras/iris/v12"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
        ("go-gopkg-in-ini-v1" ,go-gopkg-in-ini-v1)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-schollz-closestmatch"
         ,go-github-com-schollz-closestmatch)
        ("go-github-com-ryanuber-columnize" ,go-github-com-ryanuber-columnize)
        ("go-github-com-microcosm-cc-bluemonday"
         ,go-github-com-microcosm-cc-bluemonday)
        ("go-github-com-mediocregopher-radix-v3"
         ,go-github-com-mediocregopher-radix-v3)
        ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
        ("go-github-com-kataras-sitemap" ,go-github-com-kataras-sitemap)
        ("go-github-com-kataras-neffos" ,go-github-com-kataras-neffos)
        ("go-github-com-kataras-golog" ,go-github-com-kataras-golog)
        ("go-github-com-json-iterator-go" ,go-github-com-json-iterator-go)
        ("go-github-com-iris-contrib-jade" ,go-github-com-iris-contrib-jade)
        ("go-github-com-iris-contrib-schema"
         ,go-github-com-iris-contrib-schema)
        ("go-github-com-iris-contrib-pongo2"
         ,go-github-com-iris-contrib-pongo2)
        ("go-github-com-iris-contrib-go-uuid"
         ,go-github-com-iris-contrib-go-uuid)
        ("go-github-com-iris-contrib-blackfriday"
         ,go-github-com-iris-contrib-blackfriday)
        ("go-github-com-hashicorp-go-version"
         ,go-github-com-hashicorp-go-version)
        ("go-github-com-gomodule-redigo" ,go-github-com-gomodule-redigo)
        ("go-github-com-gavv-httpexpect" ,go-github-com-gavv-httpexpect)
        ("go-github-com-fatih-structs" ,go-github-com-fatih-structs)
        ("go-github-com-etcd-io-bbolt" ,go-github-com-etcd-io-bbolt)
        ("go-github-com-eknkc-amber" ,go-github-com-eknkc-amber)
        ("go-github-com-dgraph-io-badger" ,go-github-com-dgraph-io-badger)
        ("go-github-com-aymerick-raymond" ,go-github-com-aymerick-raymond)
        ("go-github-com-shopify-goreferrer" ,go-github-com-shopify-goreferrer)
        ("go-github-com-cloudykit-jet-v3" ,go-github-com-cloudykit-jet-v3)
        ("go-github-com-burntsushi-toml" ,go-github-com-burntsushi-toml)))
    (home-page "https://github.com/kataras/iris")
    (synopsis "News")
    (description
      "Package iris implements the highest realistic performance, easy to learn Go web framework.
Iris provides a beautifully expressive and easy to use foundation for your next website, API, or distributed app.
Low-level handlers compatible with `net/http` and high-level fastest MVC implementation and handlers dependency injection.
Easy to learn for new gophers and advanced features for experienced, it goes as far as you dive into it!
")
    (license license:bsd-3)))

(define-public go-github-com-golang-jwt-jwt
  (package
    (name "go-github-com-golang-jwt-jwt")
    (version "3.2.2+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang-jwt/jwt")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0hq8wz11g6kddx9ab0icl5h3k4lrivk1ixappnr5db2ng2wjks9c"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang-jwt/jwt"))
    (home-page "https://github.com/golang-jwt/jwt")
    (synopsis "jwt-go")
    (description
      "Package jwt is a Go implementation of JSON Web Tokens: @url{http://self-issued.info/docs/draft-jones-json-web-token.html,http://self-issued.info/docs/draft-jones-json-web-token.html}
")
    (license license:expat)))

(define-public go-github-com-labstack-gommon
  (package
    (name "go-github-com-labstack-gommon")
    (version "0.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/labstack/gommon")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "18z7akyzm75p6anm4b8qkqgm4iivx50z07hi5wf50w1pbsvbcdi0"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/labstack/gommon"))
    (propagated-inputs
      `(("go-github-com-valyala-fasttemplate"
         ,go-github-com-valyala-fasttemplate)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable"
         ,go-github-com-mattn-go-colorable)))
    (home-page "https://github.com/labstack/gommon")
    (synopsis "Gommon")
    (description "Common packages for Go")
    (license license:expat)))

(define-public go-github-com-valyala-fasttemplate
  (package
    (name "go-github-com-valyala-fasttemplate")
    (version "1.2.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/valyala/fasttemplate")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0bd1hxxg1bzx307adpd1s4yjaa6q51cqk4qvqskfflxvgll79vdn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/valyala/fasttemplate"))
    (propagated-inputs
      `(("go-github-com-valyala-bytebufferpool"
         ,go-github-com-valyala-bytebufferpool)))
    (home-page "https://github.com/valyala/fasttemplate")
    (synopsis "fasttemplate")
    (description
      "Package fasttemplate implements simple and fast template library.
")
    (license license:expat)))

(define-public go-github-com-labstack-echo-v4
  (package
    (name "go-github-com-labstack-echo-v4")
    (version "4.6.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/labstack/echo")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0j6q2axjr5aslq76xbacpl7wiimz2cx6ask1lhi7didmzmm3349g"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/labstack/echo/v4"))
    (propagated-inputs
      `(("go-golang-org-x-time" ,go-golang-org-x-time)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-valyala-fasttemplate"
         ,go-github-com-valyala-fasttemplate)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-labstack-gommon" ,go-github-com-labstack-gommon)
        ("go-github-com-golang-jwt-jwt" ,go-github-com-golang-jwt-jwt)))
    (home-page "https://github.com/labstack/echo")
    (synopsis "Supported Go versions")
    (description
      "Package echo implements high performance, minimalist Go web framework.
")
    (license license:expat)))

(define-public go-github-com-moul-http2curl
  (package
    (name "go-github-com-moul-http2curl")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/moul/http2curl")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "15bpx33d3ygya8dg8hbsn24h7acpajl27006pj8lw1c0bfvbnrl0"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/moul/http2curl"))
    (home-page "https://github.com/moul/http2curl")
    (synopsis "http2curl")
    (description
      "ð\x9f\x93\x90 Convert Golang's http.Request to CURL command line")
    (license license:expat)))

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

(define-public go-github-com-go-task-slim-sprig
  (package
    (name "go-github-com-go-task-slim-sprig")
    (version "2.20.0+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-task/slim-sprig")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0p14axjkiznjrhl7gbmlc1fliq125xkckn1y9vy2jalslzrgprvv"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-task/slim-sprig"))
    (home-page "https://github.com/go-task/slim-sprig")
    (synopsis "Sprig: Template functions for Go templates")
    (description "Sprig: Template functions for Go.
")
    (license license:expat)))

(define-public go-gopkg-in-tomb-v1
  (package
    (name "go-gopkg-in-tomb-v1")
    (version "1.0.0-20141024135613-dd632973f1e7")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://gopkg.in/tomb.v1")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1lqmq1ag7s4b3gc3ddvr792c5xb5k6sfn0cchr3i2s7f1c231zjv"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "gopkg.in/tomb.v1" #:unpack-path "gopkg.in/tomb.v1"))
    (home-page "https://gopkg.in/tomb.v1")
    (synopsis "Installation and usage")
    (description
      "The tomb package offers a conventional API for clean goroutine termination.
")
    (license license:bsd-3)))

(define-public go-github-com-nxadm-tail
  (package
    (name "go-github-com-nxadm-tail")
    (version "1.4.8")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nxadm/tail")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1j2gi485fhwdpmyzn42wk62103fclwbfywg42p275z1qv2bsz1rc"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nxadm/tail"))
    (propagated-inputs
      `(("go-gopkg-in-tomb-v1" ,go-gopkg-in-tomb-v1)
        ("go-github-com-fsnotify-fsnotify" ,go-github-com-fsnotify-fsnotify)))
    (home-page "https://github.com/nxadm/tail")
    (synopsis "tail functionality in Go")
    (description
      "nxadm/tail provides a Go library that emulates the features of the BSD `tail`
program.  The library comes with full support for truncation/move detection as
it is designed to work with log rotation tools.  The library works on all
operating systems supported by Go, including POSIX systems like Linux and
*BSD, and MS Windows.  Go 1.9 is the oldest compiler release supported.
")
    (license license:expat)))

(define-public go-github-com-onsi-ginkgo
  (package
    (name "go-github-com-onsi-ginkgo")
    (version "1.16.5")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/onsi/ginkgo")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1hh6n7q92y0ai8k6rj2yzw6wwxikhyiyk4j92zgvf1zad0gmqqmz"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/onsi/ginkgo"))
    (propagated-inputs
      `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
        ("go-github-com-nxadm-tail" ,go-github-com-nxadm-tail)
        ("go-github-com-go-task-slim-sprig"
         ,go-github-com-go-task-slim-sprig)))
    (home-page "https://github.com/onsi/ginkgo")
    (synopsis "Ginkgo 2.0 Release Candidate is available!")
    (description "Ginkgo is a BDD-style testing framework for Golang
")
    (license license:expat)))

(define-public go-github-com-onsi-gomega
  (package
    (name "go-github-com-onsi-gomega")
    (version "1.16.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/onsi/gomega")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1i3aqvhk5ff9x92rvxcp4ycjc44qwblpg0ndlm6izjz7x1ri01fc"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/onsi/gomega"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-onsi-ginkgo" ,go-github-com-onsi-ginkgo)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
    (home-page "https://github.com/onsi/gomega")
    (synopsis ": a BDD Testing Framework for Golang")
    (description
      "Gomega is the Ginkgo BDD-style testing framework's preferred matcher library.
")
    (license license:expat)))

(define-public go-github-com-pingcap-errors
  (package
    (name "go-github-com-pingcap-errors")
    (version "0.11.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/pingcap/errors")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "02k6b30m42aya763fnwx3paq4r8h28yav4i2kv2z4r28r70xxcgn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/pingcap/errors"))
    (home-page "https://github.com/pingcap/errors")
    (synopsis "errors")
    (description "Package errors provides simple error handling primitives.
")
    (license license:bsd-2)))

(define-public go-github-com-jtolds-gls
  (package
    (name "go-github-com-jtolds-gls")
    (version "4.20.0+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jtolio/gls")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1k7xd2q2ysv2xsh373qs801v6f359240kx0vrl0ydh7731lngvk6"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jtolds/gls"))
    (home-page "https://github.com/jtolds/gls")
    (synopsis "gls")
    (description "Package gls implements goroutine-local storage.
")
    (license license:expat)))

(define-public go-github-com-smartystreets-assertions
  (package
    (name "go-github-com-smartystreets-assertions")
    (version "1.2.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/smartystreets/assertions")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1iyminxmipvddm0hz8v69is4mga6ghif5ilmfz9s0d9kwmirbcn0"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/smartystreets/assertions"))
    (home-page "https://github.com/smartystreets/assertions")
    (synopsis #f)
    (description
      "Package assertions contains the implementations for all assertions which
are referenced in goconvey's `convey` package
(github.com/smartystreets/goconvey/convey) and gunit (github.com/smartystreets/gunit)
for use with the So(...) method.
They can also be used in traditional Go test functions and even in
applications.
")
    (license license:expat)))

(define-public go-github-com-smartystreets-goconvey
  (package
    (name "go-github-com-smartystreets-goconvey")
    (version "1.6.6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/smartystreets/goconvey")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1wi9wdmvbpd4phf586aghkn80aymib8mapgkvs5nnb21lfiwbqjy"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/smartystreets/goconvey"))
    (propagated-inputs
      `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-github-com-smartystreets-assertions"
         ,go-github-com-smartystreets-assertions)
        ("go-github-com-jtolds-gls" ,go-github-com-jtolds-gls)
        ("go-github-com-gopherjs-gopherjs" ,go-github-com-gopherjs-gopherjs)))
    (home-page "https://github.com/smartystreets/goconvey")
    (synopsis "GoConvey is awesome Go testing")
    (description
      "This executable provides an HTTP server that watches for file system changes
to .go files within the working directory (and all nested go packages).
Navigating to the configured host and port in a web browser will display the
latest results of running `go test` in each go package.
")
    (license license:expat)))

(define-public go-github-com-ugorji-go-codec
  (package
    (name "go-github-com-ugorji-go-codec")
    (version "1.2.6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ugorji/go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0nwqx41f82r9rmdhzi01bgvwpsa7jgcl3s6n3r7q3hq48kw13g67"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "github.com/ugorji/go/codec"
        #:unpack-path
        "github.com/ugorji/go"))
    (propagated-inputs `(("go-github-com-ugorji-go" ,go-github-com-ugorji-go)))
    (home-page "https://github.com/ugorji/go")
    (synopsis "Package Documentation for github.com/ugorji/go/codec")
    (description
      "Package codec provides a
High Performance, Feature-Rich Idiomatic Go 1.4+ codec/encoding library
for binc, msgpack, cbor, json.
")
    (license license:expat)))

(define-public go-github-com-ugorji-go
  (package
    (name "go-github-com-ugorji-go")
    (version "1.2.6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ugorji/go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0nwqx41f82r9rmdhzi01bgvwpsa7jgcl3s6n3r7q3hq48kw13g67"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ugorji/go"))
    (propagated-inputs
      `(("go-github-com-ugorji-go-codec" ,go-github-com-ugorji-go-codec)))
    (home-page "https://github.com/ugorji/go")
    (synopsis "go-codec")
    (description
      "This repository contains the @code{go-codec} library, the @code{codecgen} tool and
benchmarks for comparing against other libraries.")
    (license license:expat)))

(define-public go-github-com-urfave-negroni
  (package
    (name "go-github-com-urfave-negroni")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/urfave/negroni")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1gp6j74adi1cn8fq5v3wzlzhwl4zg43n2746m4fzdcdimihk3ccp"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/urfave/negroni"))
    (home-page "https://github.com/urfave/negroni")
    (synopsis "Negroni")
    (description
      "Package negroni is an idiomatic approach to web middleware in Go.  It is tiny, non-intrusive, and encourages use of net/http Handlers.
")
    (license license:expat)))

(define-public go-github-com-andybalholm-brotli
  (package
    (name "go-github-com-andybalholm-brotli")
    (version "1.0.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/andybalholm/brotli")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "16y3z6rpi0a699vh9sxmdj4w2hvb5dvmci8wc9y6dsi8j6sxpmw3"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/andybalholm/brotli"))
    (home-page "https://github.com/andybalholm/brotli")
    (synopsis #f)
    (description
      "This package is a brotli compressor and decompressor implemented in Go.
It was translated from the reference implementation (@url{https://github.com/google/brotli,https://github.com/google/brotli})
with the @code{c2go} tool at @url{https://github.com/andybalholm/c2go,https://github.com/andybalholm/c2go}.")
    (license license:expat)))

(define-public go-github-com-valyala-bytebufferpool
  (package
    (name "go-github-com-valyala-bytebufferpool")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/valyala/bytebufferpool")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "01lqzjddq6kz9v41nkky7wbgk7f1cw036sa7ldz10d82g5klzl93"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/valyala/bytebufferpool"))
    (home-page "https://github.com/valyala/bytebufferpool")
    (synopsis "bytebufferpool")
    (description
      "Package bytebufferpool implements a pool of byte buffers
with anti-fragmentation protection.
")
    (license license:expat)))

(define-public go-github-com-valyala-tcplisten
  (package
    (name "go-github-com-valyala-tcplisten")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/valyala/tcplisten")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1fv5hxmq1jwrjn1rdjvbmjrrkb601zcdh01qhx6d8l7ss6n05zb8"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/valyala/tcplisten"))
    (home-page "https://github.com/valyala/tcplisten")
    (synopsis #f)
    (description
      "Package tcplisten provides customizable TCP net.Listener with various
performance-related options:
")
    (license license:expat)))

(define-public go-github-com-valyala-fasthttp
  (package
    (name "go-github-com-valyala-fasthttp")
    (version "1.31.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/valyala/fasthttp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ra0n2shcp11736xv37cjnsqn32gvqfm3dkf9v8j98xmch2wqxqg"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/valyala/fasthttp"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-valyala-tcplisten" ,go-github-com-valyala-tcplisten)
        ("go-github-com-valyala-bytebufferpool"
         ,go-github-com-valyala-bytebufferpool)
        ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
        ("go-github-com-andybalholm-brotli"
         ,go-github-com-andybalholm-brotli)))
    (home-page "https://github.com/valyala/fasthttp")
    (synopsis "fasthttp")
    (description
      "Package fasthttp provides fast HTTP server and client API.
")
    (license license:expat)))

(define-public go-github-com-xeipuuv-gojsonpointer
  (package
    (name "go-github-com-xeipuuv-gojsonpointer")
    (version "0.0.0-20190905194746-02993c407bfb")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/xeipuuv/gojsonpointer")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0y7gmpgsm8c12ax4a0ij9srmd9d424iq224n172ckwfqf37amvzy"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/xeipuuv/gojsonpointer"))
    (home-page "https://github.com/xeipuuv/gojsonpointer")
    (synopsis "gojsonpointer")
    (description "An implementation of JSON Pointer - Go language")
    (license license:asl2.0)))

(define-public go-github-com-xeipuuv-gojsonreference
  (package
    (name "go-github-com-xeipuuv-gojsonreference")
    (version "0.0.0-20180127040603-bd5ef7bd5415")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/xeipuuv/gojsonreference")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1xby79padc7bmyb8rfbad8wfnfdzpnh51b1n8c0kibch0kwc1db5"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/xeipuuv/gojsonreference"))
    (home-page "https://github.com/xeipuuv/gojsonreference")
    (synopsis "gojsonreference")
    (description "An implementation of JSON Reference - Go language")
    (license license:asl2.0)))

(define-public go-github-com-xeipuuv-gojsonschema
  (package
    (name "go-github-com-xeipuuv-gojsonschema")
    (version "1.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/xeipuuv/gojsonschema")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1mqiq0r8qw4qlfp3ls8073r6514rmzwrmdn4j33rppk3zh942i6l"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/xeipuuv/gojsonschema"))
    (propagated-inputs
      `(("go-github-com-xeipuuv-gojsonreference"
         ,go-github-com-xeipuuv-gojsonreference)
        ("go-github-com-xeipuuv-gojsonpointer"
         ,go-github-com-xeipuuv-gojsonpointer)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
    (home-page "https://github.com/xeipuuv/gojsonschema")
    (synopsis "gojsonschema")
    (description
      "An implementation of JSON Schema for the Go  programming language.  Supports draft-04, draft-06 and draft-07.")
    (license license:asl2.0)))

(define-public go-github-com-yalp-jsonpath
  (package
    (name "go-github-com-yalp-jsonpath")
    (version "0.0.0-20180802001716-5cc68e5049a0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/yalp/jsonpath")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0kkyxp1cg3kfxy5hhwzxg132jin4xb492z5jpqq94ix15v6rdf4b"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/yalp/jsonpath"))
    (home-page "https://github.com/yalp/jsonpath")
    (synopsis "jsonpath")
    (description
      "Package jsonpath implements Stefan Goener's JSONPath @url{http://goessner.net/articles/JsonPath/,http://goessner.net/articles/JsonPath/}
")
    (license license:bsd-3)))

(define-public go-github-com-yudai-gojsondiff
  (package
    (name "go-github-com-yudai-gojsondiff")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/yudai/gojsondiff")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0qnymi0027mb8kxm24mmd22bvjrdkc56c7f4q3lbdf93x1vxbbc2"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/yudai/gojsondiff"))
    (home-page "https://github.com/yudai/gojsondiff")
    (synopsis "Go JSON Diff (and Patch)")
    (description
      "Package gojsondiff implements \"Diff\" that compares two JSON objects and
generates Deltas that describes differences between them.  The package also
provides \"Patch\" that apply Deltas to a JSON object.
")
    (license license:expat)))

(define-public go-github-com-yudai-golcs
  (package
    (name "go-github-com-yudai-golcs")
    (version "0.0.0-20170316035057-ecda9a501e82")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/yudai/golcs")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0mx6wc5fz05yhvg03vvps93bc5mw4vnng98fhmixd47385qb29pq"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/yudai/golcs"))
    (home-page "https://github.com/yudai/golcs")
    (synopsis "Go Longest Common Subsequence (LCS)")
    (description
      "package lcs provides functions to calculate Longest Common Subsequence (LCS)
values from two arbitrary arrays.
")
    (license license:expat)))

(define-public go-github-com-yudai-pp
  (package
    (name "go-github-com-yudai-pp")
    (version "2.0.1+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/yudai/pp")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "18vbc7jagnjw1wpvhqjffl0np7bzzqdd9jpdcisvj5h85lbyn5gk"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/yudai/pp"))
    (home-page "https://github.com/yudai/pp")
    (synopsis #f)
    (description #f)
    (license #f)))

(define-public go-github-com-getsentry-sentry-go
  (package
    (name "go-github-com-getsentry-sentry-go")
    (version "0.11.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/getsentry/sentry-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0hisknhn2r6g2fz3kgypa99jvixxkwz8sfyq7x64jy97y2sh2lil"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/getsentry/sentry-go"))
    (propagated-inputs
      `(("go-github-com-yudai-pp" ,go-github-com-yudai-pp)
        ("go-github-com-yudai-golcs" ,go-github-com-yudai-golcs)
        ("go-github-com-yudai-gojsondiff" ,go-github-com-yudai-gojsondiff)
        ("go-github-com-yalp-jsonpath" ,go-github-com-yalp-jsonpath)
        ("go-github-com-xeipuuv-gojsonschema"
         ,go-github-com-xeipuuv-gojsonschema)
        ("go-github-com-valyala-fasthttp" ,go-github-com-valyala-fasthttp)
        ("go-github-com-urfave-negroni" ,go-github-com-urfave-negroni)
        ("go-github-com-ugorji-go" ,go-github-com-ugorji-go)
        ("go-github-com-smartystreets-goconvey"
         ,go-github-com-smartystreets-goconvey)
        ("go-github-com-shurcool-sanitized-anchor-name"
         ,go-github-com-shurcool-sanitized-anchor-name)
        ("go-github-com-sergi-go-diff" ,go-github-com-sergi-go-diff)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-pingcap-errors" ,go-github-com-pingcap-errors)
        ("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
        ("go-github-com-onsi-ginkgo" ,go-github-com-onsi-ginkgo)
        ("go-github-com-moul-http2curl" ,go-github-com-moul-http2curl)
        ("go-github-com-labstack-echo-v4" ,go-github-com-labstack-echo-v4)
        ("go-github-com-kataras-iris-v12" ,go-github-com-kataras-iris-v12)
        ("go-github-com-k0kubun-colorstring"
         ,go-github-com-k0kubun-colorstring)
        ("go-github-com-imkira-go-interpol" ,go-github-com-imkira-go-interpol)
        ("go-github-com-google-go-querystring"
         ,go-github-com-google-go-querystring)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-go-martini-martini" ,go-github-com-go-martini-martini)
        ("go-github-com-go-errors-errors" ,go-github-com-go-errors-errors)
        ("go-github-com-gin-gonic-gin" ,go-github-com-gin-gonic-gin)
        ("go-github-com-fasthttp-contrib-websocket"
         ,go-github-com-fasthttp-contrib-websocket)
        ("go-github-com-codegangsta-inject" ,go-github-com-codegangsta-inject)
        ("go-github-com-ajg-form" ,go-github-com-ajg-form)))
    (home-page "https://github.com/getsentry/sentry-go")
    (synopsis "Official Sentry SDK for Go")
    (description "Package sentry is the official Sentry SDK for Go.
")
    (license license:bsd-2)))

(define-public go-github-com-go-resty-resty-v2
  (package
    (name "go-github-com-go-resty-resty-v2")
    (version "2.6.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-resty/resty")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "05b64c0jh2c9br25zzazdpbwy2845jaxhzcr89q73hzvk7h0pgkv"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/go-resty/resty/v2"))
    (propagated-inputs `(("go-golang-org-x-net" ,go-golang-org-x-net)))
    (home-page "https://github.com/go-resty/resty")
    (synopsis "News")
    (description
      "Package resty provides Simple HTTP and REST client library for Go.
")
    (license license:expat)))

(define-public go-github-com-golang-mock
  (package
    (name "go-github-com-golang-mock")
    (version "1.6.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/mock")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1hara8j0x431njjhqxfrg1png7xa1gbrpwza6ya4mwlx76hppap4"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang/mock"))
    (propagated-inputs
      `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-golang-org-x-mod" ,go-golang-org-x-mod)))
    (home-page "https://github.com/golang/mock")
    (synopsis "gomock")
    (description
      "gomock is a mocking framework for the @url{http://golang.org/,Go programming language}.  It
integrates well with Go's built-in @code{testing} package, but can be used in other
contexts too.")
    (license license:asl2.0)))

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

(define-public go-github-com-jaytaylor-html2text
  (package
    (name "go-github-com-jaytaylor-html2text")
    (version "0.0.0-20211013233858-90c08c5027d3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jaytaylor/html2text")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zxb2ym0rz087hwzcgd6ja717930k2clhs7995yvbspncswidmgb"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jaytaylor/html2text"))
    (home-page "https://github.com/jaytaylor/html2text")
    (synopsis "html2text")
    (description "Ensure your emails are readable by all!")
    (license license:expat)))

(define-public go-github-com-keybase-go-dbus
  (package
    (name "go-github-com-keybase-go-dbus")
    (version "0.0.0-20200324223359-a94be52c0b03")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/keybase/go.dbus")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1wsmzx41ri8isvippzjfbh2jkzr0zfg0vz94lq3rhigfjxb6rw8s"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/keybase/go.dbus"))
    (home-page "https://github.com/keybase/go.dbus")
    (synopsis "go.dbus")
    (description
      "Package dbus implements bindings to the D-Bus message bus system.
")
    (license license:bsd-2)))

(define-public go-github-com-keybase-go-keychain
  (package
    (name "go-github-com-keybase-go-keychain")
    (version "0.0.0-20201121013009-976c83ec27a6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/keybase/go-keychain")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0sc9gv78x3ypjnss8v18ipn0z54zn50gynhp6hz23ym5ic7y4mp1"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/keybase/go-keychain"))
    (propagated-inputs
      `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-keybase-go-dbus" ,go-github-com-keybase-go-dbus)))
    (home-page "https://github.com/keybase/go-keychain")
    (synopsis "Go Keychain")
    (description
      "This package provides a library for accessing the Keychain for macOS, iOS, and Linux in Go (golang).")
    (license license:expat)))

(define-public go-github-com-logrusorgru-aurora
  (package
    (name "go-github-com-logrusorgru-aurora")
    (version "2.0.3+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/logrusorgru/aurora")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1ck2j2ff2avph07vgq0r1y7hmbqgvk339rvph45dcwgci23lb3pf"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/logrusorgru/aurora"))
    (home-page "https://github.com/logrusorgru/aurora")
    (synopsis "Aurora")
    (description "Package aurora implements ANSI-colors
")
    (license license:unlicense)))

(define-public go-github-com-rivo-uniseg
  (package
    (name "go-github-com-rivo-uniseg")
    (version "0.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/rivo/uniseg")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0j7h22vfmjj562vr8gpsyrkrwp1pq9ayh5fylv24skxb467g9f0q"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/rivo/uniseg"))
    (home-page "https://github.com/rivo/uniseg")
    (synopsis "Unicode Text Segmentation for Go")
    (description
      "Package uniseg implements Unicode Text Segmentation according to Unicode
Standard Annex #29 (@url{http://unicode.org/reports/tr29/,http://unicode.org/reports/tr29/}).
")
    (license license:expat)))

(define-public go-github-com-mattn-go-runewidth
  (package
    (name "go-github-com-mattn-go-runewidth")
    (version "0.0.13")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/mattn/go-runewidth")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1yir0f3wc5z5hnkwhvx5qb6nmpfb05zp2gvfjvna63s8kmla1rrn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/mattn/go-runewidth"))
    (propagated-inputs
      `(("go-github-com-rivo-uniseg" ,go-github-com-rivo-uniseg)))
    (home-page "https://github.com/mattn/go-runewidth")
    (synopsis "go-runewidth")
    (description
      "This package provides functions to get fixed width of the character or string.")
    (license license:expat)))

(define-public go-github-com-miekg-dns
  (package
    (name "go-github-com-miekg-dns")
    (version "1.1.43")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/miekg/dns")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "071nz8l4ml347ivzdfjn5vsy089mprislyah62hvbiv4d4f4nsqm"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/miekg/dns"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-sync" ,go-golang-org-x-sync)
        ("go-golang-org-x-net" ,go-golang-org-x-net)))
    (home-page "https://github.com/miekg/dns")
    (synopsis "Alternative (more granular) approach to a DNS library")
    (description
      "Package dns implements a full featured interface to the Domain Name System.
Both server- and client-side programming is supported.  The package allows
complete control over what is sent out to the DNS.  The API follows the
less-is-more principle, by presenting a small, clean interface.
")
    (license license:bsd-3)))

(define-public go-github-com-nsf-jsondiff
  (package
    (name "go-github-com-nsf-jsondiff")
    (version "0.0.0-20210926074059-1e845ec5d249")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nsf/jsondiff")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0kv936d3nf37b7wdyg3n5hihadggiyfndyxm72fs49w6m937q4sf"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nsf/jsondiff"))
    (home-page "https://github.com/nsf/jsondiff")
    (synopsis "JsonDiff library")
    (description
      "The main purpose of the library is integration into tests which use json and providing human-readable output of test results.")
    (license license:expat)))

(define-public go-github-com-skratchdot-open-golang
  (package
    (name "go-github-com-skratchdot-open-golang")
    (version "0.0.0-20200116055534-eef842397966")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/skratchdot/open-golang")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0n6387csjn024db8wldadsiy8ljz7lk7szl6ls28fcbkax7rw86y"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/skratchdot/open-golang"))
    (home-page "https://github.com/skratchdot/open-golang")
    (synopsis "open")
    (description
      "Copyright (c) 2013 skratchdot
Licensed under the MIT license.")
    (license license:expat)))

(define-public go-github-com-ssor-bom
  (package
    (name "go-github-com-ssor-bom")
    (version "0.0.0-20170718123548-6386211fdfcf")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ssor/bom")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "09g5496ifwqxqclh2iw58plcwcz0sczlnxwqxzwmnl4shdl371ld"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ssor/bom"))
    (home-page "https://github.com/ssor/bom")
    (synopsis "bom")
    (description "small tools for cleaning bom from byte array or reader")
    (license license:expat)))

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

(define-public go-github-com-neelance-astrewrite
  (package
    (name "go-github-com-neelance-astrewrite")
    (version "0.0.0-20160511093645-99348263ae86")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/neelance/astrewrite")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "07527807p8q6h05iq4qy0xrlcmwyzj76gpk0yqf71yaj447mz24v"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/neelance/astrewrite"))
    (home-page "https://github.com/neelance/astrewrite")
    (synopsis #f)
    (description #f)
    (license license:bsd-2)))

(define-public go-github-com-shurcool-go
  (package
    (name "go-github-com-shurcool-go")
    (version "0.0.0-20200502201357-93f07166e636")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/shurcooL/go")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0wgwlhsgx1c2v650xvf099hgrd4av18gfb0kha09klmsh0p0hc5r"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/shurcooL/go"))
    (home-page "https://github.com/shurcooL/go")
    (synopsis "go")
    (description "Common Go code.")
    (license license:expat)))

(define-public go-github-com-shurcool-httpfs
  (package
    (name "go-github-com-shurcool-httpfs")
    (version "0.0.0-20190707220628-8d4bc4ba7749")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/shurcooL/httpfs")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0qjkbjnp86kjr7r0xjwp39blnk1ggkzy6zm3xphr5dpin4jkgfa1"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/shurcooL/httpfs"))
    (home-page "https://github.com/shurcooL/httpfs")
    (synopsis "httpfs")
    (description
      "Collection of Go packages for working with the @url{https://godoc.org/net/http#FileSystem,(code http.FileSystem)} interface.")
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
          (base32 "1mn0kg48xkd74brf48qf5hzp0bc6g8cf5a77w895rl3qnlpfw152"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/inconshreveable/mousetrap"))
    (home-page "https://github.com/inconshreveable/mousetrap")
    (synopsis "mousetrap")
    (description "mousetrap is a tiny library that answers a single question.")
    (license license:asl2.0)))

(define-public go-github-com-shurcool-vfsgen
  (package
    (name "go-github-com-shurcool-vfsgen")
    (version "0.0.0-20200824052919-0d455de96546")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/shurcooL/vfsgen")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0md1vgaq95x1jmxpnsfv6s9xf3v8gqi7lcl7mkxpf6274rf1n2pk"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/shurcooL/vfsgen"))
    (home-page "https://github.com/shurcooL/vfsgen")
    (synopsis "vfsgen")
    (description
      "Package vfsgen takes an http.FileSystem (likely at `go generate` time) and
generates Go code that statically implements the provided http.FileSystem.
")
    (license license:expat)))

(define-public go-github-com-gopherjs-gopherjs
  (package
    (name "go-github-com-gopherjs-gopherjs")
    (version "0.0.0-20211004101933-6b77bd30416d")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gopherjs/gopherjs")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0f9rjwz4sp0zd1l073415yfjh2cn39rxrcx90sj43lwr3r9r1sdn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gopherjs/gopherjs"))
    (propagated-inputs
      `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
        ("go-golang-org-x-term" ,go-golang-org-x-term)
        ("go-github-com-shurcool-vfsgen" ,go-github-com-shurcool-vfsgen)
        ("go-github-com-inconshreveable-mousetrap"
         ,go-github-com-inconshreveable-mousetrap)
        ("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-sync" ,go-golang-org-x-sync)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
        ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)
        ("go-github-com-shurcool-httpfs" ,go-github-com-shurcool-httpfs)
        ("go-github-com-shurcool-go" ,go-github-com-shurcool-go)
        ("go-github-com-neelance-sourcemap" ,go-github-com-neelance-sourcemap)
        ("go-github-com-neelance-astrewrite"
         ,go-github-com-neelance-astrewrite)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-fsnotify-fsnotify" ,go-github-com-fsnotify-fsnotify)))
    (home-page "https://github.com/gopherjs/gopherjs")
    (synopsis "GopherJS - A compiler from Go to JavaScript")
    (description
      "GopherJS compiles Go code (@url{https://golang.org/,golang.org}) to pure JavaScript code.  Its main purpose is to give you the opportunity to write front-end code in Go which will still run in all browsers.")
    (license license:bsd-2)))

(define-public go-github-com-konsorten-go-windows-terminal-sequences
  (package
    (name "go-github-com-konsorten-go-windows-terminal-sequences")
    (version "1.0.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/konsorten/go-windows-terminal-sequences")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1yrsd4s8vhjnxhwbigirymz89dn6qfjnhn28i33vvvdgf96j6ypl"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/konsorten/go-windows-terminal-sequences"))
    (home-page "https://github.com/konsorten/go-windows-terminal-sequences")
    (synopsis "Windows Terminal Sequences")
    (description
      "This library allow for enabling Windows terminal color support for Go.")
    (license license:expat)))

(define-public go-github-com-golang-crypto
  (package
    (name "go-github-com-golang-crypto")
    (version "0.0.0-20210921155107-089bfa567519")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/crypto")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0i49ywadw5hp30i4dghwjwhbrfxq881jxskhnz7gwps5kb0bdnjf"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang/crypto"))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-term" ,go-golang-org-x-term)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-net" ,go-golang-org-x-net)))
    (home-page "https://github.com/golang/crypto")
    (synopsis "Go Cryptography")
    (description
      "This repository holds supplementary Go cryptography libraries.")
    (license license:bsd-3)))

(define-public go-github-com-golang-net
  (package
    (name "go-github-com-golang-net")
    (version "0.0.0-20211013171255-e13a2654a71e")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/net")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1prm9ccyb1ixnmlnywm9xqi7hzvgywvjmk6yz3m3bipf3m2fwhd5"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang/net"))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-term" ,go-golang-org-x-term)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://github.com/golang/net")
    (synopsis "Go Networking")
    (description
      "This repository holds supplementary Go networking libraries.")
    (license license:bsd-3)))

(define-public go-github-com-golang-sys
  (package
    (name "go-github-com-golang-sys")
    (version "0.0.0-20211013075003-97ac67df715c")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/sys")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0y59x9lgwg7vc08ynifk0i9l5z3syvdfsaqjz8a109s90ylyvg7v"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang/sys"))
    (home-page "https://github.com/golang/sys")
    (synopsis "sys")
    (description
      "This repository holds supplemental Go packages for low-level interactions with
the operating system.")
    (license license:bsd-3)))

(define-public go-github-com-golang-tools
  (package
    (name "go-github-com-golang-tools")
    (version "0.1.7")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/tools")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0nn8m2j5vz6p6azq2m5yn20qi0m8n5m439ihk7aabf6lc4lpx4g9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang/tools"))
    (propagated-inputs
      `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-sync" ,go-golang-org-x-sync)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-mod" ,go-golang-org-x-mod)
        ("go-github-com-yuin-goldmark" ,go-github-com-yuin-goldmark)))
    (home-page "https://github.com/golang/tools")
    (synopsis "Go Tools")
    (description
      "This subrepository holds the source for various packages and tools that support
the Go programming language.")
    (license license:bsd-3)))

(define-public go-github-com-golang-text
  (package
    (name "go-github-com-golang-text")
    (version "0.3.7")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/text")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0xkw0qvfjyifdqd25y7nxdqkdh92inymw3q7841nricc9s01p4jy"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/golang/text"))
    (propagated-inputs `(("go-golang-org-x-tools" ,go-golang-org-x-tools)))
    (home-page "https://github.com/golang/text")
    (synopsis "Go Text")
    (description
      "text is a repository of text-related packages related to internationalization
(i18n) and localization (l10n), such as character encodings, text
transformations, and locale-specific text handling.
")
    (license license:bsd-3)))

(define-public go-github-com-therecipe-qt
  (package
    (name "go-github-com-therecipe-qt")
    (version "0.0.0-20200904063919-c0c124a5770d")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/therecipe/qt")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "197wdh2v0g5g2dpb1gcd5gp0g4wqzip34cawisvy6z7mygmsc8rd"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/therecipe/qt"))
    (propagated-inputs
      `(("go-github-com-golang-text" ,go-github-com-golang-text)
        ("go-github-com-golang-tools" ,go-github-com-golang-tools)
        ("go-github-com-golang-sys" ,go-github-com-golang-sys)
        ("go-github-com-golang-net" ,go-github-com-golang-net)
        ("go-github-com-golang-crypto" ,go-github-com-golang-crypto)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-stretchr-objx" ,go-github-com-stretchr-objx)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
        ("go-github-com-konsorten-go-windows-terminal-sequences"
         ,go-github-com-konsorten-go-windows-terminal-sequences)
        ("go-github-com-gopherjs-gopherjs" ,go-github-com-gopherjs-gopherjs)))
    (home-page "https://github.com/therecipe/qt")
    (synopsis "Introduction")
    (description
      "@url{https://en.wikipedia.org/wiki/Qt_(software),Qt} is a free and open-source widget toolkit for creating graphical user interfaces as well as cross-platform applications that run on various software and hardware platforms with little or no change in the underlying codebase.")
    (license license:lgpl3)))

(define-public go-github-com-therecipe-qt-internal-binding-files-docs-5-12-0
  (package
    (name "go-github-com-therecipe-qt-internal-binding-files-docs-5-12-0")
    (version "0.0.0-20200904063919-c0c124a5770d")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/therecipe/qt")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "197wdh2v0g5g2dpb1gcd5gp0g4wqzip34cawisvy6z7mygmsc8rd"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "github.com/therecipe/qt/internal/binding/files/docs/5.12.0"
        #:unpack-path
        "github.com/therecipe/qt"))
    (home-page "https://github.com/therecipe/qt")
    (synopsis #f)
    (description #f)
    (license license:lgpl3)))

(define-public go-github-com-therecipe-qt-internal-binding-files-docs-5-13-0
  (package
    (name "go-github-com-therecipe-qt-internal-binding-files-docs-5-13-0")
    (version "0.0.0-20200904063919-c0c124a5770d")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/therecipe/qt")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "197wdh2v0g5g2dpb1gcd5gp0g4wqzip34cawisvy6z7mygmsc8rd"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "github.com/therecipe/qt/internal/binding/files/docs/5.13.0"
        #:unpack-path
        "github.com/therecipe/qt"))
    (home-page "https://github.com/therecipe/qt")
    (synopsis #f)
    (description #f)
    (license license:lgpl3)))

(define-public go-github-com-vmihailenco-tagparser-v2
  (package
    (name "go-github-com-vmihailenco-tagparser-v2")
    (version "2.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/vmihailenco/tagparser")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "13arliaz3b4bja9jj7cr5ax4zvxaxm484fwrn0q6d6jjm1l35m1k"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/vmihailenco/tagparser/v2"))
    (home-page "https://github.com/vmihailenco/tagparser")
    (synopsis "Opinionated Golang tag parser")
    (description "Install:")
    (license license:bsd-2)))

(define-public go-github-com-vmihailenco-msgpack-v5
  (package
    (name "go-github-com-vmihailenco-msgpack-v5")
    (version "5.3.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/vmihailenco/msgpack")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1l9bc014i95g8na7zq74hgycwqi91a8w4sljx6cbh22vw1asx5qj"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/vmihailenco/msgpack/v5"))
    (propagated-inputs
      `(("go-github-com-vmihailenco-tagparser-v2"
         ,go-github-com-vmihailenco-tagparser-v2)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
    (home-page "https://github.com/vmihailenco/msgpack")
    (synopsis "MessagePack encoding for Golang")
    (description
      "msgpack supports 2 last Go versions and requires support for
@url{https://github.com/golang/go/wiki/Modules,Go modules}.  So make sure to initialize a Go module:")
    (license license:bsd-2)))

(define-public go-go-etcd-io-bbolt
  (package
    (name "go-go-etcd-io-bbolt")
    (version "1.3.6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/etcd-io/bbolt")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0pj5245d417za41j6p09fmkbv05797vykr1bi9a6rnwddh1dbs8d"))))
    (build-system go-build-system)
    (arguments '(#:import-path "go.etcd.io/bbolt"))
    (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://go.etcd.io/bbolt")
    (synopsis "bbolt")
    (description
      "package bbolt implements a low-level key/value store in pure Go.  It supports
fully serializable transactions, ACID semantics, and lock-free MVCC with
multiple readers and a single writer.  Bolt can be used for projects that
want a simple data store without the need to add large dependencies such as
Postgres or MySQL.
")
    (license license:expat)))

(define-public go-github-com-danieljoos-wincred
  (package
    (name "go-github-com-danieljoos-wincred")
    (version "1.1.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/danieljoos/wincred")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1arcb0l6ipha7ydlb9rbig1phhd824m1n2qi7a16bgkn1mz2ay9n"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/danieljoos/wincred"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
    (home-page "https://github.com/danieljoos/wincred")
    (synopsis "wincred")
    (description
      "Package wincred provides primitives for accessing the Windows Credentials Management API.
This includes functions for retrieval, listing and storage of credentials as well as Go structures for convenient access to the credential data.
")
    (license license:expat)))

(define-public go-github-com-protonmail-docker-credential-helpers
  (package
    (name "go-github-com-protonmail-docker-credential-helpers")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/docker-credential-helpers")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "08h6hvp1b2axpawbknp8zqjfx5v9v07slgypqxpavjdwpkra274a"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/ProtonMail/docker-credential-helpers"))
    (propagated-inputs
      `(("go-github-com-danieljoos-wincred"
         ,go-github-com-danieljoos-wincred)))
    (home-page "https://github.com/ProtonMail/docker-credential-helpers")
    (synopsis "Introduction")
    (description
      "docker-credential-helpers is a suite of programs to use native stores to keep Docker credentials safe.")
    (license license:expat)))

(define-public go-github-com-emersion-go-message
  (package
    (name "go-github-com-emersion-go-message")
    (version "0.15.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-message")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0h4zzllz6d68b9dqcaqqyrl346jqsv0saavgi2nqi8a5fjpgwjh5"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/emersion/go-message"))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-github-com-emersion-go-textwrapper"
         ,go-github-com-emersion-go-textwrapper)))
    (home-page "https://github.com/emersion/go-message")
    (synopsis "go-message")
    (description
      "Package message implements reading and writing multipurpose messages.
")
    (license license:expat)))

(define-public go-github-com-protonmail-go-imap
  (package
    (name "go-github-com-protonmail-go-imap")
    (version "1.0.6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/go-imap")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1cv74arkrzg4q1xpgp2ic28gmxpr69q220vicbgz62rkwihy7ja9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/go-imap"))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-github-com-emersion-go-sasl" ,go-github-com-emersion-go-sasl)
        ("go-github-com-emersion-go-message"
         ,go-github-com-emersion-go-message)))
    (home-page "https://github.com/ProtonMail/go-imap")
    (synopsis "go-imap")
    (description
      "Package imap implements IMAP4rev1 (@url{https://rfc-editor.org/rfc/rfc3501.html,RFC 3501}).
")
    (license license:expat)))

(define-public go-github-com-emersion-go-textwrapper
  (package
    (name "go-github-com-emersion-go-textwrapper")
    (version "0.0.0-20200911093747-65d896831594")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emersion/go-textwrapper")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1lh9d7zvj6gm1rr6sv5xlagklgx9d666hq5srd37a4sdcjkbiqmq"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/emersion/go-textwrapper"))
    (home-page "https://github.com/emersion/go-textwrapper")
    (synopsis "go-textwrapper")
    (description
      "This package provides a writer that wraps long text lines to a specified length.
")
    (license license:expat)))

(define-public go-github-com-martinlindhe-base36
  (package
    (name "go-github-com-martinlindhe-base36")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/martinlindhe/base36")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1sngfcpj65ipx19x4z64v6lq5q2a17crncrhc33b69xq104jk26f"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/martinlindhe/base36"))
    (home-page "https://github.com/martinlindhe/base36")
    (synopsis "About")
    (description
      "Implements Base36 encoding and decoding, which is useful to represent
large integers in a case-insensitive alphanumeric way.")
    (license license:expat)))

(define-public go-github-com-protonmail-go-message
  (package
    (name "go-github-com-protonmail-go-message")
    (version "0.13.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/go-message")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1b4ccjafzfydwjwcxv52ap9yqq3zvhylhfqg0g0hgd77h51f6gl4"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/go-message"))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-martinlindhe-base36"
         ,go-github-com-martinlindhe-base36)
        ("go-github-com-emersion-go-textwrapper"
         ,go-github-com-emersion-go-textwrapper)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (home-page "https://github.com/ProtonMail/go-message")
    (synopsis "go-message")
    (description
      "Package message implements reading and writing multipurpose messages.
")
    (license license:expat)))

(define-public go-github-com-protonmail-bcrypt
  (package
    (name "go-github-com-protonmail-bcrypt")
    (version "0.0.0-20211005172633-e235017c1baf")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/bcrypt")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0znxsia69c2p4vgj9qckqq3p06rg2b5qzdm7p7svs3x46bp28s3s"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/bcrypt"))
    (home-page "https://github.com/ProtonMail/bcrypt")
    (synopsis "github.com/ProtonMail/bcrypt")
    (description
      "This package provides a golang implementation of the bcrypt hash algorithm.  It is a fork of @url{https://github.com/jameskeane/bcrypt,github.com/jameskeane/bcrypt}.")
    (license license:bsd-3)))

(define-public protonmail-bridge
  (package
    (name "protonmail-bridge")
    (version "1.8.10")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ProtonMail/proton-bridge")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0bn1x4gnlnr36m9jj3sraqz7apz581712651cxf57qc6c9y4bajg"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/ProtonMail/proton-bridge"))
    (propagated-inputs
      `(("go-github-com-protonmail-bcrypt" ,go-github-com-protonmail-bcrypt)
        ("go-github-com-protonmail-go-message"
         ,go-github-com-protonmail-go-message)
        ("go-github-com-protonmail-go-imap" ,go-github-com-protonmail-go-imap)
        ("go-github-com-protonmail-docker-credential-helpers"
         ,go-github-com-protonmail-docker-credential-helpers)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-go-etcd-io-bbolt" ,go-go-etcd-io-bbolt)
        ("go-github-com-vmihailenco-msgpack-v5"
         ,go-github-com-vmihailenco-msgpack-v5)
        ("go-github-com-urfave-cli-v2" ,go-github-com-urfave-cli-v2)
        ("go-github-com-therecipe-qt-internal-binding-files-docs-5-13-0"
         ,go-github-com-therecipe-qt-internal-binding-files-docs-5-13-0)
        ("go-github-com-therecipe-qt-internal-binding-files-docs-5-12-0"
         ,go-github-com-therecipe-qt-internal-binding-files-docs-5-12-0)
        ("go-github-com-therecipe-qt" ,go-github-com-therecipe-qt)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-ssor-bom" ,go-github-com-ssor-bom)
        ("go-github-com-skratchdot-open-golang"
         ,go-github-com-skratchdot-open-golang)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-olekukonko-tablewriter"
         ,go-github-com-olekukonko-tablewriter)
        ("go-github-com-nsf-jsondiff" ,go-github-com-nsf-jsondiff)
        ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
        ("go-github-com-mattn-go-runewidth" ,go-github-com-mattn-go-runewidth)
        ("go-github-com-logrusorgru-aurora" ,go-github-com-logrusorgru-aurora)
        ("go-github-com-keybase-go-keychain"
         ,go-github-com-keybase-go-keychain)
        ("go-github-com-jaytaylor-html2text"
         ,go-github-com-jaytaylor-html2text)
        ("go-github-com-hashicorp-go-multierror"
         ,go-github-com-hashicorp-go-multierror)
        ("go-github-com-gopherjs-gopherjs" ,go-github-com-gopherjs-gopherjs)
        ("go-github-com-google-uuid" ,go-github-com-google-uuid)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-golang-mock" ,go-github-com-golang-mock)
        ("go-github-com-go-resty-resty-v2" ,go-github-com-go-resty-resty-v2)
        ("go-github-com-getsentry-sentry-go"
         ,go-github-com-getsentry-sentry-go)
        ("go-github-com-flynn-archive-go-shlex"
         ,go-github-com-flynn-archive-go-shlex)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-emersion-go-vcard" ,go-github-com-emersion-go-vcard)
        ("go-github-com-emersion-go-textwrapper"
         ,go-github-com-emersion-go-textwrapper)
        ("go-github-com-emersion-go-smtp" ,go-github-com-emersion-go-smtp)
        ("go-github-com-emersion-go-sasl" ,go-github-com-emersion-go-sasl)
        ("go-github-com-emersion-go-mbox" ,go-github-com-emersion-go-mbox)
        ("go-github-com-emersion-go-imap-unselect"
         ,go-github-com-emersion-go-imap-unselect)
        ("go-github-com-emersion-go-imap-quota"
         ,go-github-com-emersion-go-imap-quota)
        ("go-github-com-emersion-go-imap-move"
         ,go-github-com-emersion-go-imap-move)
        ("go-github-com-emersion-go-imap-appendlimit"
         ,go-github-com-emersion-go-imap-appendlimit)
        ("go-github-com-cucumber-messages-go-v16"
         ,go-github-com-cucumber-messages-go-v16)
        ("go-github-com-cucumber-godog" ,go-github-com-cucumber-godog)
        ("go-github-com-chzyer-test" ,go-github-com-chzyer-test)
        ("go-github-com-chzyer-logex" ,go-github-com-chzyer-logex)
        ("go-github-com-allan-simon-go-singleinstance"
         ,go-github-com-allan-simon-go-singleinstance)
        ("go-github-com-abiosoft-readline" ,go-github-com-abiosoft-readline)
        ("go-github-com-abiosoft-ishell" ,go-github-com-abiosoft-ishell)
        ("go-github-com-puerkitobio-goquery"
         ,go-github-com-puerkitobio-goquery)
        ("go-github-com-protonmail-gopenpgp-v2"
         ,go-github-com-protonmail-gopenpgp-v2)
        ("go-github-com-protonmail-go-vcard"
         ,go-github-com-protonmail-go-vcard)
        ("go-github-com-protonmail-go-srp" ,go-github-com-protonmail-go-srp)
        ("go-github-com-protonmail-go-rfc5322"
         ,go-github-com-protonmail-go-rfc5322)
        ("go-github-com-protonmail-go-imap-id"
         ,go-github-com-protonmail-go-imap-id)
        ("go-github-com-protonmail-go-crypto"
         ,go-github-com-protonmail-go-crypto)
        ("go-github-com-protonmail-go-autostart"
         ,go-github-com-protonmail-go-autostart)
        ("go-github-com-masterminds-semver-v3"
         ,go-github-com-masterminds-semver-v3)
        ("go-github-com-0xax-notificator" ,go-github-com-0xax-notificator)))
    (home-page "https://github.com/ProtonMail/proton-bridge")
    (synopsis "ProtonMail Bridge and Import Export app")
    (description "Copyright (c) 2020 Proton Technologies AG")
    (license license:gpl3)))
