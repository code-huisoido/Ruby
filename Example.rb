class Example
    VAR1 = 100
    VAR2 = 200
    def show
        puts "第一个常量的值为 #{VAR1}"
        puts "第二个常量的值为 #{VAR2}"
    end
end

# 创建对象
object = Example.new()
object.show
