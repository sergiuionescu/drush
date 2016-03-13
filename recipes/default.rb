#
# Cookbook Name:: drush
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

include_recipe "composer"

execute "install-drush" do
  command "composer global require drush/drush:#{node['drush']['version']}"
end

link "/usr/local/bin/drush" do
  to "#{ENV['HOME']}/.composer/vendor/drush/drush/drush"
  only_if "ls #{ENV['HOME']}/.composer/vendor/drush/drush/drush"
end
link "/usr/local/bin/drush" do
  to "#{ENV['HOME']}/.config/composer/vendor/drush/drush/drush"
  only_if "ls #{ENV['HOME']}/.config/composer/vendor/drush/drush/drush"
end