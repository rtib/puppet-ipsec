# ipsec::service
#
# Manage the service needed for ipsec operations. Do not include this class on its own.
#
# @summary Service management class for IPSec
#
# @param service_name name of the service unit
# @param service_restart deprecated, do not set.
#
class ipsec::service (
  String $service_name,
  String $service_restart = 'deprecated',
) {
  if $service_restart != 'deprecated' {
    warn('Parameter ipsec::service::service_restart has been deprecated. Do not set.')
  }
  $_srv_ensure = $ipsec::ensure ? {
    'present' => running,
    default   => stopped,
  }
  $_srv_enable = $ipsec::ensure ? {
    'present' => true,
    default   => false,
  }
  service { $service_name:
    ensure => $_srv_ensure,
    enable => $_srv_enable,
  }
}
