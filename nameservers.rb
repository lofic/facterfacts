Facter.add(:nameservers) do
  File.read('/etc/resolv.conf').scan(/nameserver\s+(.+)/).flatten.join(',')
end

