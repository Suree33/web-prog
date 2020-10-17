#!/usr/bin/env ruby
require 'cgi'
cgi = CGI.new

print cgi.header('text/html; charset=utf-8')
print <<~EOF_HTML
  <!DOCTYPE html>
  <html lang="ja">
  
      <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
          <link rel="stylesheet" href="css/normalize.css">
          <link rel="stylesheet" href="css/template.css">
          <link rel="stylesheet" href="css/style.css">
  
          <script src="https://kit.fontawesome.com/93d29b0a26.js" crossorigin="anonymous"></script>
          <title>投票システム</title>
      </head>
  
      <body>
      
      </body>
  </html>
EOF_HTML
