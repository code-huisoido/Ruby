$i = 0
$num = 5

=begin
until $i > $num do
    puts("在循环语句中 i = #$i")
    $i += 1;
end
=end

begin
    puts("在循环语句中 i = #$i")
    $i += 1;
end until $i > $num
