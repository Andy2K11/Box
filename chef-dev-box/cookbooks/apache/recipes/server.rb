#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package 'httpd' do
    action :install
end

# template '/var/www/html/index.html' do
#     source 'index.html.erb'
# end

service 'httpd' do
    action [:start, :enable]
end

service 'firewalld' do
    action [:start, :enable]
end

# sudo firewall-cmd --zone=public --add-service=http --per
# manent
# success
# [vagrant@localhost conf.d]$ sudo firewall-cmd --reload
