# GUIX
guix.scm contains Guix package definitions that can be used to
override the ones found in Guix's GNU distribution.

Guix packagers are encouraged to adopt and adjust these definitions.

OpenWRT developers can use this for easily setting up a development or
test environment using Guix.

When using the package definition for building a package this will
pick up the current development code. The version of the resulting
package is the output of 'git describe --tags'.

To make guix build the development package defined here, use the
following command:

  guix build -f <endgame.git>/environments/openwrt

To spawn a (development) environment with OpenWRT's dependencies
installed, run:

  guix environment --load-path=<endgame.git>/environments/openwrt/guix.scm

To spawn a (test) environment with OpenWRT available in this
environment, run:

  guix environment --load-path=<endgame.git>/environment/openwrt/guix.scm --ad-hoc guix

It is recommented to also pass the '--pure' option to guix, to make
sure the environment is not polluted with existing packages.
