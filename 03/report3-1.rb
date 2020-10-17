#!/usr/bin/env ruby
alphabet = Hash.new(0)

io = open('sample3-1.txt', 'r:UTF-8')

while (line = io.gets)
  line.chomp!
  begin
    # ハッシュに存在すれば+1
    alphabet.fetch(line)
    alphabet[line] += 1
  rescue StandardError
    # 存在しなければ作成し、1に
    alphabet.store(line, 1)
  end
end

alphabet.sort.each do |a, n|
  puts a + ' = ' + n.to_s
end
