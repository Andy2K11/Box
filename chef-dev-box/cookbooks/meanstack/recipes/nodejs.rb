#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute "curl nodejs" do
    command 'curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -'
end

package 'nodejs' do
    action :install
end
