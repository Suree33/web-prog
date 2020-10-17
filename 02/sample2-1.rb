#!/usr/bin/env ruby
require 'cgi'
cgi = CGI.new

print cgi.header('text/plain; charset=utf-8')
print Time.now.to_s
