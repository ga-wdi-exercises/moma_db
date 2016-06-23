require "pry"
van_gogh = Artist.new(name: "Vincent van Gogh",nationality: "Dutch")
van_gogh.save
picasso = Artist.new(name: "Pablo Picasso",nationality: "Spanish")
picasso.save
money = Artist.new(name: "Claude Money",nationality:"French")
money.save
binding.pry
puts "end"
