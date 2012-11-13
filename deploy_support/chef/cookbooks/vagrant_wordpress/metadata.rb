version "0.0.1"
description "A Chef cookbook for deployment of Wordpress with Vagrant."

supports "ubuntu"

depends "apache2"
depends "mysql"
depends "database"
depends "git"
depends "php"
depends "apt"

recipe "vagrant_wordpress", "Main configuration for Wordpress"