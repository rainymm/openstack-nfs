node 'compute1' {
    include '::nfs::server'
    nfs::server::export { '/opt/test':
        ensure => 'mounted',
        clients => '10.68.19.0/24(rw,fsid=0,insecure,no_subtree_check,async,no_root_squash)'
    }
}
