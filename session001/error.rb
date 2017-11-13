# 异常捕获
puts '===================Error==================';
(-10 .. 10).each { |a|

  begin
    puts 100/ a
  rescue Exception => e
    p e.to_s
  end

}