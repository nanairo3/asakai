# 問題文
# 高橋君は N 科目のテストを受けます。各テストは K 点満点であり、点数はそれぞれ 0 以上の整数です。
# 高橋君は N−1 科目のテストを既に受けており、i 番目の科目のテストの点数は Ai 点でした。
# 高橋君の目標は、N 科目のテストの平均点を M 点以上にすることです。
# 高橋君が目標を達成するためには、最後のテストで最低何点取る必要があるか出力してください。
# 達成不可能である場合は、代わりに -1 を出力してください。

# 制約
# 2≤N≤100
# 1≤K≤100
# 1≤M≤K
# 0≤Ai≤K
# 入力中のすべての値は整数である。

# 入力
# 入力は以下の形式で標準入力から与えられる。
# N K M
# A1 A2 ... AN−1

# 出力
# 最後のテストでの必要最低点または -1 を出力せよ。

# 入力例
# 5 10 7
# 8 10 3 6

# 出力例
# 8
# 最後のテストで 8 点を取ると、(8+10+3+6+8)/5=7 より平均点は 7 点となり目標を達成できます。

# n = gets.split.map(&:to_i)
# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
