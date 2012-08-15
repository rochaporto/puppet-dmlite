#
class dmlite::plugins::mysql {

    include dmlite::base

    package { 
        "dmlite-plugins-mysql": 
            ensure => latest; 
    }

}
