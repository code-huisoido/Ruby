class Box
    def initialize(w, h)
        @width, @height = w, h
    end

    def getWidth
        @width
    end

    def getHeight
        @height
    end

    def setWidth=(value)
        @width = value
    end

    def setHeight=(value)
        @height = value
    end
end

# 创建对象
box = Box.new(10, 20)

# 使用设置器方法
box.setWidth = 30
box.setHeight = 50

# 使用访问器方法
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"


