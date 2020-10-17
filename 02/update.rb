#!/usr/bin/env ruby
require 'cgi'
cgi = CGI.new

name = cgi['name']
message = cgi['message']
text = "#{name}: #{message}"

filename = 'bbsdata.txt'
file = File.open(filename, 'a:UTF-8')
file.write(text + "\n")
file.close

print cgi.header('text/html; charset=utf-8')
print <<~EOF_HTML
    <!DOCTYPE html>
    <html lang="ja">
    
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
            <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="css/normalize.css">
            <link rel="stylesheet" href="css/style.css">
    
            <script src="https://kit.fontawesome.com/93d29b0a26.js" crossorigin="anonymous"></script>
            <title>1行掲示板</title>
        </head>
    
        <body>
            <header>
                <h1>1行掲示板</h1>
                <div>メッセージの投稿が完了しました</div>
            </header>
            <main>
                <pre>
  #{name}: #{message}
                </pre>
                <div>
                    <a class="btn" href="http://cgi.u.tsukuba.ac.jp/~s1811417/wp/02/bbs.rb">
                        <i class="fas fa-home"></i>
                        トップに戻る
                    </a></div>
            </main>
        </body>
    
    </html>
EOF_HTML
