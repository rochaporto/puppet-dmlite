#
class dmlite::plugins::memcache {

    include dmlite::base

    package { 
        "dmlite-plugins-memcache": 
            ensure => latest; 
    }

}
