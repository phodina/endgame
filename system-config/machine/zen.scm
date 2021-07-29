(define-module (system-config machine zen)
  #:use-module (system-config system base-system)
  #:use-module (endgame utils)
  #:use-module (gnu))

(define os
 (operating-system
  (inherit base-operating-system)
  (host-name "zen")

  (mapped-devices
    (list
      (mapped-device
        (source
          (uuid "e07a04d1-b211-4fe8-baee-58afb97273cc"))
        (target "cryptroot")
        (type luks-device-mapping))))

  (file-systems
    (cons*
      (file-system
        (mount-point "/")
        (device "/dev/mapper/cryptroot")
        (type "btrfs")
        (dependencies mapped-devices))
      (file-system
        (mount-point "/boot/efi")
        (device (uuid "65B2-0976" 'fat32))
        (type "vfat"))
      %base-file-systems))))

(print-licenses os)

os
