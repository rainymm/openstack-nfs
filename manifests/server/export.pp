define nfs::server::export (
  $v3_export_name = $name,
  $v4_export_name = regsubst($name, '.*/(.*)', '\1' ),
  $clients = 'localhost(ro)',
  $bind = 'rbind',
  # globals for this share 
  # propogated to storeconfigs
  $ensure = 'mounted',
  $mount = undef,
  $remounts = false,
  $atboot = false,
  $options = '_netdev',
  $bindmount = undef,
  $nfstag = undef
) {



    nfs::server::export::configure{
      "${v3_export_name}":
        ensure  => $ensure,
        clients => $clients,

    }

}
