;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2013, 2015 Andreas Enge <andreas@enge.fr>
;;; Copyright © 2013, 2014, 2015, 2016, 2017, 2018, 2019 Ludovic Courtès <ludo@gnu.org>
;;; Copyright © 2014, 2015, 2016, 2017, 2018, 2019, 2020 Mark H Weaver <mhw@netris.org>
;;; Copyright © 2015 Sou Bunnbu <iyzsong@gmail.com>
;;; Copyright © 2016, 2017, 2018, 2019 Efraim Flashner <efraim@flashner.co.il>
;;; Copyright © 2016 Alex Griffin <a@ajgrf.com>
;;; Copyright © 2017 Clément Lassieur <clement@lassieur.org>
;;; Copyright © 2017, 2018 Nikita <nikita@n0.is>
;;; Copyright (C) 2017, 2018 ng0 <gillmann@infotropique.org>
;;; Copyright © 2017, 2018, 2020 Tobias Geerinckx-Rice <me@tobias.gr>
;;; Copyright © 2018, 2020 Ricardo Wurmus <rekado@elephly.net>
;;; Copyright © 2019 Ivan Petkov <ivanppetkov@gmail.com>
;;; Copyright © 2020 Oleg Pykhalov <go.wigust@gmail.com>
;;; Copyright © 2020 Jakub Kądziołka <kuba@kadziolka.net>
;;; Copyright © 2019, 2020 Adrian Malacoda <malacoda@monarch-pass.net>
;;; Copyright (C) 2019, 2020 Adrian Malacoda <malacoda@monarch-pass.net>
;;; Copyright © 2020, 2021 Jonathan Brielmaier <jonathan.brielmaier@web.de>
;;; Copyright © 2020 Zhu Zihao <all_but_last@163.com>
;;; Copyright © 2021 pineapples <guixuser6392@protonmail.com>
;;; Copyright © 2021 Brice Waegeneire <brice@waegenei.re>
;;;
;;; This file is not part of GNU Guix.
;;;
;;; GNU Guix is free software; you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 3 of the License, or (at
;;; your option) any later version.
;;;
;;; GNU Guix is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with GNU Guix.  If not, see <http://www.gnu.org/licenses/>.

(define-module (endgame packages librewolf)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system cargo)
  #:use-module (guix build-system trivial)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix utils)

  #:use-module (gnu packages)
  #:use-module (gnu packages assembly)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages cups)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages icu4c)
  #:use-module (gnu packages image)
  #:use-module (gnu packages jemalloc)
  #:use-module (gnu packages kerberos)
  #:use-module (gnu packages libcanberra)
  #:use-module (gnu packages libevent)
  #:use-module (gnu packages libffi)
  #:use-module (gnu packages libreoffice) ;for hunspell
  #:use-module (gnu packages linux)
  #:use-module (gnu packages llvm)
  #:use-module (gnu packages m4)
  #:use-module (gnu packages node)
  #:use-module (gnu packages nss)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages pulseaudio)
  #:use-module (gnu packages python)
  #:use-module (gnu packages rust)
  #:use-module (gnu packages rust-apps)
  #:use-module (gnu packages sqlite)
  #:use-module (gnu packages video)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages xorg))

