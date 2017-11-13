# Copyright(c):: 2017福州博翼互娱网络科技有限公司
# Author:: 822LL
# Created:: 2017/11/13
require_relative("student")
class BeginnerStudent < Student

  def say_hi
    p "我是小学生"
  end
end


# 扩充
puts '===================Expand==================';
class BeginnerStudent < Student

  def say_hello
    p "hello, 我是小学生"
  end
end