default[:sudo][:directory] = "/etc/sudoers.d"
default[:sudo][:action] = :upgrade
default[:sudo][:root_groups] = ["wheel"]
default[:sudo][:root_users] = ["ecloud"]
