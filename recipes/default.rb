#
# Cookbook:: learn_chef_httpd
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.



package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end
