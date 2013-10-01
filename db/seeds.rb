# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

csv_text = File.read('./ne_landmarks.csv')
csv = CSV.parse(csv_text, :headers => true)
(0..10000).each do |i|
  Landmark.create(longitude: csv[i][0], latitude: csv[i][1], name: csv[i][2], info: csv[i][3])
end