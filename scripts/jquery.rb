require 'open-uri'
require 'json'


url_base = 'https://api.github.com'
owner    = 'jquery'
repo     = 'api.jquery.com'
ep_base  = "#{url_base}/repos/#{owner}/#{repo}/git/trees"

apis_dir_name = 'entries'


root = JSON::parse(open("#{ep_base}/master").read, symbolize_names: true)

sha = root[:tree].find{|x| x[:path] == apis_dir_name}[:sha]

apis = JSON::parse(open("#{ep_base}/#{sha}").read, symbolize_names: true)

apis[:tree].map do |api|
  a = api[:path][/([^.]+)\.xml$/, 1]
  a.sub(/-.+$/, '')
end.select do |api|
  api.size > 2
end.sort.uniq.each do |api|
  puts api
end
