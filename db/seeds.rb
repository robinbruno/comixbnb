puts "db is being washed out before rearmement"
Comic.destroy_all

puts "Creating the db with seeds..."

Comic.create!(title: "Wonder Woman 1984",
              genre: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
              author: "ME",
              published_in: "20.01.1982",
              pickable: "true")
Comic.create!(title: "Wonder Woman 1984",
              genre: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
              author: "ME",
              published_in: "20.01.1982",
              pickable: "false")
Comic.create!(title: "Wonder Woman 1984",
              genre: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
              author: "ME",
              published_in: "20.01.1982",
              pickable: "false")
Comic.create!(title: "Wonder Woman 1984",
              genre: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
              author: "ME",
              published_in: "20.01.1982",
              pickable: "false")

puts "#{Comic.count} comics in database"
puts "Finished!"
