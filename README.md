drush
=====

Drush 7+ cookbook. Also supports Drupal 6 via composer.

Requirements
------------
* chef-solo: tested on 11.8.2
* berkshelf: tested on 3.1.5

Extra development requirements
-----------------------------
* vagrant >= 1.5.2
* vagrant-berkshelf (vagrant plugin install vagrant-berkshelf)
* chef dk >= 0.2.0
* virtualbox: tested on 4.1.14
 

Resources links
---------------
* Chef DK(includes Berkshelf): https://downloads.getchef.com/chef-dk/
* Vagrant: https://www.vagrantup.com/downloads.html
* Virtualbox: https://www.virtualbox.org/wiki/Downloads


How to test dev environment
---------------------------
- Clone the repository
- Go to the project root
- Run "vagrant up"

Attributes
----------
* node['drush']['version'] - The required Drush version: 6.* for 6(stable), dev-master for Drush 7 that is required with Drupal 8.

Final notes
-----------
The Vagrantfile is for demo purposes only. 
Please create your own, i am sure it is not a perfect example.

Todos
------
- Set up some Travis test cases. Test that drush is installed.