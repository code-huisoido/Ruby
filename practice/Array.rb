names = Array.new(20)
puts names.size
puts names.length

names = Array.new(4, "mac")
puts "#{names}"

nums = Array.new(10) {|e| e = e * 2}
puts "#{nums}"
puts nums

digits = Array(0..9)
puts "#{digits}"

nums = Array.[](1, 2, 3, 4, 5)
puts "#{nums}"

nums = Array[1, 2, 3, 4, 5]
puts "#{nums}"
puts "#{nums.at(2)}"

a = [ "a", "b", "c" ]
n = [ 65, 66, 67 ]
puts a.pack("A3A3A3")
puts a.pack("a3a3a3")
puts n.pack("ccc")
