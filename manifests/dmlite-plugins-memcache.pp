class dmlite::plugins::memcache::params (
) inherits dmlite::params {
    $server		= "localhost:11211"
    $pool_size		= 32
    $symlink_limit	= 5
    $expiration_limit	= 60
    $protocol		= "binary"
    $hash_distribution	= "default"
    $strict_consistency	= "off"

    $enable_memcache	= true
}

class dmlite::plugins::memcache::config (
    $enable_memcache	= $dmlite::plugins::memcache::params::enable_memcache
) inherits dmlite::plugins::memcache::params {

    file {
      "/etc/dmlite.conf.d/memcache.conf":
        content => template("dmlite/memcache.conf.erb"),
    }
}

class dmlite::plugins::memcache::install (
) inherits dmlite::plugins::memcache::params {

    package { 
        "dmlite-plugins-memcache": 
            ensure => latest; 
    }

}
