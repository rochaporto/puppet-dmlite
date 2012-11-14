
class dmlite::plugins::adapter::params (
) inherits dmlite::params {
    $dpm_host		= "localhost"
    $connection_timeout	= 2
    $retry_limit	= 3
    $retry_interval	= 2
    $enable_dpm		= true
    $enable_io		= true
    $enable_rfio	= false
    $enable_ns		= false
    $enable_pooldriver	= true
}

class dmlite::plugins::adapter::config (
    $dpm_host		= $dmlite::plugins::adapter::params::dpm_host,
    $connection_timeout	= $dmlite::plugins::adapter::params::connection_timeout,
    $retry_limit	= $dmlite::plugins::adapter::params::retry_limit,
    $retry_interval	= $dmlite::plugins::adapter::params::retry_interval,
    $enable_dpm		= $dmlite::plugins::adapter::params::enable_dpm,
    $enable_io		= $dmlite::plugins::adapter::params::enable_io,
    $enable_rfio	= $dmlite::plugins::adapter::params::enable_rfio,
    $enable_ns		= $dmlite::plugins::adapter::params::enable_ns,
    $enable_pooldriver	= $dmlite::plugins::adapter::params::enable_pooldriver
) inherits dmlite::plugins::adapter::params {

    file {
      "/etc/dmlite.conf.d/adapter.conf":
        content => template("dmlite/adapter.conf.erb"),
    }
}

class dmlite::plugins::adapter::install (
) inherits dmlite::plugins::adapter::params {

    package { 
        "dmlite-plugins-adapter": 
            ensure => latest; 
    }

}
