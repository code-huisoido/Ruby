name1 = "Joe"
name2 = "Mary"
puts "您好 #{name1}, #{name2} 在哪？"

x, y, z = 12, 36, 22
puts "x 的值为 #{ x }"
puts "x + y 的值为 #{ x + y}"
puts "x + y + z 的平均值为 #{ (x + y + z)/3 }"

desc1 = %Q{Ruby 的字符串可以使用 '' 和 ""。}
desc2 = %q|Ruby 的字符串可以使用 '' 和 ""。|

puts desc1
puts desc2

myStr = String.new("THIS IS TEST")
foo = myStr.downcase

puts "#{foo}"
