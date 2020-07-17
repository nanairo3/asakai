# 問題文
# z でない英小文字 C が与えられます。アルファベット順で C の次の文字を出力してください。

# 制約
# C は z でない英小文字

# 入力
# 入力は以下の形式で標準入力から与えられる。
# C

# 出力
# アルファベット順で C の次の文字を出力せよ。

# 入力例
# a

# 出力例
# b

#a の次は b です。

# n = gets.split.map(&:to_i)
# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }

c = gets.chomp
alfa = ('a'.. 'z').to_a

num = alfa.index(c);
puts alfa[num + 1]