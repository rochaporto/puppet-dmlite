
class dmlite::params {
    $libdir = $architecture ? {
      "x86_64" => "lib64",
      default  => "lib",
    }

    $token_password	= "change-this"
    $token_id		= "ip"
    $token_life		= 1000
    $enable_config	= true

}

class dmlite::config (
    $token_password	= $dmlite::params::token_password,
    $token_id		= $dmlite::params::token_id,
    $token_life		= $dmlite::params::token_life,
    $enable_config	= $dmlite::params::enable_config
) inherits dmlite::params {

    file {
      "/etc/dmlite.conf":
        require	=> Class["dmlite::install"];
      "/etc/dmlite.conf.d":
        ensure	=> directory,
        require	=> File["/etc/dmlite.conf"];
    }
}

class dmlite::install (
) inherits dmlite::params {

    package { 
        "dmlite-libs": 
            ensure => latest; 
    }

}

