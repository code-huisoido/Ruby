# 如果键或值不存在，访问哈希将返回默认值
months = Hash.new( "month" )
puts "#{months[0]}"
months = Hash.new "month"
puts "#{months[72]}"

H = Hash["a" => 100, "b" => 200]
puts "#{H['a']}"
puts "#{H['b']}"

$, = ", "
months = Hash.new( "month" )
months = {"1" => "January", "2" => "February"}
keys = months.keys
puts "#{keys}"
