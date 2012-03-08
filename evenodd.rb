Facter.add('evenodd') do
  setcode do
      `hostname`.chomp.unpack("C*").inject { |r,e| r+e } % 2
  end 
end
