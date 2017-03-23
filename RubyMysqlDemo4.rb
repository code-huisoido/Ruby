require "dbi"

begin
    # 连接到 MySQL服务器
    dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "root", "ruby")
    sth = dbh.prepare("SELECT * FROM EMPLOYEE WHERE INCOME > ?")
    sth.execute(1000)

    sth.fetch do |row|
        printf "First Name: %s, Last Name: %s\n", row[0], row[1]
        printf "Age: %d, Sex: %s\n", row[2], row[3]
        printf "Salary: %d \n\n", row[4]
    end
    sth.finish
rescue DBI::DatabaseError => e
    puts "An error occurred"
    puts "Error code:      #{e.err}"
    puts "Error message:   #{e.errstr}"
ensure
    # 断开与服务器的连接
    dbh.disconnect if dbh
end
