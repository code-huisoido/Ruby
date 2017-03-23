class Box
    # 初始化变量赋值
    @@count = 0
    def initialize(w, h)
        # 给实例变量赋值
        @width, @height = w, h

        @@count += 1
    end

    def self.printCount()
        puts "Box count is : #@@count"
    end

    def to_s
        "(w:#@width, h:#@height)"
    end
end

#创建两个对象
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

Box.printCount()
puts "String representation of box is : #{box1}"
