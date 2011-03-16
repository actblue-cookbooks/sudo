#
# Cookbook Name:: sudo
# Recipe:: default
#
# Copyright 2011, ActBlue

# FIXME: Can we ensure the version is *at least* 1.7.2
package "sudo" do
  action node[:sudo][:action]
end

template "/etc/sudoers" do
  source "sudoers.erb"
  mode 0440
  owner "root"
  group "root"
end

directory node[:sudo][:directory] do
  mode 0440
  owner "root"
  group "root"
  action :create
end

sudo_fragment "root" do
  source "root.sudoers.erb"
end
