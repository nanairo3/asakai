# 問題文
# 1桁の正整数 a ,b が与えられます。整数 a を b 回繰り返してできる文字列と 整数 b を a 回繰り返してできる
# 文字列のうち、辞書順で小さい方を答えてください。

# 制約
# 1≤a≤9
# 1≤b≤9
# a,b は整数

# 入力
# 入力は以下の形式で標準入力から与えられる。
# a b

# 出力
# 2つの文字列のうち辞書順で小さい方を出力せよ。(2 つの文字列が等しいときは、そのうちどちらかを出力せよ。)

# 入力例1
# 4 3

# 出力例1
# 3333
# できる 2 つの文字列は、444 と 3333 です。このうち辞書順で小さい文字列は 3333 です。

# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
num = gets.split
n = num[0].to_i
m = num[1].to_i

arr = []
if (n >= m)
    n.times do |i|
        arr.push(m)
    end
else
    m.times do |i|
        arr.push(n)
    end
end

puts arr.join
