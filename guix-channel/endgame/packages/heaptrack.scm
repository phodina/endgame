(define-module (endgame packages heaptrack)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages datastructures)
  #:use-module (gnu packages elf)
  #:use-module (gnu packages libunwind)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages qt)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

; TODO: no binary for the GUI binary

(define-public heaptrack
  (package
    (name "heaptrack")
    (version "1.2.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/KDE/heaptrack")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (modules '((guix build utils)))
              (snippet '(begin
                          delete-file-recursively "3rdparty"))
              (sha256
               (base32
                "0pw82c26da014i1qxnaib3fqa52ijhf0m4swhjc3qq4hm2dx9bxj"))))
    (build-system cmake-build-system)
    (arguments
     `(#:phases
       (modify-phases %standard-phases
         (add-after 'unpack 'fix-cmake-3rdparty-files
           (lambda* _
             (substitute* "CMakeLists.txt"
               (("add_subdirectory\\(3rdparty\\)") "")
               (("include_directories\\(3rdparty/robin-map/include\\)") "")))))))
    (native-inputs `(("pkg-config" ,pkg-config)))
    (inputs `(("boost" ,boost)
              ("ecm" ,ecm)
              ("elfutils" ,elfutils)
              ("libunwind" ,libunwind)
              ("qtbase" ,qtbase-5)
              ("robin-map" ,robin-map)
              ("zstd" ,zstd)
              ("zlib" ,zlib)))
    (synopsis "Heap memory profiler for Linux")
    (description "Heaptrack traces all memory allocations and annotates these
events with stack traces.  Dedicated analysis tools then allow you to interpret
the heap memory profile to:
@enumerate
@item to optimize memory footprint
@item find memory leaks
@item find allocation hotspots
@item find temporary allocations
@end enumerate")
    (home-page "https://github.com/KDE/heaptrack")
    (license license:lgpl2.1+)))
