
skippers = File.readlines("fiery-skippers.txt")

def accountability_groups(array)
	p acct_grps_array = array.shuffle.each_slice(5).chomp.to_a
end

accountability_groups(skippers)