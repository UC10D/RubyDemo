# Copyright(c):: 2017福州博翼互娱网络科技有限公司
# Author:: 822LL
# Created:: 2017/11/13

class Student

  Version = "1.0"


  # get set
  def name=(name)
    @name = name
  end

  def name
    return @name
  end

  # 简写
  attr_accessor :name
  attr_reader :no
  attr_writer :gender

  def initialize(name, no, gender)
    @name = name
    @no = no
    @gender = gender
  end

  # private
  def say_hi
    p "hi，#{@name}"
  end


end