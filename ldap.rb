Facter.add("ldap_server") do
       setcode do
               nstat = `netstat -nt`
               pattern=/(\d+\.\d+\.\d+\.\d+)[.:]389[\t ]+ESTABLISHED/
               m=pattern.match(nstat)
               (defined? m) ? m[1] : nil
       end
end
