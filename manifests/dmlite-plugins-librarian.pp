
class dmlite::plugins::librarian::params (
) inherits dmlite::params {
    $enable_librarian	= true
}

class dmlite::plugins::librarian::config (
    $enable_librarian	= $dmlite::plugins::librarian::params::enable_librarian
) inherits dmlite::plugins::librarian::params {

    file {
      "/etc/dmlite.conf.d/librarian.conf":
        content => template("dmlite/librarian.conf.erb"),
    }
}

class dmlite::plugins::librarian::install (
) inherits dmlite::plugins::librarian::params {

    package { 
        "dmlite-plugins-librarian": 
            ensure => latest; 
    }

}
