(define-module (system-config machine asgard)
  #:use-module (system-config system base-system)
  #:use-module (endgame utils)
  #:use-module (gnu))

(define os
 (operating-system
  (inherit base-operating-system)
  (host-name "asgard")

  (mapped-devices
    (list
      (mapped-device
        (source
          (uuid "81b3d675-9906-489e-960e-2d17804e59f9"))
        (target "cryptsystem")
        (type luks-device-mapping))))

  (file-systems
    (cons*
      (file-system
        (mount-point "/")
        (device "/dev/mapper/cryptsystem")
        (type "btrfs")
        (dependencies mapped-devices))
      (file-system
        (mount-point "/boot/efi")
        (device (uuid "2E85-0271" 'fat32))
        (type "vfat"))
      %base-file-systems))))

(print-licenses os)

os
