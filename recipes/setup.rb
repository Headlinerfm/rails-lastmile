#
# Cookbook Name:: rails-bootstrap
# Recipe:: setup
#
# Copyright 2013, 119 Labs LLC
#
# See license.txt for details
#

include_recipe "apt"
package "build-essential"

include_recipe "rvm::system"
include_recipe "rvm::vagrant"

rvm_ruby node['rails-lastmile']['ruby_version']
rvm_gem "bundler"
