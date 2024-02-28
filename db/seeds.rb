# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

comic.create(title: "Garfield At Large: His First Book", author: "Jim Davis ", genre: "Humor", published_in: 1980, user_id: 1)
comic.create(title: "Watchmen", author: "Alan Moore", genre: "Comics, Graphic novel, Novel, Superhero fiction, Fantasy Fiction", published_in: 1986, user_id: 2)
comic.create(title: "Dog Man and Cat Kid", author: "Dav Pilkey", genre: "Comics, Graphic novel, Fiction, Humor", published_in: 2017, user_id: 3)
comic.create(title: "Asterix and Cleopatra", author: "René Goscinny", genre: "Humor", published_in: 1965, user_id: 4)
comic.create(title: "The Blue Lotus", author: "Hergé", genre: "Comics, Graphic novel", published_in: 1935, user_id: 5)
comic.create(title: "Persepolis 1: The Story of a Childhood", author: "Marjane Satrapi", genre: "Graphic novel, autobiography", published_in: 2000, user_id: 6)

booking.create(start_date: "25/02/2024", end_date: "10/03/2024", status: "pending", comoc_id: 1, user_id: 1)
booking.create(start_date: "10/03/2024", end_date: "24/03/2024", status: "approved", comoc_id: 2, user_id: 2)
booking.create(start_date: "05/03/2024", end_date: "12/03/2024", status: "approved", comoc_id: 3, user_id: 3)
booking.create(start_date: "07/03/2024", end_date: "14/03/2024", status: "pending", comoc_id: 4, user_id: 4)
booking.create(start_date: "01/04/2024", end_date: "8/04/2024", status: "pending", comoc_id: 5, user_id: 5)

user.create(name: "Erwan Ruaud", address: "Berlin", email: "erwanruaud@mail.com", bio: "Classics, french, belgium & marvel comics")
user.create(name: "Romain Bruzeau", address: "Berlin", email: "romainbruzeau@mail.com", bio: "Humor, classic comics")
user.create(name: "Kalek Chahed", address: "Berlin", email: "kalekchacha@mail.com", bio: "Sci-Fi, Comic strips, Superheroes")
