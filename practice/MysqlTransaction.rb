require 'dbi'

dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "root", "ruby")
dbh['AutoCommit'] = false   # 设置自动提交为 false

begin
    dbh.do("UPDATE EMPLOYEE SET AGE = AGE + 1 WHERE FIRST_NAME = 'John'")
    dbh.do("UPDATE EMPLOYEE SET AGE = AGE + 2 WHERE FIRST_NAME = 'Zara'")
    dbh.commit
rescue
    puts "transaction failed"
    dbh.rollback
end

dbh['AutoCommit'] = true
