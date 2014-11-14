#
# Cookbook Name:: stackengine
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "update apt-get" do 
	code "sudo apt-get update"
	action :run 
end

package "curl" do 
	action :install
end


directory "/usr/local/stackengine" do 
	mode 0755
	recursive true
	action :create
end

directory "/var/log/stackengine" do 
	recursive true
	action :create
end


bash "install stackengine" do 
	code <<-EOH
	sudo curl -s -o /usr/local/stackengine/stackengine https://s3.amazonaws.com/stackengine-controller/linux64/stackengine
	sudo chmod 755 /usr/local/stackengine/stackengine
	export PATH=$PATH:/usr/local/stackengine
	EOH
end
