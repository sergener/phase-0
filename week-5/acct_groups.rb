
skippers = File.readlines("fiery-skippers.txt")

def accountability_groups(array)
	array.strip
	p acct_grps_array = array.shuffle.each_slice(5).to_a
end
#.strip will strip blank

accountability_groups(skippers)