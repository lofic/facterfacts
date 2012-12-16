Facter.add("ipv6") do
    setcode { res = File.exist?('/proc/sys/net/ipv6') ? 'true' : 'false' }
end

