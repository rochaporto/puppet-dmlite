
class dmlite::plugins::vfs::params (
) inherits dmlite::params {
    $enable_vfs	= true
}

class dmlite::plugins::vfs::config (
    $enable_vfs	= $dmlite::plugins::vfs::params::enable_vfs
) inherits dmlite::plugins::vfs::params {

    file {
      "/etc/dmlite.conf.d/vfs.conf":
        content => template("dmlite/vfs.conf.erb"),
    }
}

class dmlite::plugins::vfs::install (
) inherits dmlite::plugins::vfs::params {

    package { 
        "dmlite-plugins-vfs": 
            ensure => latest; 
    }

}
