
class dmlite::plugins::mysql::params (
) inherits dmlite::params {
    $mysql_host		= "localhost"
    $mysql_username	= "dpmdbuser"
    $mysql_password	= "change-this"
    $mysql_port		= 0
    $ns_db		= "cns_db"
    $dpm_db		= "dpm_db"
    $dbpool_size	= 32
    $mapfile		= "/etc/lcgdm-mapfile"
    $host_dn_is_root	= "no"

    $enable_dpm		= true
    $enable_ns		= false
}

class dmlite::plugins::mysql::config (
    $mysql_host		= $dmlite::plugins::mysql::params::mysql_host,
    $mysql_username	= $dmlite::plugins::mysql::params::mysql_username,
    $mysql_password	= $dmlite::plugins::mysql::params::mysql_password,
    $mysql_port		= $dmlite::plugins::mysql::params::mysql_port,
    $ns_db		= $dmlite::plugins::mysql::params::ns_db,
    $dpm_db		= $dmlite::plugins::mysql::params::dpm_db,
    $dbpool_size	= $dmlite::plugins::mysql::params::dbpool_size,
    $mapfile		= $dmlite::plugins::mysql::params::mapfile,
    $host_dn_is_root	= $dmlite::plugins::mysql::params::host_dn_is_root,
    $enable_ns		= $dmlite::plugins::mysql::params::enable_ns,
    $enable_ns		= $dmlite::plugins::mysql::params::enable_ns
) inherits dmlite::plugins::mysql::params {

    file {
      "/etc/dmlite.conf.d/mysql.conf":
        content => template("dmlite/mysql.conf.erb"),
    }
}

class dmlite::plugins::mysql::install (
) inherits dmlite::plugins::mysql::params {

    package { 
        "dmlite-plugins-mysql": 
            ensure => latest; 
    }

}
