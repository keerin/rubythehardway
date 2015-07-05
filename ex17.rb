from_file, to_file = ARGV ; indata = open(from_file).read ; out_file = open(to_file, 'w') ; out_file.write(indata) ; puts "Copied contents of #{from_file} to #{to_file}." ; out_file.close
