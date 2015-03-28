require 'nokogiri'
require 'rails'

# This part works for the  the first page

page = Nokogiri::HTML(open("Page2.html"))
# page = Nokogiri::HTML(open("Page2.html"))
page.css('table.table-right').each do |section|
  btn = section.css('a').first['onclick']
  puts btn.slice(btn.index("=")+1..(btn.index(",")-2))
end

# This part works for others paginates page
# Uncomment it please - it doesn't work on my side
# due to I haven't credentials for source site

# total_pages = page.css('a.mypagination').count - 1 # first page already scraped
# (1..total_pages).each do |paginate|
#   link = page.css('a.mypagination')[paginate]['href']
#   new_page = Nokogiri::HTML(open(link)
#   new_page.css('table.table-right').each do |section|
#     btn = section.css('a').first['onclick']
#     puts btn.slice(btn.index("=")+1..(btn.index(",")-2))
#   end
# end

