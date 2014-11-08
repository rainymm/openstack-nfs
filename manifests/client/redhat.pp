class nfs::client::redhat (
  $nfs_v4 = false,
  $nfs_v4_idmap_domain = undef,
  $server_ip = undef,
  $mount = undef,
  $share = undef
) inherits nfs::client::redhat::params {

  include nfs::client::redhat::install, 
    nfs::client::redhat::configure, 
    nfs::client::redhat::service

class{ 'nfs::client::mount': 
  mount  => $mount,
  server => $server_ip,
  share  => $share,
}


}
