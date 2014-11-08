
class nfs::server (
  $nfs_v4                       = $nfs::params::nfs_v4,
  $nfs_v4_export_root           = $nfs::params::nfs_v4_export_root,
  $nfs_v4_export_root_clients   = $nfs::params::nfs_v4_export_root_clients,
  $nfs_v4_idmap_domain          = $nfs::params::domain,
  # 
  $nfs_v4_root_export_ensure    = 'mounted',
  $nfs_v4_root_export_mount     = undef,
  $nfs_v4_root_export_remounts  = false,
  $nfs_v4_root_export_atboot    = false,
  $nfs_v4_root_export_options   = '_netdev',
  $nfs_v4_root_export_bindmount = undef,
  $nfs_v4_root_export_tag       = undef
) inherits nfs::params {

  class{ "nfs::server::${osfamily}":
    nfs_v4              => $nfs_v4,
    nfs_v4_idmap_domain => $nfs_v4_idmap_domain,
  }

  include  nfs::server::configure
}
