# Copyright(c):: 2017福州博翼互娱网络科技有限公司
# Author:: 822LL
# Created:: 2017/11/13

module First
  A = 1

  def first
    p "first"
  end

end

module Second
  B = 2
  # 永远不能混入进去使用
  def self.second
    p "second"
  end

end

class Students
  include First
  extend First
  include Second
  extend Second

end

a = Students.new


# include First   派到实例中去
a.first
# extend First   派到类方法中去
Students.first


# 永远不能混入进去使用  self.
# a.second
# Students.second
