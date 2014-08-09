# Usage
# bitclust list --method | ruby THIS_FILE.rb > ruby.dict


STDIN.map do |line|
  line =~ /^.+[#.]([a-zA-Z0-9_?!]+)$/
  $1
end.select do |name|
  name
end.select do |name|
  name.size > 2
end.sort.uniq.each do |name|
  puts name
end
