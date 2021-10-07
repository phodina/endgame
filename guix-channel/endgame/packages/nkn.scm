(define-module (endgame packages nkn)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages syncthing)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:))

;; Smarthome
;; https://nkn.org/

(define-public go-github-com-boj-redistore
  (package
    (name "go-github-com-boj-redistore")
    (version "0.0.0-20180917114910-cd5dcc76aeff")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/boj/redistore")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "022w95phwqc1j6mqkyrgibq8pzz99sgb26sq465d40s7z6q7gicr"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/boj/redistore"))
    (propagated-inputs
      `(("go-github-com-gorilla-sessions" ,go-github-com-gorilla-sessions)
        ("go-github-com-gorilla-securecookie"
         ,go-github-com-gorilla-securecookie)
        ("go-github-com-gomodule-redigo" ,go-github-com-gomodule-redigo)))
    (home-page "https://github.com/boj/redistore")
    (synopsis "redistore")
    (description
      "Package redistore is a session store backend for gorilla/sessions
")
    (license license:expat)))

(define-public go-github-com-bradfitz-gomemcache
  (package
    (name "go-github-com-bradfitz-gomemcache")
    (version "0.0.0-20190913173617-a41fca850d0b")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/bradfitz/gomemcache")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "18qpds6xr73jy80pj7l3pc1l1ndcy3va2dl8fzk17bgwg49sxwfz"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/bradfitz/gomemcache"))
    (home-page "https://github.com/bradfitz/gomemcache")
    (synopsis "About")
    (description
      "This is a memcache client library for the Go programming language
(@url{http://golang.org/),http://golang.org/)}.")
    (license license:asl2.0)))

(define-public go-github-com-bradleypeabody-gorilla-sessions-memcache
  (package
    (name "go-github-com-bradleypeabody-gorilla-sessions-memcache")
    (version "0.0.0-20181103040241-659414f458e1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/bradleypeabody/gorilla-sessions-memcache")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0xgc9hidll8q2a10yy7p7rlq8l5imq2d894b3338cp7mrk493z8g"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/bradleypeabody/gorilla-sessions-memcache"))
    (home-page "https://github.com/bradleypeabody/gorilla-sessions-memcache")
    (synopsis "gorilla-sessions-memcache")
    (description
      "Memcache session support for Gorilla Web Toolkit,
without Google App Engine dependency.
")
    (license license:asl2.0)))

(define-public go-github-com-globalsign-mgo
  (package
    (name "go-github-com-globalsign-mgo")
    (version "0.0.0-20181015135952-eeefdecb41b8")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/globalsign/mgo")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0l8s1m6n4jc3qbp3gh733lc4jba3b3c7z3dwpiiq8y83a249dw2n"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/globalsign/mgo"))
    (home-page "https://github.com/globalsign/mgo")
    (synopsis "The MongoDB driver for Go")
    (description
      "Package mgo (pronounced as \"mango\") offers a rich MongoDB driver for Go.
")
    (license license:bsd-2)))

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

(define-public go-github-com-kidstuff-mongostore
  (package
    (name "go-github-com-kidstuff-mongostore")
    (version "0.0.0-20181113001930-e650cd85ee4b")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/kidstuff/mongostore")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0p7hwj7xvnh58smwj6a4cm2wgh5drckf2517kk5yzhw121jg13vg"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/kidstuff/mongostore"))
    (home-page "https://github.com/kidstuff/mongostore")
    (synopsis "mongostore")
    (description
      "@url{http://www.gorillatoolkit.org/pkg/sessions,Gorilla's Session} store implementation with MongoDB")
    (license license:bsd-3)))

(define-public go-github-com-memcachier-mc
  (package
    (name "go-github-com-memcachier-mc")
    (version "2.0.1+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/memcachier/mc")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0lv1qpby9cn5bwiwkn8lfh7ncmxpmj9immqmn3p6d04wk4lyijj7"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/memcachier/mc"))
    (home-page "https://github.com/memcachier/mc")
    (synopsis "mc.go: A Go client for Memcached")
    (description
      "Package mc is a memcache client for Go supporting binary protocol and SASL
authentication.
")
    (license license:expat)))

(define-public go-github-com-quasoft-memstore
  (package
    (name "go-github-com-quasoft-memstore")
    (version "0.0.0-20191010062613-2bce066d2b0b")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/quasoft/memstore")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1ain2p81m9pdrmvphy7p7w8ixajddaag54cqppxgzyvyy2340gf9"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/quasoft/memstore"))
    (home-page "https://github.com/quasoft/memstore")
    (synopsis "memstore")
    (description
      "In-memory implementation of @url{https://github.com/gorilla/sessions,gorilla/sessions} for use in tests and dev environments")
    (license license:bsd-3)))

(define-public go-github-com-gin-contrib-sessions
  (package
    (name "go-github-com-gin-contrib-sessions")
    (version "0.0.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gin-contrib/sessions")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zg9wb068i9ad3i0lsnsaqbx70shmkldzhznczsyl0b2fx10mlbw"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/gin-contrib/sessions"))
    (propagated-inputs
      `(("go-github-com-quasoft-memstore" ,go-github-com-quasoft-memstore)
        ("go-github-com-memcachier-mc" ,go-github-com-memcachier-mc)
        ("go-github-com-kidstuff-mongostore"
         ,go-github-com-kidstuff-mongostore)
        ("go-github-com-gorilla-sessions" ,go-github-com-gorilla-sessions)
        ("go-github-com-gorilla-context" ,go-github-com-gorilla-context)
        ("go-github-com-gomodule-redigo" ,go-github-com-gomodule-redigo)
        ("go-github-com-globalsign-mgo" ,go-github-com-globalsign-mgo)
        ("go-github-com-gin-gonic-gin" ,go-github-com-gin-gonic-gin)
        ("go-github-com-bradleypeabody-gorilla-sessions-memcache"
         ,go-github-com-bradleypeabody-gorilla-sessions-memcache)
        ("go-github-com-bradfitz-gomemcache"
         ,go-github-com-bradfitz-gomemcache)
        ("go-github-com-boj-redistore" ,go-github-com-boj-redistore)))
    (home-page "https://github.com/gin-contrib/sessions")
    (synopsis "sessions")
    (description
      "Gin middleware for session management with multi-backend support:")
    (license license:expat)))

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
    (arguments
      '(#:import-path
        "github.com/go-playground/assert/v2"
        #:unpack-path
        "github.com/go-playground/assert"))
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
    (arguments
      '(#:import-path
        "github.com/go-playground/validator/v10"
        #:unpack-path
        "github.com/go-playground/validator"))
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

