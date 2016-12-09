library(RMySQL)
library(dbConnect)

## Connecting to MySQL
con = dbConnect(dbDriver("MySQL"), host="127.0.0.1", username="root", password="", dbname="Course")

## Listing Tables and Fields
dbListTables(con)

dbListFields(con, 'lectures')

## Running Queries
result = dbSendQuery(con, "SELECT * FROM lectures;")
dbFetch(result)

## cleaning up
dbClearResult(result)

dbDisconnect(con)
