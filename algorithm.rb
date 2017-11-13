#算法， 条件，循环，运算
puts '===================Condition==================';

a = "100\n"

p a

# str.chomp(separator=$/)   -> new_str
#
# Returns a new <code>String</code> with the given record separator removed
# from the end of <i>str</i> (if present). If <code>$/</code> has not been
# changed from the default Ruby record separator, then <code>chomp</code> also
# removes carriage return characters (that is it will remove <code>\n</code>,
# <code>\r</code>, and <code>\r\n</code>). If <code>$/</code> is an empty string,
# it will remove all trailing newlines from the string.
p a.chomp

p a.to_i

p a == 100

p a

p a.to_i == 100


if a.chomp.to_i == 100

  p "hehe"
  system "say  一百块都不给我"
else
  p "No hehe"

end

system "say  不给你啊" if a.chomp.to_i != 100


bbb = gets.chomp.to_i

case bbb
  when 1 .. 2
    p "11111111"
  when 3 .. 5
    p "22222222"
end

# 跳出， 跳过 循环
# break  next  until  while
