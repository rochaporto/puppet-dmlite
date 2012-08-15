#
class dmlite::plugins::adapter {

    include dmlite::base

    package { 
        "dmlite-plugins-adapter": 
            ensure => latest; 
    }

}
