# Usage
# bitclust list --method | ruby THIS_FILE.rb > ruby.dict

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
