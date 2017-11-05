#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

include_recipe 'apache::disableselinux'
include_recipe 'apache::php'
include_recipe 'apache::server'
