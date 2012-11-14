
class dmlite::plugins::profiler::params (
) inherits dmlite::params {
    $enable_profiler	= true
}

class dmlite::plugins::profiler::config (
    $enable_profiler	= $dmlite::plugins::profiler::params::enable_profiler
) inherits dmlite::plugins::profiler::params {

    file {
      "/etc/dmlite.conf.d/profiler.conf":
        content => template("dmlite/profiler.conf.erb"),
    }
}

class dmlite::plugins::profiler::install (
) inherits dmlite::plugins::profiler::params {

    package { 
        "dmlite-plugins-profiler": 
            ensure => latest; 
    }

}

