#
# Cookbook:: postgres
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'postgres-server' do
	notifies :run, 'execute[postgres-init]'
end

execute 'postgres-init' do
	command 'postgres-setup initdb'
	action :nothing
end

service 'postgres' do
	action[:enable, :start]
end
