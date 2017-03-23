require "dbi"

begin
    dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "root", "ruby")
    sth = dbh.prepare("DELETE FROM EMPLOYEE WHERE AGE > ?")
    sth.execute(20)
    sth.finish
    dbh.commit
rescue DBI::DatabaseError => e
    puts "An Error occurred"
    puts "Error code:      #{e.err}"
    puts "Error message:   #{e.errstr}"
    dbh.rollback
ensure
    dbh.disconnect if dbh
end
