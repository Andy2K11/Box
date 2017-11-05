# Cookbook:: misc
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'ntp' do
    action :install
end

package 'tree' do
    action :install
end

service 'ntpd' do
    action [:enable, :start]
end

package 'vim' do
    action :install
end
