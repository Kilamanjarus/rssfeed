require "rss"
require "open-uri"

url = "https://www.feedforall.com/sample.xml"
URI.open(url) do |rss|
  feed = RSS::Parser.parse(rss)
  puts "Title: #{feed.channel.title}"
  puts "Description: #{feed.channel.description}"
  feed.items.each do |item|
    puts "Item: #{item.title}"
    puts "Link: #{item.link}"
  end
end
