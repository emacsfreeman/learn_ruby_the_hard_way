#test
# http://ruby-doc.org/stdlib-2.0.0/libdoc/open-uri/rdoc/OpenURI.html
require 'open-uri'

# Go fetch the contents of a URL & store them as a String
response = open('https://www.computercode.fr').read

# "Pretty prints" the result to look like a web page instead of one long string of HTML
URI.parse(response).class

# Print the contents of the website to the console
puts "\n\n#{response.inspect}\n\n"
