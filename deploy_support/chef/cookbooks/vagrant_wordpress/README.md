vagrant_wordpress Cookbook
========================

[![Build Status](https://secure.travis-ci.org/rjocoleman/vagrant_wordpress.png)](http://travis-ci.org/rjocoleman/vagrant_wordpress)

This cookbook installs Apache, PHP, MySQL sever and required modules for deployment with Wordpress.
It configures Apache VirtualHosts.

Designed for use with [Vagrant](http://www.vagrantup.com/).

It's a work in progress; currently only tested on Mac OS X 10.8 and Windows 7 x64.


REQUIREMENTS
============
Supported Platforms
-------------------

The following platforms are supported by this cookbook, meaning that the recipes run on these platforms without error:

* Ubuntu


Recipes
-------

* `vagrant_wordpress`, default recipe.


Configuration
-------------

Check `attributes/default.rb` for attribute and defaults.


Contributing
------------

* File bug reports via GitHub issues.
* Pull requests are welcome.


1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


Todo
----

* stuff

License and Author
===================

* Author:: Robert Coleman <github@robert.net.nz>


* Copyright:: 2012

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.