#!/usr/bin/env ruby
require 'cgi'
cgi = CGI.new

name = cgi['family'] + cgi['given']

print cgi.header('text/html; charset=utf-8')
print <<EOF
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
  </head>
  <body>
      <p>入力された氏名は#{name}です。
  </body>
  </html>
EOF
