
class dmlite::plugins::s3::params (
) inherits dmlite::params {
    $timeout		= 3600
    $enable_pool_driver	= true
}

class dmlite::plugins::s3::config (
    $timeout		= $dmlite::plugins::s3::params::timeout,
    $enable_pool_driver	= $dmlite::plugins::s3::params::enable_pool_driver
) inherits dmlite::plugins::s3::params {

    file {
      "/etc/dmlite.conf.d/s3.conf":
        content => template("dmlite/s3.conf.erb"),
    }
}

class dmlite::plugins::s3::install (
) inherits dmlite::plugins::s3::params {

    package { 
        "dmlite-plugins-s3": 
            ensure => latest; 
    }

}
