# Class defining the base dmlite classes.
#
# == Examples
#
# TODO:
#
# == Authors
#
# CERN IT/GT/DMS <it-dep-gt-dms@cern.ch>
#
class dmlite::base {

    package { 
        "dmlite-libs": 
            ensure => latest; 
    }

    file {
        "conf-dmlite":
            name    => "/etc/dmlite.conf";
            owner   => root,
            group   => root,
            mode    => 0600,
            content => template("dmlite/dmlite.conf.erb");
    }

}
