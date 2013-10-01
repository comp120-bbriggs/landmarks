require 'csv'

csv_text = File.read('./ne_landmarks.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  l = Landmark.new
  l.longitude = row[0]
  l.latitude = row[1]
  l.name = row[2]
  l.info = row[3]
  l.save!
end