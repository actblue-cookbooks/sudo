#
# Cookbook Name:: sudo
# Recipe:: default
#
# Copyright 2011, ActBlue

# FIXME: Can we ensure the version is *at least* 1.7.2
package "sudo" do
  action node[:sudo][:action]
end

#template "/etc/sudoers" do
#  source "sudoers.erb"
#  mode 0440
#  owner "root"
#  group "root"
#end

#template "/etc/sudoers.d/root.sudoers" do
#  source "sudoers.erb"
#  mode 0440
#  owner "root"
#  group "root"
#end
sudo_fragment "root" do
  source "sudoers.erb"
end
