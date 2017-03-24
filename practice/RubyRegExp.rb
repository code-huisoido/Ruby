line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";

if ( line1 =~ /Cats(.*)/ )
    puts "Line1 contains Cats"
end

if ( line2 =~ /Cats(.*)/ )
    puts "Line2 contains Dogs"
end


phone = "138-3453-1111 #这是一个电话号码"

# 删除Ruby的注释
phone = phone.sub!(/#.*$/, "")
puts "电话号码 ： #{phone}"

# 移除数字以外的其他字符
phone = phone.gsub!(/\D/, "")
puts "电话号码 ： #{phone}"


text = "rails 是 rails, Ruby on Rails 非常好的 Ruby 框架"
text.gsub!("rails", "Rails")
text.gsub!(/\brails\b/, "Rails")

puts "#{text}"
