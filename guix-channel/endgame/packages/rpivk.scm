(define-module (endgame packages rpivk)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages vulkan)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rpi-vk-driver
   (let ((commit "6bfd11b1ccb947e4eb8d1665083d56d66707de01")
	 (revision "1"))
(package
  (name "rpi-vk-driver")
  (version commit)
  (source (origin
            (method git-fetch)
            (uri (git-reference
             (url "https://github.com/Yours3lf/rpi-vk-driver")
             (commit version)))
            (file-name (git-file-name name version))
	    (modules '((guix build utils)))
	    (snippet
              '(begin
		 (substitute* "cmake/global.cmake"
                   (("include_directories\\($\\{EXTERNAL_SYSROOT\\}/include\\)") "")
                   (("include_directories\\($\\{EXTERNAL_SYSROOT\\}/include/drm\\)") "")
		   (("$\\{EXTERNAL_SYSROOT\\}/lib") ""))
		 (substitute* "CMakeLists.txt"
                   (("include\\(vulkan\\)") "")
                   (("include\\(packaging\\)") "")
                   (("include\\(sysroot\\)") ""))
		 (delete-file "cmake/vulkan.cmake")
		 (delete-file "cmake/sysroot.cmake")
		 (delete-file "cmake/packaging.cmake")
		 (delete-file "cmake/uninstall.cmake")
		 (delete-file-recursively "external")))
            (sha256
             (base32
              "00vzi1id1rik20w760yk9bkg0sy6rkg7rk17xglcpwmhv7djb5qf"))))
  (build-system cmake-build-system)
;  (arguments
;    `(;#:tests? #f
;      #:phases
;      (modify-phases %standard-phases
;       (add-after 'unpack 'chdir
;        (lambda* _
;         (chdir "mjpg-streamer-experimental"))))))
  (native-inputs `(("pkg-config" ,pkg-config)))
  (inputs `(("mesa" ,mesa)
            ("vulkan-tools" ,vulkan-tools)
            ("vulkan-loader" ,vulkan-loader)
            ("vulkan-headers" ,vulkan-headers)))
  (synopsis "Vulkan driver for the Raspberry Pi")
  (description "Low level GPU driver for the Broadcom Videocore IV GPU that implements a subset of the Vulkan standard.")
  (home-page "https://github.com/Yours3lf/rpi-vk-driver")
  (license license:expat))))
