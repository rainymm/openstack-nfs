class nfs::server::redhat(
  $nfs_v4 = false,
  $nfs_v4_idmap_domain = undef
) {


  include nfs::server::redhat::install, nfs::server::redhat::service


}
