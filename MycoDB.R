# install.packages("RPostgreSQL")
# install.packages("compare")
# install.packages("igraph")

## Load packages
require("igraph")
require("RPostgreSQL")
require("compare")

# Load the PostgreSQL driver, create a connection to the postgres database
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname = "mycodb", host = "localhost", port = 5432, user = "ruser", password = "ruser")
sql_string <- paste("SELECT * FROM mycodb", sep="")
MycoDB <- data.frame(dbGetQuery(con, sql_string))
FileDirectory <- paste("/home/daiten/Programming/R/Projects/MycoDB/Graphics/", sep="")

eye.col.f <- factor(c("brown", "green", "brown", "blue", "blue", "blue") + c("red", "orange", "red", "purple", "purple", "purple"))
eye.col.f
