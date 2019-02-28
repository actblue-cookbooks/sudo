default[:sudo][:action] = :upgrade
default[:sudo][:directory] = "/etc/sudoers.d"
default[:sudo][:options] = [ "env_reset",
                             'env_keep+="http_proxy"',
                             'env_keep+="https_proxy"',
                             'env_keep+=SSH_AUTH_SOCK',
                             'syslog=auth',
                             'syslog_badpri=alert',
                             'syslog_goodpri=notice']
default[:sudo][:root_groups] = ["wheel"]
default[:sudo][:root_users] = ["ecloud"]

# commands we want to deny root's ALL entry for. This is mostly to try
# to enforce honest mistakes about avoid the audit trail. A determined
# attacker will be able to bypass this.
default[:sudo][:root_exclude] = [
                                  "/bin/dash",
                                  "/sbin/sulogin",
                                  "/bin/static-sh",
                                  "/bin/rbash",
                                ]
