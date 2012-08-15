#
class dmlite::plugins::s3 {

    include dmlite::base

    package { 
        "dmlite-plugins-s3": 
            ensure => latest; 
    }

}
