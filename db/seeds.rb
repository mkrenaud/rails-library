# frozen_string_literal: true

# require 'faker'

ActiveRecord::Base.logger = Logger.new(STDOUT)

require 'faker'

url = 'https://data.winnipeg.ca/resource/itub-a6x4.json?$$app_token=swjqemjyTcsrJ7oYJOD5g5Kwg'
uri = URI(url)
response = Net::HTTP.get(uri)
results = JSON.parse(response)

url = 'https://uinames.com/api/?ext&amount=500'
uri = URI(url)
response = Net::HTTP.get(uri)
librarian_JSON = JSON.parse(response)

Book.destroy_all
Librarian.destroy_all
Library.destroy_all
Location.destroy_all

results.each do |libraries|
  l = Location.create(address: libraries['address'],
                      coordinates: "#{libraries['location_1']['latitude']}, #{libraries['location_1']['longitude']}")

  lib = Library.create(name: libraries['name'],
                       wifi: libraries['wifi'],
                       accessability: libraries['accessibilty'],
                       location: l)

  number_of_librarians = rand(2..3)
  number_of_librarians.times do
    lib.librarians.create(name: librarian_JSON[rand(0..50)]['name'],
                          age: librarian_JSON[rand(0..50)]['age'])
  end

  10.times do
    Book.create(title: Faker::Book.title,
                genre: Faker::Book.genre,
                author: Faker::Name.name)
  end
end

libraries_with_books = Library.all

libraries_with_books.each do |library|
  books_with_libraries = Book.random_collection(10)
  books_with_libraries.each do |book|
    LibrariesBook.create(book: book,
                         library: library)
  end
end

puts "Created #{Location.count} Locations"
puts "Created #{Library.count} Libraries"
puts "Created #{Book.count} Books"
puts "Created #{Librarian.count} Librarians"
