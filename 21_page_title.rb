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
require 'nokogiri' # gem install nokogiri (if you don't have it installed)
require 'open-uri'


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
<<<<<<< HEAD

result = open(url).read.scan(/<title>(.*?)<\/title>/)[0]
  result[0]

=======
  # Fetch and parse HTML document
  doc = Nokogiri::HTML(open(url))
  doc.search('title').children[0].text
>>>>>>> d785f49315f21edd5329234273e9431f9c199eea
end

pageTitle("http://google.com")
# Redirect error, SSL validation error
# pageTitle("http://www.wikipedia.org")

#THIS SOLUTION DOES NOT WORK ON WINDOWS 7
# def pageTitle(url)
#   Mechanize.new.get(url).title
# end

# pageTitle("http://google.com")
# pageTitle("http://www.reddit.com")
