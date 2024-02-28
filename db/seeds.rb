require 'faker'

puts "db Comic is dead"
Comic.destroy_all

puts "db Booking is dead"
Booking.destroy_all

puts "db Comic is dead"
Comic.destroy_all

puts "db User is dead"
User.destroy_all

puts "Creating the db with user seeds..."

User.create!(first_name: "Erwan",last_name: "Ruaud", address: "Berlin", email: "erwanruaud@mail.com", password: "1234456" )
User.create(first_name: "Romain",last_name: "Bruzeau", address: "Berlin", email: "romainbruzeau@mail.com", password: "1234456")
User.create(first_name: "Kalek", last_name: "Chahed", address: "Berlin", email: "kalekchacha@mail.com", password: "1234456")

puts "#{User.count} comics in database"
puts "Finished!"

puts "Creating the db with comic seeds..."

Comic.create!(poster:"https://m.media-amazon.com/images/I/71MLhZomM2L._AC_UY218_.jpg", title: "Garfield At Large: His First Book", author: "Jim Davis ", genre: "Humor", published_in: "10/03/1980", user: User.last)
Comic.create(poster:"https://m.media-amazon.com/images/I/81nqASLZU5L._AC_UY218_.jpg", title: "Watchmen", author: "Alan Moore", genre: "Comics, Graphic novel, Novel, Superhero fiction, Fantasy Fiction", published_in: "10/03/1986", user: User.last)
Comic.create(poster:"https://m.media-amazon.com/images/I/81+qHE9+S9L._AC_UY218_.jpg", title: "Dog Man and Cat Kid", author: "Dav Pilkey", genre: "Comics, Graphic novel, Fiction, Humor", published_in: "10/03/2017", user: User.last)
Comic.create(poster:"https://m.media-amazon.com/images/I/71T6oHHGePL._AC_UY218_.jpg", title: "Asterix and Cleopatra", author: "René Goscinny", genre: "Humor", published_in: "10/03/1965", user: User.last)
Comic.create(poster:"https://m.media-amazon.com/images/I/71fnC6maWCL._AC_UY218_.jpg", title: "The Blue Lotus", author: "Hergé", genre: "Comics, Graphic novel", published_in: "10/03/1935", user: User.first)
Comic.create(poster:"https://m.media-amazon.com/images/I/616jH1RqmqL._AC_UY218_.jpg", title: "Persepolis 1: The Story of a Childhood", author: "Marjane Satrapi", genre: "Graphic novel, autobiography", published_in: "10/03/2000", user: User.first)
Comic.create!(
  poster:"https://m.media-amazon.com/images/I/714NezY7m3L._AC_UY218_.jpg",
  title: "Bone",
  author: "Jeff Smith",
  genre: "Comics, Graphic novel, Fantasy",
  published_in: "1991-07-01",
  user: User.last
)

Comic.create!(
  poster:"https://m.media-amazon.com/images/I/71qsDiT8ioL._AC_UY218_.jpg",
  title: "Saga",
  author: "Brian K. Vaughan",
  genre: "Comics, Science fiction, Fantasy",
  published_in: "2012-03-14",
  user: User.last
)

# Generate more random comic seeds
20.times do
  Comic.create!(
    poster: "https://m.media-amazon.com/images/I/71qsDiT8ioL._AC_UY218_.jpg",
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    published_in: Faker::Date.backward(days: 365 * 50),
    user: User.last
  )
end

puts "#{Comic.count} comics in database"

puts "Creating the db with booking seeds..."

Booking.create!(start_date: "25/02/2024", end_date: "10/03/2024", status: "pending", comic: Comic.last, user: User.first )
Booking.create(start_date: "10/03/2024", end_date: "24/03/2024", status: "approved", comic: Comic.first, user: User.last)
Booking.create(start_date: "05/03/2024", end_date: "12/03/2024", status: "approved", comic: Comic.last, user: User.first)
Booking.create(start_date: "07/03/2024", end_date: "14/03/2024", status: "pending", comic: Comic.first, user: User.last)
Booking.create(start_date: "01/04/2024", end_date: "8/04/2024", status: "pending", comic: Comic.last, user: User.last)
puts "#{Booking.count} comics in database"
