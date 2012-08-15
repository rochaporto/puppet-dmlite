#
class dmlite::plugins::profiler {

    include dmlite::base

    package { 
        "dmlite-plugins-profiler": 
            ensure => latest; 
    }

}
