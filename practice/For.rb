# 第一种写法
for i in 0..5
    if i > 2 then
        break
    end
    puts "第一段代码输出：局部变量的值为 #{i}"
end

# 第二种写法
(0..5).each do |i|
    if i < 2 then
        next
    end
    puts "第二段代码输出：局部变量的值为 #{i}"
end
