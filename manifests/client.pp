
class nfs::client (
  $nfs_v4              = $nfs::params::nfs_v4,
  $nfs_v4_mount_root   = $nfs::params::nfs_v4_mount_root,
  $nfs_v4_idmap_domain = $nfs::params::nfs_v4_idmap_domain,
  $server_ip = undef,
  $share = undef,
  $mount = undef
) inherits nfs::params {

  class{ "nfs::client::${osfamily}":
    nfs_v4              => $nfs_v4,
    nfs_v4_idmap_domain => $nfs_v4_idmap_domain,
    server_ip => $server_ip,
    share => $share,
    mount => $mount
  }

}
