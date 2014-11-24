#
# Cookbook Name:: stackengine
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# install docker first 
include_recipe "docker::default"


case node['platform_family']
when "debian", "ubuntu"

# need to update apt-get to be able to download stackengine package from s3
include_recipe "apt::default"

apt_package "curl" do 
	action :install
end
end
#create a stackengine storage directory for the cookbook
directory "/usr/local/stackengine" do 
	mode 0755
	recursive true
	action :create
end

# add a log directory for stackengine

directory "/var/log/stackengine" do 
	recursive true
	action :create
end

remote_file "/usr/local/stackengine/stackengine" do 
	source "https://s3.amazonaws.com/stackengine-controller/linux64/stackengine"
	mode "0755"
end

include_recipe "iptables::default"

iptables_rule "stackengine"

file "/etc/profile.d/stackengine.sh" do 
	content "PATH=$PATH:/usr/local/stackengine"
	mode "0777"
	action :create
end
