# ipsec::install
#
# Install necessary packages.
#
# Do not use it separately.
#
# @summary Do not use it separately
#
# @param packages package names to be installed
#
class ipsec::install (
  Array[String] $packages,
) {
  package { $packages:
    ensure => $ipsec::ensure,
  }
}
