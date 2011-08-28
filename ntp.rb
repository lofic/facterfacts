Facter.add("ntp_servers") do
        setcode do
            if File.exist?('/usr/sbin/ntpq')
                ntpq = `/usr/sbin/ntpq -p -n 2>&1`
                pattern=/^[* x\.\-\+\#](\d+\.\d+\.\d+\.\d+)/
                m=ntpq.scan(pattern)
                (defined? m) ? m.join(',') : nil 
            else
                # In case ntpd is not installed
                nil
            end
        end
end

