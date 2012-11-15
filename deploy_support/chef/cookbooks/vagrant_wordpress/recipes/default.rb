include_recipe "apt"
include_recipe "build-essential"
include_recipe "git"
include_recipe "mysql::server"
include_recipe "mysql::ruby"
include_recipe "php"
include_recipe "php::module_mysql"
include_recipe "php::module_gd"
include_recipe "php::module_curl"
include_recipe "apache2"
include_recipe "apache2::mod_php5"
include_recipe "apache2::mod_rewrite"

#install apt zip package
package "zip" do
  action :install
end

#pcre headers are required for some pecl extns (like zip)
package "libpcre3-dev" do
  action :install
end

#install the zip pecl
php_pear "zip" do
  action :install
end

#disable default virtualhost.
apache_site "default" do
  enable false
  notifies :restart, "service[apache2]"
end

#create a virtualhost that's mapped to our shared folder and hostname.
web_app "wordpress_dev" do
  server_name node['hostname']
  server_aliases node['fqdn'], node['host_name']
  docroot node['vagrant_wordpress']['webroot']
  notifies :restart, "service[apache2]", :immediately
end

#create a phpinfo file for use in our Apache vhost
template "/var/www/phpinfo.php" do
  mode "0644"
  source "phpinfo.php.erb"
  not_if { node['vagrant_wordpress']['phpinfo_enabled'] == false }
  notifies :restart, "service[apache2]", :immediately
end

#create a mysql database
mysql_database node['vagrant_wordpress']['config']['db_name'] do
  connection ({:host => "localhost", :username => 'root', :password => node['mysql']['server_root_password']})
  action :create
end
