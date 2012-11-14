
class dmlite::plugins::oracle::params (
) inherits dmlite::params {
    $oracle_username	= "dpmdbuser"
    $oracle_password	= "change-this"
    $oracle_db		= "localhost"
    $dbpool_min		= 8
    $dbpool_max		= 32
    $mapfile		= "/etc/lcgdm-mapfile"
    $host_dn_is_root	= "no"

    $enable_ns		= true
}

class dmlite::plugins::oracle::config (
    $oracle_username	= $dmlite::plugins::oracle::params::oracle_username,
    $oracle_password	= $dmlite::plugins::oracle::params::oracle_password,
    $oracle_db		= $dmlite::plugins::oracle::params::oracle_db,
    $dbpool_min		= $dmlite::plugins::oracle::params::dbpool_min,
    $dbpool_max		= $dmlite::plugins::oracle::params::dbpool_max,
    $mapfile		= $dmlite::plugins::oracle::params::mapfile,
    $host_dn_is_root	= $dmlite::plugins::oracle::params::host_dn_is_root,
    $enable_ns		= $dmlite::plugins::oracle::params::enable_ns
) inherits dmlite::plugins::oracle::params {

    file {
      "/etc/dmlite.conf.d/oracle.conf":
        content => template("dmlite/oracle.conf.erb"),
    }
}

class dmlite::plugins::oracle::install (
) inherits dmlite::plugins::oracle::params {

    package { 
        "dmlite-plugins-oracle": 
            ensure => latest; 
    }

}
