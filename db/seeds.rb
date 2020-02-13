# frozen_string_literal: true

# require 'faker'

ActiveRecord::Base.logger = Logger.new(STDOUT)

url = 'https://data.winnipeg.ca/resource/itub-a6x4.json?$$app_token=swjqemjyTcsrJ7oYJOD5g5Kwg'
uri = URI(url)
response = Net::HTTP.get(uri)
results = JSON.parse(response)

Parking.destroy_all
Location.destroy_all
Librarian.destroy_all
Book.destroy_all
Library.destroy_all

results.each do |libraries|
  l = Location.create(address: libraries['address'],
                      coordinates: "#{libraries['location_1']['latitude']},#{libraries['location_1']['longitude']}")

  pp l

  p = Parking.create(hasparking: libraries['parking_lot'],
                     notes: libraries['parking_stalls'])

  Library.create(name: libraries['name'],
                 wifi: libraries['wifi'],
                 accessability: libraries['accessibilty'],
                 parkings_id: p.id,
                 locations_id: p.id)
end

puts "Created #{Location.count} Locations"
puts "Created #{Parking.count} parking lots"
puts "Created #{Library.count} Libraries"
