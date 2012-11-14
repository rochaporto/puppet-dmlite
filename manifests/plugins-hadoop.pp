#
class dmlite::plugins::hadoop {

    include dmlite::base

    package { 
        "dmlite-plugins-hadoop": 
            ensure => latest; 
    }

}