(define-public go-github-com-howeyc-gopass
  (package
    (name "go-github-com-howeyc-gopass")
    (version "0.0.0-20210920133722-c8aef6fb66ef")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/howeyc/gopass")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "03rv6xim9pgv26zcyvh35q3nrshm4xdrx62npa6s6d28wybalmnd"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/howeyc/gopass"))
    (home-page "https://github.com/howeyc/gopass")
    (synopsis "getpasswd in Go")
    (description
      "No longer maintained.  You should just use @url{https://golang.org/x/crypto/ssh/terminal,terminal}.")
    (license license:isc)))

(define-public go-github-com-jessevdk-go-flags
  (package
    (name "go-github-com-jessevdk-go-flags")
    (version "1.5.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jessevdk/go-flags")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "13ixw1yx4bvcj66lkc8zgwf9j7gkvj686g991gycdsafvdvca0lj"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jessevdk/go-flags"))
    (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://github.com/jessevdk/go-flags")
    (synopsis "go-flags: a go library for parsing command line arguments")
    (description
      "Package flags provides an extensive command line option parser.
The flags package is similar in functionality to the go built-in flag package
but provides more options and uses reflection to provide a convenient and
succinct way of specifying command line options.
")
    (license license:bsd-3)))

(define-public go-github-com-itchyny-base58-go
  (package
    (name "go-github-com-itchyny-base58-go")
    (version "0.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/itchyny/base58-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1gvqp1cnkkxm626in2y36pp11cnvz70knbyxabs2fmwcpy414syj"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/itchyny/base58-go"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-jessevdk-go-flags" ,go-github-com-jessevdk-go-flags)))
    (home-page "https://github.com/itchyny/base58-go")
    (synopsis "base58-go")
    (description
      "This is a Go language package for encoding and decoding base58 strings.
This package supports multiple encodings, flickr, ripple and bitcoin.")
    (license license:expat)))

(define-public go-github-com-nknorg-consequential
  (package
    (name "go-github-com-nknorg-consequential")
    (version "0.0.0-20191113113929-5fd13b7f5984")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nknorg/consequential")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0bfl1mv05wjpvcmi73z43gwj6yy0ls91sg5ca8xmnk54d8bh1krj"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nknorg/consequential"))
    (home-page "https://github.com/nknorg/consequential")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-nknorg-go-portscanner
  (package
    (name "go-github-com-nknorg-go-portscanner")
    (version "0.0.0-20181002101859-8493ef01db79")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nknorg/go-portscanner")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1wxc4rqb261va2k4m9yvp2rzxd1sl0ajwaaa4847b36fy7j8v3a7"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nknorg/go-portscanner"))
    (home-page "https://github.com/nknorg/go-portscanner")
    (synopsis "go-portscanner")
    (description "Check if a port is open using check-host.net")
    (license license:asl2.0)))

(define-public go-github-com-hashicorp-yamux
  (package
    (name "go-github-com-hashicorp-yamux")
    (version "0.0.0-20210826001029-26ff87cf9493")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/yamux")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ljnflxzn3zajbm98f8gzc84snmrlqi8ydh70idg0ffai6ql98ix"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/yamux"))
    (home-page "https://github.com/hashicorp/yamux")
    (synopsis "Yamux")
    (description
      "Yamux (Yet another Multiplexer) is a multiplexing library for Golang.
It relies on an underlying connection to provide reliability
and ordering, such as TCP or Unix domain sockets, and provides
stream-oriented multiplexing.  It is inspired by SPDY but is not
interoperable with it.")
    (license license:mpl2.0)))

(define-public go-github-com-klauspost-cpuid-v2
  (package
    (name "go-github-com-klauspost-cpuid-v2")
    (version "2.0.9")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/klauspost/cpuid")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "12bx0kip3yv2416f4ilafk5674m69mn873gnadhyv473cy4jy499"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path
        "github.com/klauspost/cpuid/v2"
        #:unpack-path
        "github.com/klauspost/cpuid"))
    (home-page "https://github.com/klauspost/cpuid")
    (synopsis "cpuid")
    (description
      "Package cpuid provides information about the CPU running the current program.
")
    (license license:expat)))

(define-public go-github-com-klauspost-reedsolomon
  (package
    (name "go-github-com-klauspost-reedsolomon")
    (version "1.9.13")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/klauspost/reedsolomon")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0xrk97inxhb0vvlhk3hz3f0bfacsk2r2b5xmff27higrlynchpdw"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/klauspost/reedsolomon"))
    (propagated-inputs
      `(("go-github-com-klauspost-cpuid-v2"
         ,go-github-com-klauspost-cpuid-v2)))
    (home-page "https://github.com/klauspost/reedsolomon")
    (synopsis "Reed-Solomon")
    (description "Package reedsolomon enables Erasure Coding in Go
")
    (license license:expat)))

(define-public go-github-com-templexxx-cpufeat
  (package
    (name "go-github-com-templexxx-cpufeat")
    (version "0.0.0-20180724012125-cef66df7f161")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/templexxx/cpufeat")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "183aviadgq0slzighpa9z32cd26991hv5d5jnmk7frcq0nd62p9k"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/templexxx/cpufeat"))
    (home-page "https://github.com/templexxx/cpufeat")
    (synopsis #f)
    (description
      "Package cpu implements processor feature detection
used by the Go standard libary.
")
    (license license:bsd-3)))

(define-public go-github-com-nknorg-nnet
  (package
    (name "go-github-com-nknorg-nnet")
    (version "0.0.0-20210516000534-f80d3763d1bd")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nknorg/nnet")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0jnbmjd4lsyzzk66i4f4v8wnpaxv34ngyzmb2lnysb4lbpwvbb9l"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nknorg/nnet"))
    (propagated-inputs
      `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-xtaci-smux" ,go-github-com-xtaci-smux)
        ("go-github-com-xtaci-kcp-go" ,go-github-com-xtaci-kcp-go)
        ("go-github-com-tjfoc-gmsm" ,go-github-com-tjfoc-gmsm)
        ("go-github-com-templexxx-xor" ,go-github-com-templexxx-xor)
        ("go-github-com-templexxx-cpufeat" ,go-github-com-templexxx-cpufeat)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-patrickmn-go-cache" ,go-github-com-patrickmn-go-cache)
        ("go-github-com-op-go-logging" ,go-github-com-op-go-logging)
        ("go-github-com-nknorg-go-nat" ,go-github-com-nknorg-go-nat)
        ("go-github-com-klauspost-reedsolomon"
         ,go-github-com-klauspost-reedsolomon)
        ("go-github-com-klauspost-cpuid" ,go-github-com-klauspost-cpuid)
        ("go-github-com-jackpal-gateway" ,go-github-com-jackpal-gateway)
        ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
        ("go-github-com-huin-goupnp" ,go-github-com-huin-goupnp)
        ("go-github-com-hashicorp-yamux" ,go-github-com-hashicorp-yamux)
        ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)))
    (home-page "https://github.com/nknorg/nnet")
    (synopsis "nnet: a fast, scalable, easy-to-use p2p network stack")
    (description
      "@strong{nnet} is a fast, scalable, and developer-friendly network stack/layer for
decentralized/distributed systems.  It handles message delivery, topology
maintenance, etc in a highly efficient and scalable way, while providing enough
control and flexibility through developer-friendly messaging interface and
powerful middleware architecture.")
    (license license:asl2.0)))

(define-public go-github-com-huin-goutil
  (package
    (name "go-github-com-huin-goutil")
    (version "0.0.0-20170803182201-1ca381bf3150")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/huin/goutil")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0alhyacsfqic2wxyqn4gvk9wzjl4pkmy8rhvqjk84xsghgx5xf12"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/huin/goutil"))
    (home-page "https://github.com/huin/goutil")
    (synopsis #f)
    (description
      "goutil is a collection of misc Go utility code that is potentially useful
across multiple projects, and has therefore been factored out.")
    (license license:bsd-2)))

(define-public go-github-com-huin-goupnp
  (package
    (name "go-github-com-huin-goupnp")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/huin/goupnp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1cv561wlzlzwxwpwirmyck33bhfmgpgv4wfq65wv8wkk6lgvqz0m"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/huin/goupnp"))
    (propagated-inputs
      `(("go-golang-org-x-sync" ,go-golang-org-x-sync)
        ("go-github-com-huin-goutil" ,go-github-com-huin-goutil)))
    (home-page "https://github.com/huin/goupnp")
    (synopsis "Installation")
    (description
      "goupnp is an implementation of a client for various UPnP services.
")
    (license license:bsd-2)))

(define-public go-github-com-nknorg-go-nat
  (package
    (name "go-github-com-nknorg-go-nat")
    (version "1.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nknorg/go-nat")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1lw24qj111xrv8pkmk446rps7pjf59x85bw5a7ah7iay8fh1nq52"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nknorg/go-nat"))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-jackpal-go-nat-pmp" ,go-github-com-jackpal-go-nat-pmp)
        ("go-github-com-jackpal-gateway" ,go-github-com-jackpal-gateway)
        ("go-github-com-huin-goupnp" ,go-github-com-huin-goupnp)))
    (home-page "https://github.com/nknorg/go-nat")
    (synopsis "go-nat")
    (description "Package nat implements NAT handling facilities
")
    (license license:asl2.0)))

(define-public go-gitlab-com-nebulouslabs-fastrand
  (package
    (name "go-gitlab-com-nebulouslabs-fastrand")
    (version "0.0.0-20181126182046-603482d69e40")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://gitlab.com/NebulousLabs/fastrand.git")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1ymqicdsvz11gd4xm6vpm63mxna5rzznpvjd7c1hlq4hcim2mn80"))))
    (build-system go-build-system)
    (arguments '(#:import-path "gitlab.com/NebulousLabs/fastrand"))
    (home-page "https://gitlab.com/NebulousLabs/fastrand")
    (synopsis "fastrand")
    (description
      "Package fastrand implements a cryptographically secure pseudorandom number
generator.  The generator is seeded using the system's default entropy source,
and thereafter produces random values via repeated hashing.  As a result,
fastrand can generate randomness much faster than crypto/rand, and generation
cannot fail beyond a potential panic at init.
")
    (license license:expat)))

(define-public go-gitlab-com-nebulouslabs-go-upnp
  (package
    (name "go-gitlab-com-nebulouslabs-go-upnp")
    (version "0.0.0-20211002182029-11da932010b6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://gitlab.com/NebulousLabs/go-upnp.git")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1axn6l365waik011rlhx2w73zffmlvlx0yfm9nia89lb7vsxb861"))))
    (build-system go-build-system)
    (arguments '(#:import-path "gitlab.com/NebulousLabs/go-upnp"))
    (propagated-inputs
      `(("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-gitlab-com-nebulouslabs-fastrand"
         ,go-gitlab-com-nebulouslabs-fastrand)))
    (home-page "https://gitlab.com/NebulousLabs/go-upnp")
    (synopsis "upnp")
    (description
      "Package upnp provides a simple and opinionated interface to UPnP-enabled
routers, allowing users to forward ports and discover their external IP
address.  Specific quirks:
")
    (license license:expat)))

(define-public go-github-com-nknorg-portmapper
  (package
    (name "go-github-com-nknorg-portmapper")
    (version "0.0.0-20200114081049-1c03cdccc283")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nknorg/portmapper")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0fs0x4rjx377mpzg88v4nfsinb03ax6hawq64sg3118cjmrbqr6n"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nknorg/portmapper"))
    (propagated-inputs
      `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-gitlab-com-nebulouslabs-go-upnp"
         ,go-gitlab-com-nebulouslabs-go-upnp)
        ("go-gitlab-com-nebulouslabs-fastrand"
         ,go-gitlab-com-nebulouslabs-fastrand)
        ("go-github-com-nknorg-go-nat" ,go-github-com-nknorg-go-nat)))
    (home-page "https://github.com/nknorg/portmapper")
    (synopsis #f)
    (description #f)
    (license #f)))

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
    (arguments '(#:import-path "gopkg.in/tomb.v1"))
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
    (version "1.16.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/onsi/ginkgo")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0rpzh0vg2k33szcq17rdwjvj3q6djp7vqfvasck40gsibadimnd7"))))
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
    (synopsis "Ginkgo 2.0 is coming soon!")
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

(define-public go-github-com-patrickmn-go-cache
  (package
    (name "go-github-com-patrickmn-go-cache")
    (version "2.1.0+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/patrickmn/go-cache")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "10020inkzrm931r4bixf8wqr9n39wcrb78vfyxmbvjavvw4zybgs"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/patrickmn/go-cache"))
    (home-page "https://github.com/patrickmn/go-cache")
    (synopsis "go-cache")
    (description
      "go-cache is an in-memory key:value store/cache similar to memcached that is
suitable for applications running on a single machine.  Its major advantage is
that, being essentially a thread-safe @code{map[string]interface{}} with expiration
times, it doesn't need to serialize or transmit its contents over the network.")
    (license license:expat)))

(define-public go-github-com-pborman-uuid
  (package
    (name "go-github-com-pborman-uuid")
    (version "1.2.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/pborman/uuid")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0n1ng6396zgm1iggzp43h554wwp32iwr62qqfy0zl4jnk2dg41lv"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/pborman/uuid"))
    (propagated-inputs
      `(("go-github-com-google-uuid" ,go-github-com-google-uuid)))
    (home-page "https://github.com/pborman/uuid")
    (synopsis "uuid")
    (description "The uuid package generates and inspects UUIDs.
")
    (license license:bsd-3)))

(define-public go-github-com-rdegges-go-ipify
  (package
    (name "go-github-com-rdegges-go-ipify")
    (version "0.0.0-20150526035502-2d94a6a86c40")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/rdegges/go-ipify")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "02r57k9wkpm0pzdz124yq4wizxkl1rnixvd4j2phvldingl4rhi5"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/rdegges/go-ipify"))
    (home-page "https://github.com/rdegges/go-ipify")
    (synopsis "go-ipify")
    (description
      "Package ipify provides a single function for retrieving your computer's
public IP address from the ipify service: @url{http://www.ipify.org,http://www.ipify.org}
")
    (license license:unlicense)))

(define-public go-github-com-templexxx-xor
  (package
    (name "go-github-com-templexxx-xor")
    (version "0.0.0-20191217153810-f85b25db303b")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/templexxx/xor")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0h39qrkiq025q7dg8225afc6a7gqf6d25zspvzb6n02hdnchfqq2"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/templexxx/xor"))
    (home-page "https://github.com/templexxx/xor")
    (synopsis "XOR")
    (description "XOR code engine in pure Go")
    (license license:expat)))

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
    (arguments
      '(#:import-path
        "github.com/cespare/xxhash/v2"
        #:unpack-path
        "github.com/cespare/xxhash"))
    (home-page "https://github.com/cespare/xxhash")
    (synopsis "xxhash")
    (description
      "Package xxhash implements the 64-bit variant of xxHash (XXH64) as described
at @url{http://cyan4973.github.io/xxHash/,http://cyan4973.github.io/xxHash/}.
")
    (license license:expat)))

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
    (version "0.0.0-20211001041855-01bcc9b48dfe")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cncf/xds")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1x4fm7yh2zlmvm8z6cbj7dp0n4kpsz71snw5aswglmiqp29414g2"))))
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

