#常量

puts '===================Number==================';

a = 0
puts a.methods

b, c = 0.4, 0.3
d = b - c
# 看readme 精度问题
p d

p 1

# toString
p 1.to_s

puts '===================String==================';

# 拼接,尽量不用 +

puts "hello #{ a + b }"

# puts "hello".methods


puts 10 >= 1
puts "10".eql?("1")


puts '===================Range==================';

r = 1..3
r2 = 1..3

r.each { |x| p x }
r2.each { |x| p x }


arr = [1, 2, 4, 5]

arr.each { |x| p x }


puts '===================Boolean==================';

p true.methods

p "1".empty?