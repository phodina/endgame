/gnu/packages/linux.scm

- 917 definition of linux-libre (latest version - just reference pointing to newest version)
- 906 defines the linux-libre-5.14 (newest)
      - based on make-linux-libre
      - for all archs
      - pass kernel-config
      - uses linux-libre-5.14-source
- 485 defines linux-libre-5.14-source
         - based on linux-libre-5.14-pristine-source
         - and some other patches
- 357 defines linux-libre-5.14-pristine-source
         - takes upstream-linux-source
         - applies deblob scripts
- 339 defines the upstream-linux-source

/nongnu/packages/linux.scm
# Downstream
- create a new define linux-url for specific downstream kernel
- create a new downstream kernel based on the make-linux-libre like in 1066

#u-boot
/gnu/packages/bootloaders
- define patch to apply 495
- add the patch to u-boot list of patches 508

- make-u-boot-package defines board and triplet 640
- define u-boot-BOARD based on the function 717 or 720, to modify phases
  (pinebook-pro-rk3399 965)
