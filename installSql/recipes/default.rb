#
# Cookbook:: installSql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "aws-sdk"

mysql_service 'foo' do
  port '3306'
  bind_address '127.0.0.1'
  version '5.6'
  initial_root_password '123456'
  action [:create, :start]
end




