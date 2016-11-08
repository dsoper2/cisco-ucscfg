# Class: ucscfg
# ===========================
#
# Full description of class ucscfg here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'ucscfg':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class ucscfg (
  $bios_version = $ucscfg::params::bios_version,
  $intel_hyper_thread = $ucscfg::params::intel_hyper_thread,
  $sata_mode_select = $ucscfg::params::sata_mode_select,
  $fan_policy = $ucscfg::params::fan_policy,
  $settings_dir = $ucscfg::params::settings_dir,
  $bios_settings_file = $ucscfg::params::bios_settings_file
) inherits ucscfg::params {

  validate_string($bios_version)
  validate_string($intel_hyper_thread)
  validate_string($sata_mode_select)
  validate_string($fan_policy)
  validate_string($settings_dir)
  validate_string($bios_settings_file)
  
  anchor { 'ucscfg::begin': } ->
  class { '::ucscfg::config': } ->
  anchor { 'ucscfg::end': }

}
