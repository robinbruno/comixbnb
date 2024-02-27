# t.string "genre"
# t.string "title"
# t.string "author"
# t.date "published_in"
# t.bigint "user_id", null: false
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.boolean "pickable"

puts "db is being washed out before rearmement"
Comic.destroy_all

puts "Creating the db with seeds..."

Comic.create!(title: "Wonder Woman 1984",
              genre: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
              author: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
              published_in: "20.01.1982",
              pickable: "true")
Comic.create!(title: "Wonder Woman 1984",
              genre: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
              author: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
              published_in: "20.01.1982",
              pickable: "true")
Comic.create!(title: "Wonder Woman 1984",
              genre: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
              author: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
              published_in: "20.01.1982",
              pickable: "true")
Comic.create!(title: "Wonder Woman 1984",
              genre: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
              author: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
              published_in: "20.01.1982",
              pickable: "true")

puts "#{Comic.count} comics in database"
puts "Finished!"
