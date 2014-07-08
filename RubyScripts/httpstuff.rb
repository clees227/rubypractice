require 'net/http'
url = URI.parse('http://www.reddit.com')
response = Net::HTTP.start('http://www.reddit.com') do |http|
	http.get(url.path)
end
content = response.body
puts content