(define-public go-google-golang-org-genproto
  (package
    (name "go-google-golang-org-genproto")
    (version "0.0.0-20211005153810-c76a74d43a8e")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/googleapis/go-genproto")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1y0dv6kra59adcvlgygw2rw5f70rr8jq18v2pcr2kjlfjmc48dh1"))))
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

(define-public go-github-com-tjfoc-gmsm
  (package
    (name "go-github-com-tjfoc-gmsm")
    (version "1.4.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/tjfoc/gmsm")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "18x1g555a3i86rkjrlxa6h6j3j87vhx480dqnv9hdij6cy3zph7i"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/tjfoc/gmsm"))
    (propagated-inputs
      `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
    (home-page "https://github.com/tjfoc/gmsm")
    (synopsis "gmsm")
    (description "gmsmå\x8c\x85å\x90«ä»¥ä¸\x8bä¸»è¦\x81å\x8a\x9fè\x83½")
    (license license:asl2.0)))

(define-public go-github-com-xtaci-kcp-go
  (package
    (name "go-github-com-xtaci-kcp-go")
    (version "4.3.4+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/xtaci/kcp-go")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1yb6rgd6x4jlfpvdhgxnxvaq64x70m410h47hiq0ij7vsssv791x"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/xtaci/kcp-go"))
    (home-page "https://github.com/xtaci/kcp-go")
    (synopsis "Introduction")
    (description "Package kcp-go is a Reliable-UDP library for golang.
")
    (license license:expat)))

(define-public go-github-com-xtaci-lossyconn
  (package
    (name "go-github-com-xtaci-lossyconn")
    (version "0.0.0-20200209145036-adba10fffc37")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/xtaci/lossyconn")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1pizmd8py5x8yjqp6fz2y0kpvd1za3rbp7whyyh69zyk1a305fam"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/xtaci/lossyconn"))
    (home-page "https://github.com/xtaci/lossyconn")
    (synopsis "Lossy connection simulator")
    (description
      "Package lossyconn is a lossy connection simulator for Golang.
")
    (license license:expat)))

(define-public go-github-com-xtaci-smux
  (package
    (name "go-github-com-xtaci-smux")
    (version "1.5.16")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/xtaci/smux")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0dm7w7cxg1mk8mqv8yvkxqfxzx09lc9d393ndb3r72hp0lznqamk"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/xtaci/smux"))
    (home-page "https://github.com/xtaci/smux")
    (synopsis "Introduction")
    (description "Package smux is a multiplexing library for Golang.
")
    (license license:expat)))

(define-public go-github-com-nknorg-nkn
  (package
    (name "go-github-com-nknorg-nkn")
    (version "1.1.7-beta")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/nknorg/nkn")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1kkkl5aqn3w126zn28z9mhjd9bg60ryxc0qbhp1038bn09vczjlf"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/nknorg/nkn"))
    (propagated-inputs
      `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
        ("go-golang-org-x-time" ,go-golang-org-x-time)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-github-com-xtaci-smux" ,go-github-com-xtaci-smux)
        ("go-github-com-xtaci-lossyconn" ,go-github-com-xtaci-lossyconn)
        ("go-github-com-xtaci-kcp-go" ,go-github-com-xtaci-kcp-go)
        ("go-github-com-urfave-cli" ,go-github-com-urfave-cli)
        ("go-github-com-tjfoc-gmsm" ,go-github-com-tjfoc-gmsm)
        ("go-github-com-templexxx-xor" ,go-github-com-templexxx-xor)
        ("go-github-com-syndtr-goleveldb" ,go-github-com-syndtr-goleveldb)
        ("go-github-com-rdegges-go-ipify" ,go-github-com-rdegges-go-ipify)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-pborman-uuid" ,go-github-com-pborman-uuid)
        ("go-github-com-pbnjay-memory" ,go-github-com-pbnjay-memory)
        ("go-github-com-patrickmn-go-cache" ,go-github-com-patrickmn-go-cache)
        ("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
        ("go-github-com-onsi-ginkgo" ,go-github-com-onsi-ginkgo)
        ("go-github-com-nknorg-portmapper" ,go-github-com-nknorg-portmapper)
        ("go-github-com-nknorg-nnet" ,go-github-com-nknorg-nnet)
        ("go-github-com-nknorg-go-portscanner"
         ,go-github-com-nknorg-go-portscanner)
        ("go-github-com-nknorg-consequential"
         ,go-github-com-nknorg-consequential)
        ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
        ("go-github-com-klauspost-reedsolomon"
         ,go-github-com-klauspost-reedsolomon)
        ("go-github-com-klauspost-cpuid" ,go-github-com-klauspost-cpuid)
        ("go-github-com-jpillora-backoff" ,go-github-com-jpillora-backoff)
        ("go-github-com-jackpal-go-nat-pmp" ,go-github-com-jackpal-go-nat-pmp)
        ("go-github-com-itchyny-base58-go" ,go-github-com-itchyny-base58-go)
        ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
        ("go-github-com-howeyc-gopass" ,go-github-com-howeyc-gopass)
        ("go-github-com-hashicorp-yamux" ,go-github-com-hashicorp-yamux)
        ("go-github-com-gorilla-websocket" ,go-github-com-gorilla-websocket)
        ("go-github-com-gorilla-securecookie"
         ,go-github-com-gorilla-securecookie)
        ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
        ("go-github-com-gin-gonic-gin" ,go-github-com-gin-gonic-gin)
        ("go-github-com-gin-contrib-sessions"
         ,go-github-com-gin-contrib-sessions)))
    (home-page "https://github.com/nknorg/nkn")
    (synopsis "NKN Full Node")
    (description "Official Go implementation of NKN full node.")
    (license license:asl2.0)))
