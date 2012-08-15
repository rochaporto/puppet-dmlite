#
class dmlite::plugins::oracle {

    include dmlite::base

    package { 
        "dmlite-plugins-oracle": 
            ensure => latest; 
    }

}
