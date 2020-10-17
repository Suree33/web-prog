#!/usr/bin/env ruby

require 'cgi'
cgi = CGI.new

filename = 'bbsdata.txt'
data = File.open(filename, 'r:UTF-8')
text = CGI.escapeHTML(data.read)
data.close

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
              <div>メッセージをどうぞ</div>
          </header>
          <main>
              <form action="http://cgi.u.tsukuba.ac.jp/~s1811417/wp/02/update.rb" , method="post">
                  <div class="post-form">
                      <div class="post-form-wrapper">
                          <div class="post-form-title">メッセージ</div>
                          <input class="post-form-content" type="text" name="message" maxlength="140" required>
                      </div>
                      <div class="post-form-wrapper">
                          <div class="post-form-title">お名前</div>
                          <input class="post-form-content" type="text" name="name" required>
                      </div>
                      <div class="post-form-buttons">
                          <button class="btn" type="submit">
                              <i class="fas fa-pen"></i>
                              投稿する
                          </button>
                          <button class="btn caution" type="reset">
                              <i class="fas fa-eraser"></i>
                              クリア
                          </button>
                      </div>
                  </div>
              </form>
              <pre>
  #{text}
              </pre>
          </main>
      </body>
  
  </html>
EOF_HTML
