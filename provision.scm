(define-module (provision)
	       #:use-module (system-config machine asgard))
(list (machine
       (operating-system %system)
       (environment managed-host-environment-type)
       (configuration (machine-ssh-configuration
                       (host-name "192.168.1.226")
                       (system "x86_64-linux")
                       (user "root")
                       (identity "./id_rsa")
                       (port 22)))))
