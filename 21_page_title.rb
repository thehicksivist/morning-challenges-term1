#
# Page Title
#
# Write a method that takes a URL and
# returns the website's title.
#
# Examples:
# pageTitle("http://google.com") => "Google"
# pageTitle("http://www.reddit.com") => "reddit: the front page of the internet"
#
# Check your answers by running the tests:
# ruby tests/16_page_title_test.rb
#


# def pageTitle(url)
#   # your code here
#   open('url') do |f|
#   doc = Nokogiri::HTML(f)
#   doc.at_css('title').text
# end

# end

# require "mechanize"

# def pageTitle(url)
# Mechanize.new.get(url).title
# end


# pageTitle("http://google.com")
# pageTitle("http://www.reddit.com")
# Process::RLIMIT_NOFILE = 8

require 'open-uri'
# require 'mechanize'
# require 'net/http/persistent'

def pageTitle(url)
  open(url).read.scan(/<title>(.*?)<\/title>/)[0]
end

pageTitle("http://google.com")
pageTitle("http://www.reddit.com")

#THIS SOLUTION DOES NOT WORK ON WINDOWS
# def pageTitle(url)
#   Mechanize.new.get(url).title
# end

# pageTitle("http://google.com")
# pageTitle("http://www.reddit.com")
