# require 'mongoid'

require 'mongoid'

#  'mongodb://username:password@localhost:27017/mongoquest'

mongo_uri = "mongodb://127.0.0.1:27017"
db_name = 'test'

Mongoid.database = Mongo::Connection.from_uri(mongo_uri).db(db_name)

# Mongoid.database.authenticate("peter", "password")

class Site
  include Mongoid::Document
    
  field :name, type: String
  field :description, type: String
  field :level, type: Integer
end

puts 'Adding'
new_site = Site.new(name: 'Airship Docks', description: 'Docks without water. For ships without water', level: 1)
new_site.save
new_site2 = Site.new(name: 'Portal District', description: 'The area of the city where all the portals go. So they can be guarded together.', level: 2)
new_site2.save
new_site3 = Site.new(name: 'Wilderness', description: 'Crazy stuff goes on beyond the city walls.', level: 3)
new_site3.save

puts 'Querying'
Site.where(:level.lte => 2).each { |result| puts result.inspect }

puts 'Updating'
Site.where(:name => 'Airship Docks').each {
    |result|
    result.level = 2
    result.save
}

puts 'Querying again'
Site.where(:level.lte => 2).each { |result| puts result.inspect }

