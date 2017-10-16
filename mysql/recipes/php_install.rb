#
# Cookbook:: mysql
# Recipe:: php_install
#
# Copyright:: 2017, The Authors, All Rights Reserved.


 bash 'install_php' do
   user 'root'
   cwd '/tmp'
   code <<-EOH
 ["php", "libapache2-mod-php", "php-mcrypt", "php-mysql"].each do |pkg_name|
 package pkg_name
 end
   EOH
 end