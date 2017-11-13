# Copyright(c):: 2017福州博翼互娱网络科技有限公司
# Author:: 822LL
# Created:: 2017/11/13

# 继承
puts '===================Extend==================';

require_relative("beginner_student")

a = BeginnerStudent.new("李师傅", "1", "男")

a.say_hi
a.say_hello

p Math::PI