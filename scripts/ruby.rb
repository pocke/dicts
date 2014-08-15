# Usage
# gem install bitclust
# bitclust setup --versions=2.1.0

lines = `bitclust list --method`.each_line.map do |line|
  line =~ /^.+[#.]([a-zA-Z0-9_?!]+)$/
  $1
end.select do |name|
  name and name.size > 2
end

lines += `bitclust list --class`.each_line.select{|x| x.size > 2}

lines.sort.uniq.each do |name|
  puts name
end
