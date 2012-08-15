#
class dmlite::plugins::librarian {

    include dmlite::base

    package { 
        "dmlite-plugins-librarian": 
            ensure => latest; 
    }

}
