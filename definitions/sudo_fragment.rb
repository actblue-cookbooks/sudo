#
# Cookbook Name:: sudo
# Definition:: sudo_fragment
#
# Copyright 2011, ActBlue

define :sudo_fragment, :enable => true do
  include_recipe "sudo"

  template "#{node[:sudo][:directory]}/#{params[:name]}.sudoers" do
    mode 0440
    owner "root"
    group "root"
    source "#{params[:source]}"
  end

end
