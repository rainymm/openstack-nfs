class nfs::server::redhat::install {

  package { 'nfs-utils':
    ensure => installed,
  }

}