; https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=librewolf
(define-public librewolf
  (package
    (name "librewolf")
    (version "92.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
       (url "https://librewolf-community.gitlab.io")
	    (commit version)))
       (sha256
        (base32 "0ngzqd2cijxibcspmx1k2c5gylccl3vzxcx6vbjmkgd746y5vi1m"))))
    (build-system gnu-build-system)
    (arguments
      `(#:phases
       (modify-phases %standard-phases
         ;(replace 'configure
         ;  (lambda* (#:key inputs outputs configure-flags #:allow-other-keys)
         (replace 'build
           (lambda* (#:key (make-flags '()) (parallel-build? #t)
                     #:allow-other-keys)
             #t))
         (replace 'install
           (lambda _ (invoke "./mach" "install")))
         ;(add-after 'install 'wrap-program
         (add-after 'wrap-program 'install-desktop-entry
           (lambda* (#:key outputs #:allow-other-keys)
             (let* ((desktop-file "taskcluster/docker/firefox-snap/firefox.desktop")
                    (out (assoc-ref outputs "out"))
                    (applications (string-append out "/share/applications")))
               (substitute* desktop-file
                 (("^Exec=firefox") (string-append "Exec=" out "/bin/firefox"))
                 (("Icon=.*") "Icon=firefox\n")
                 (("NewWindow") "new-window")
                 (("NewPrivateWindow") "new-private-window"))
               (install-file desktop-file applications))
             #t))
         (add-after 'install-desktop-entry 'install-icons
           (lambda* (#:key outputs #:allow-other-keys)
             (let* ((out (assoc-ref outputs "out"))
                    (icon-source-dir
                     (string-append
                      out "/lib/firefox/browser/chrome/icons/default")))
               (for-each
                (lambda (size)
                  (let ((dest (string-append out "/share/icons/hicolor/"
                                             size "x" size "/apps")))
                    (mkdir-p dest)
                    (symlink (string-append icon-source-dir
                                            "/default" size ".png")
                             (string-append dest "/firefox.png"))))
                '("16" "32" "48" "64" "128"))
               #t))))

       ;; Test will significantly increase build time but with little rewards.
       #:tests? #f

       ;; WARNING: Parallel build will consume lots of memory!
       ;; If you have encountered OOM issue in build phase, try disable it.
       ;; #:parallel-build? #f

       ;; Some dynamic lib was determined at runtime, so rpath check may fail.
       #:validate-runpath? #f))
    (inputs
     `(("bzip2" ,bzip2)
       ("cairo" ,cairo)
       ("cups" ,cups)
       ("dbus-glib" ,dbus-glib)
       ("freetype" ,freetype)
       ("ffmpeg" ,ffmpeg)
       ("gdk-pixbuf" ,gdk-pixbuf)
       ("glib" ,glib)
       ("gtk+" ,gtk+)
       ("gtk+-2" ,gtk+-2)
       ("hunspell" ,hunspell)
       ("icu4c" ,icu4c-67)
       ("jemalloc" ,jemalloc)
       ("libcanberra" ,libcanberra)
       ("libevent" ,libevent)
       ("libffi" ,libffi)
       ("libgnome" ,libgnome)
       ("libjpeg-turbo" ,libjpeg-turbo)
       ("libnotify" ,libnotify)
       ;; ("libpng-apng" ,libpng-apng)
       ("libvpx" ,libvpx)
       ("libxcomposite" ,libxcomposite)
       ("libxft" ,libxft)
       ("libxinerama" ,libxinerama)
       ("libxscrnsaver" ,libxscrnsaver)
       ("libxt" ,libxt)
       ("mesa" ,mesa)
       ("mit-krb5" ,mit-krb5)
       ;; ("nspr" ,nspr)
       ;; ("nss" ,nss)
       ("pango" ,pango)
       ("pixman" ,pixman)
       ("pulseaudio" ,pulseaudio)
       ("startup-notification" ,startup-notification)
       ("sqlite" ,sqlite)
       ("udev" ,eudev)
       ("unzip" ,unzip)
       ("zip" ,zip)
       ("zlib" ,zlib)))
    (native-inputs
     `(("autoconf" ,autoconf-2.13)
       ("cargo" ,rust-1.47 "cargo")
       ("clang" ,clang-10)
       ("llvm" ,llvm-10)
       ("m4" ,m4)
       ("nasm" ,nasm)
       ("node" ,node)
       ("perl" ,perl)
       ("pkg-config" ,pkg-config)
       ("python" ,python)
       ("python2" ,python-2.7)
       ("rust" ,rust-1.47)
       ("rust-cbindgen" ,rust-cbindgen-0.19)
       ("which" ,which)
       ("yasm" ,yasm)))
    (home-page "https://mozilla.org/firefox/")
    (synopsis "Community-maintained fork of Firefox, focused on privacy, security and freedom")
    (description
     "Full-featured browser client built from Firefox source tree, without
the official icon and the name \"firefox\".")
    (license (list license:mpl2.0 license:gpl1 license:lgpl2.0))))
