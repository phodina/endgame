(define-module (endgame packages digilent)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module (gnu packages qt))

; TODO: Use original channel and create patches
(define-public digilent-agent
  (let ((commit-ref "ff1d7539d714f4e8883448475adb1955eec83706"))
    (package
      (name "digilent-agent")
      (version commit-ref)
      (source (origin
                (method git-fetch)
                (uri (git-reference
                       ;; It's my own fork, not the Digilent official one
                       ;; because I removed tracking
                       (url "https://github.com/ekaitz-zarraga/digilent-agent")
                       (commit commit-ref)
                       (recursive? #t)))
                (file-name (git-file-name name version))
                (sha256
                  (base32 "1rm6iysdba9p2iqd1yig02dav4z0h3ppwcqy5chhd229ma4c7173"))))
      (build-system cmake-build-system)
      (native-inputs
        `(("qtserialport" ,qtserialport)
          ("qtbase" ,qtbase)))
      (arguments
        `(#:tests? #f
          #:phases
            (modify-phases
              %standard-phases
              (replace
                'configure
                (lambda* (#:key outputs #:allow-other-keys)
                         (let ((out (assoc-ref outputs "out")))
                           ; Need o overwrite stuff in digilent-agent.pro from:
                           ; 8< ----
                           ; TARGET = digilent-agent
                           ; target.path = /usr/bin
                           ;
                           ; wwwRoot.path = /usr/share/digilent-agent/www
                           ; wwwRoot.files = www/*
                           ;
                           ; INSTALLS += target
                           ; INSTALLS += wwwRoot
                           ; ---- >8
                           ; Where it says /usr/ we need to add our output dir
                           (substitute* "digilent-agent.pro"
                                        (("\\/usr\\/bin")
                                         (string-append out "/bin"))
                                        (("\\/usr\\/share")
                                         (string-append out "/share")))
                           (substitute* "src/main.cpp"
                                        (("\\/usr\\/share")
                                         (string-append out "/share")))
                           (invoke "qmake")))))))
      (synopsis "Digilent connector for Digilent devices such as OpenScope
        MZ")
      (description "The Digilent Agent is a service that runs in the system
        tray and enables browser based applications to communicate with
        Digilent hardware.")
      (home-page
        "https://reference.digilentinc.com/reference/software/digilent-agent/start")
      (license license:lgpl3))))

