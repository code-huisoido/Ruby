require "dbi"

begin
    # 连接到 MySQL 服务器
    dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "root", "ruby")
    dbh.do( "INSERT INTO EMPLOYEE(FIRST_NAME, LAST_NAME, AGE, SEX, INCOME) VALUES('Mac', 'Mohan', 20, 'M', 2000)")
    puts "Record has been created"
    dbh.commit
rescue DBI::DatabaseError => e
    puts "An error occurred"
    puts "Error code:      #{e.err}"
    puts "Error message:   #{e.errstr}"
    dbh.rollback
ensure
    # 断开与服务器的连接
    dbh.disconnect if dbh
end
