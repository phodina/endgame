# Append to inherited list
(define-public coreutils-with-xattr
  (package
    (inherit coreutils)
    (name "coreutils-with-xattr")
    (inputs `(("attr"  ,attr)
	      ,@(package-inputs coreutils)))))

# Making custom kernel
1. Package it with all the dependencies
2. Get the current config
```
cp $(guix build)/gnu/packages/aux-files/linux-libre/5.14-x86_64.conf .config
```
3. Get the kernel sources
```
LINUX=$(guix build -S linux)
VERSION=$(tar -tf $LINUX | head -n 1)
tar -xf $LINUX
cp .config $VERSION/.config
cd $VERSION
```
4. Migrate to the new kernel version
```
guix environment linux -- make oldconfig
```
5. Enter the configuration menu
```
guix environment linux --ad-hoc ncurses pkg-config -- make menuconfig
```
6. Place the config file into the packages repository
```
(define (config-linux package-linux config-path)
  (package
    (inherit package-linux)
    (native-inputs
     `(("kconfig" ,(local-file config-path))
     ,@(alist-delete "kconfig"
                     (package-native-inputs package-linux))))))

(define linux-custom (config-linux linux-5.14 "relative/path/to/config.conf"))
```
## Kernel .config definition
Kernel definition is in guix/gnu/packages/linux.scm under Kernel package utilites, there is a code to load custom config
```
(let ((build  (assoc-ref %standard-phases 'build))
      (config (assoc-ref (or native-inputs inputs) "kconfig")))

  ;; Use a custom kernel configuration file or a default
  ;; configuration file.
  (if config
      (begin
        (copy-file config ".config")
        (chmod ".config" #o666))
      (invoke "make" ,defconfig))
```

```
(define-public linux-libre/E2140
  (package
    (inherit linux-libre)
    (native-inputs
     `(("kconfig" ,(local-file "E2140.config"))
      ,@(alist-delete "kconfig"
                      (package-native-inputs linux-libre))))))
```
## Kernel extra options
By not providing a configuration file the .config starts blank and the options are applied.

```
(define %default-extra-linux-options
  `(;; https://lists.gnu.org/archive/html/guix-devel/2014-04/msg00039.html
   ("CONFIG_DEVPTS_MULTIPLE_INSTANCES" . #t)
   ;; Modules required for initrd:
   ("CONFIG_NET_9P" . m)
   ("CONFIG_NET_9P_VIRTIO" . m)
   ("CONFIG_VIRTIO_BLK" . m)
   ("CONFIG_VIRTIO_NET" . m)
   ("CONFIG_VIRTIO_PCI" . m)
   ("CONFIG_VIRTIO_BALLOON" . m)
   ("CONFIG_VIRTIO_MMIO" . m)
   ("CONFIG_FUSE_FS" . m)
   ("CONFIG_CIFS" . m)
   ("CONFIG_9P_FS" . m)))
```

```
(define %macbook41-full-config
  (append %macbook41-config-options
          %filesystems
          %efi-support
          %emulation
          (@@ (gnu packages linux) %default-extra-linux-options)))

(define-public linux-libre-macbook41
  ;; XXX: Access the internal 'make-linux-libre' procedure, which is
  ;; private and unexported, and is liable to change in the future.
  ((@@ (gnu packages linux) make-linux-libre) (@@ (gnu packages linux) %linux-libre-version)
                      (@@ (gnu packages linux) %linux-libre-hash)
                      '("x86_64-linux")
                      #:extra-version "macbook41"
                      #:patches (@@ (gnu packages linux) %linux-libre-5.1-patches)
                      #:extra-options %macbook41-config-options))
```

From the above example %filesystems is a collection of flags I compiled enabling different filesystem support, %efi-support enables EFI support and %emulation enables my x86_64-linux machine to act in 32-bit mode also. %default-extra-linux-options are the ones quoted above, which had to be added in since I replaced them in the extra-options keyword.

[Configuring the kernel](https://www.kernel.org/doc/html/latest/admin-guide/README.html?highlight=localmodconfig)
[Configuring the Linux kernel](https://wiki.gentoo.org/wiki/Handbook:AMD64/Installation/Kernel)
This all sounds like it should be doable, but how does one even know which modules are required for their system?
```
tar xf $(guix build linux-libre --source)
touch .config
guix environment linux-libre -- make localmodconfig
```
Ignore messages started with WARNING.
Copy the once like this
```
module pcspkr did not have configs CONFIG_INPUT_PCSPKR
```

Copy them and append =m
```
CONFIG_INPUT_PCSPKR=m
CONFIG_VIRTIO=m
```

CONFIG_MODULES is necessary to load kernel modules.
CONFIG_BLK_DEV_SD is required from hard drives.

The second way  makes more use of Guix's features and allows you to share configuration segments between different kernels.

Left undiscussed however, is Guix's initrd and its customization. It is likely that you'll need to modify the initrd on a machine using a custom kernel, since certain modules which are expected to be built may not be available for inclusion into the initrd.

[linux kernel compiling with custom config](https://gitlab.com/nonguix/nonguix/-/issues/42)
