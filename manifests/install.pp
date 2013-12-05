# == Class: solr::install
# This class installs the required packages for jetty
#
# === Actions
# - Installs jetty and extra libs
#
class solr::install {

  package { 'jetty':
    ensure  => present,
    require => Package['oracle-java7-installer'],
  }

  package { 'libjetty-extra':
    ensure  => present,
    require => Package['jetty'],
  }

  package { 'wget':
    ensure  => present,
  }

  package { 'curl':
    ensure  => present,
  }
}

