require 'mongo'

connection = Mongo::Connection.new("localhost")
db = connection.db("test")
# db.authenticate("peter", "password")

coll = db.collection("ruby")
coll.find.each { |row| puts row.inspect }
# puts coll.find.to_a

db = connection.db("admin")
# db.authenticate("admin", "password")
connection.database_info.each { |info| puts info.inspect }
