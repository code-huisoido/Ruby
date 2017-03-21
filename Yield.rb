# ruby 的块使用方式
def test
    puts "在 test 方法内"
    yield 5
    puts "你又回到了 test 方法内"
    yield 100
end

test {|i| puts "你在块 #{i} 内"}

def otherTest(&block)
    block.call
end

otherTest { puts "Hello World!"}
