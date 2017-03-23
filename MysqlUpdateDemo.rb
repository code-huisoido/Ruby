require 'dbi'

begin
    dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "root", "ruby")
    sth = dbh.prepare("UPDATE EMPLOYEE SET AGE = AGE + 1 WHERE SEX = ?")
    sth.execute('M')
    sth.finish
    dbh.commit
rescue DBI::DatabaseError => e
    puts "An Error occurred"
    puts "Error code:       #{e.err}"
    puts "Error message:    #{e.errstr}"
    dbh.rollback
ensure
    dbh.disconnect if dbh
end
