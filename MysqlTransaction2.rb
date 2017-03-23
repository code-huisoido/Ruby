require "dbi"

begin
    dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "root", "ruby")
    dbh['AutoCommit'] = false
    dbh.transaction do |dbh|
        dbh.do("UPDATE EMPLOYEE SET AGE = AGE + 1 WHERE FIRST_NAME = 'John'")
        dbh.do("UPDATE EMPLOYEE SET AGE = AGE + 1 WHERE FIRST_NAME = 'Zara'")
    end
    dbh['AutoCommit'] = true
end
