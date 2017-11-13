#类
puts '===================Class==================';

a = String.new

p a

b = String.new("hehe")

p b

puts '===================Custom Class==================';
require_relative '../dent'
c = Student.new("Jack", "1", "男")
c.say_hi
c.name=("Toni")
c.say_hi

# p c::Version