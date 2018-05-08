#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'meanstack::nginx'
include_recipe 'meanstack::nodejs'
include_recipe 'meanstack::mongodb'

include_recipe 'meanstack::php'
