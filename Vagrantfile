# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = 'precise64'

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'

  # These ports are used to avoid conflicts with local services.
  config.vm.forward_port 80, 2080
  config.vm.forward_port 3306, 23306

  # This is to ensure Magento can write it's generated data to our media and var directories.
  config.vm.share_folder("v-root", "/vagrant", ".", :extra => 'dmode=777,fmode=777')

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = 'deploy_support/chef/roles'
    chef.cookbooks_path = 'deploy_support/chef/cookbooks'
    chef.add_role 'wordpress_dev'
    chef.json = { 'vagrant_wordpress' => {
      'phpinfo_enabled' => true
      }
    }
    # Chef Logging
    #chef.log_level = :debug
  end
end
