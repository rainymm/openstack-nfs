class nfs::client::mount (
  $server = undef,
  $share  = undef,
  $mount  = undef
) {
    mount { $mount:
        device => "${server}:${share}",
        fstype => 'nfs',
        ensure => 'mounted',
        atboot => true,
        options => '_netdev',
    }
}
