Facter.add('ipv6') { setcode { File.exists?('/proc/sys/net/ipv6') } }
