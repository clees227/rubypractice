require 'open-uri'
url = 'http://espn.go.com/mlb/player/_/id/28567/troy-tulowitzki'
contents = open(url){|f| f.read}