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
          <header>
              <h1>投票システム</h1>
              <div>オーバーウォッチで好きなエスコートマップは？</div>
          </header>
          <main>
              <form action="http://cgi.u.tsukuba.ac.jp/~s1811417/wp/03/vote.rb" , method="post">
                  <div class="post-form">
                      <div class="post-form-wrapper">
                          <ul class="checkbox-list">
                              <li><input type="checkbox">ドラド</li>
                              <li><input type="checkbox">ハバナ</li>
                              <li><input type="checkbox">ジャンカータウン</li>
                              <li><input type="checkbox">リアルト</li>
                              <li><input type="checkbox">ルート 66</li>
                              <li><input type="checkbox">ウォッチポイント・ジブラルタル</li>
                          </ul>
                      </div>
                      <div class="post-form-buttons">
                          <button class="btn" type="submit">
                              <i class="fas fa-vote-yea"></i>
                              投票
                          </button>
                          <button class="btn caution" type="reset">
                              <i class="fas fa-eraser"></i>
                              クリア
                          </button>
                      </div>
                  </div>
              </form>
          </main>
      </body>
  
  </html>
EOF_HTML
