# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'HTTParty'
require 'pry'
require 'nokogiri'

count = 2
comedians = []

page = HTTParty.get('http://www.comedyfestival.com.au/2016/season/shows/?filters[sort]=alpha&filters[category]=all&filters[date]=&filters[venue]=all&filters[accessible]=')
parse_page = Nokogiri::HTML(page)
parse_page.css('.show-brief__title strong').map do |show|
  comedian_name = show.text
  comedians << comedian_name
end



until count > 25 
  url = "http://www.comedyfestival.com.au/2016/season/shows/" + count.to_s + "?filters[sort]=alpha&filters[category]=all&filters[date]=&filters[venue]=all&filters[accessible]="
  page = HTTParty.get(url)
  parse_page = Nokogiri::HTML(page)
  parse_page.css('.show-brief__title strong').map do |show|
    comedian_name = show.text
    comedians << comedian_name
  end
  count += 1
end

comedians.each do |name|
  Comedian.create(name: name);
end


