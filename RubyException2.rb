begin
    file = open("/unexistant_file")
    if file
        puts "File opened successfully"
    end
rescue
    puts "try..."
    fname = "existant_file"
    retry
end

