(define-module (system-config machine rocinante)
  #:use-module (system-config system base-system)
  #:use-module (endgame utils)
  #:use-module (gnu))

(define os
 (operating-system
  (inherit base-operating-system)
  (host-name "rocinante")

  (mapped-devices
   (list
    (mapped-device
     (source (uuid "cffbf341-dfd6-4a19-b990-5e9e762f6bde"))
     (target "cryptsystem")
     (type luks-device-mapping))))

  (swap-devices (list "/swap/swapfile"))

  (file-systems
   (append
     (list
       (file-system
         (device "/dev/mapper/cryptsystem")
         (mount-point "/")
         (type "btrfs")
         (options "subvol=root")
         (dependencies mapped-devices))
       (file-system
         (device "/dev/mapper/cryptsystem")
         (mount-point "/boot")
         (type "btrfs")
         (options "subvol=boot")
         (dependencies mapped-devices))
       (file-system
         (device "/dev/mapper/cryptsystem")
         (mount-point "/home")
         (type "btrfs")
         (options "subvol=home")
         (dependencies mapped-devices))
       (file-system
         (device "/dev/mapper/cryptsystem")
         (mount-point "/gnu")
         (type "btrfs")
         (options "subvol=gnu")
         (dependencies mapped-devices))
       (file-system
         (device "/dev/mapper/cryptsystem")
         (mount-point "/var/log")
         (type "btrfs")
         (options "subvol=log")
         (dependencies mapped-devices))
       (file-system
         (device "/dev/mapper/cryptsystem")
         (mount-point "/persist")
         (type "btrfs")
         (options "subvol=persist")
         (dependencies mapped-devices))
       (file-system
         (device "/dev/mapper/cryptsystem")
         (mount-point "/swap")
         (type "btrfs")
         (options "subvol=swap")
         (dependencies mapped-devices))
       (file-system
         (device (uuid "22EC-E382" 'fat))
         (mount-point "/boot/efi")
         (type "vfat")))
        %base-file-systems))))

(print-licenses os)

os
