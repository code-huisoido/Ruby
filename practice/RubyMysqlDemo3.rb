require "dbi"

begin
    # 连接到 MySQL 服务器
    dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "root", "ruby")
    sth = dbh.prepare("INSERT INTO EMPLOYEE(FIRST_NAME, LAST_NAME, AGE, SEX, INCOME) VALUES (?, ?, ?, ?, ?)" )
    sth.execute('John', 'Poul', 25, 'M', 2300)
    sth.execute('Zara', 'Ali', 23, 'F', 1000)
    sth.finish
    dbh.commit
    puts "Record has been created"
rescue DBI::DatabaseError => e
    puts "An error occurred"
    puts "Error code:      #{e.err}"
    puts "Error message:   #{e.errstr}"
    dbh.rollback
ensure
    dbh.disconnect if dbh
end
