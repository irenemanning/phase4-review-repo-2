# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "🍿 Seeding movies..."

movie1 = Movie.create(title: 'The Lion King', genre: 'Musical', year: 1994, director: 'Rob Minkoff', image_url: 'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/612YWU3cO1L._AC_SY879_.jpg')
movie2 = Movie.create(title: 'Elf', genre: 'Christmas', year: 2003, director: 'Jon Favreau', image_url: 'https://cdnprod.christiancinema.com/images/products/9286_255w_360h.jpg')
movie3 = Movie.create(title: 'Licorice Pizza', genre: 'Comedy', year: 2021, director: 'Paul Thomas Anderson', image_url: 'https://m.media-amazon.com/images/M/MV5BYWViNjVhZjItZTMzNi00MTI2LWExZTItZTNhMmM1MDdjOTliXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg')
movie4 = Movie.create(title: '2001: A Space Odyssey', genre: 'Sci-Fi', year: 1968, director: 'Stanley Kubrick', image_url: 'https://media.timeout.com/images/105455969/1372/1029/image.jpg')
movie5 = Movie.create(title: 'The Godfather', genre: 'Thriller', year: 1972, director: 'Francis Ford Coppola', image_url: 'https://media.timeout.com/images/105455970/1372/1029/image.jpg')
movie6 = Movie.create(title: 'Citizen Kane', genre: 'Drama', year: 1941, director: 'Orson Welles', image_url: 'https://media.timeout.com/images/105455971/1372/1029/image.jpg')
movie7 = Movie.create(title: 'Raiders of the Lost Ark', genre: 'Action', year: 1981, director: 'Steven Spielberg', image_url: 'https://media.timeout.com/images/105455973/1372/1029/image.jpg')
movie8 = Movie.create(title: 'La Dolce Vita', genre: 'Drama', year: 1960, director: 'Federico Fellini', image_url: 'https://media.timeout.com/images/105456105/1372/1029/image.jpg')
movie9 = Movie.create(title: 'Seven Samurai', genre: 'Action', year: 1954, director: 'Akira Kurosawa', image_url: 'https://media.timeout.com/images/101714537/1372/1029/image.jpg')
movie10 = Movie.create(title: 'In the Mood for Love', genre: 'Drama', year: 2000, director: 'Wong Kar-wai', image_url: 'https://media.timeout.com/images/105455977/1372/1029/image.jpg')
movie11 = Movie.create(title: "Singing in the Rain", genre: "Musical", year: 1952, director: "Gene Kelly", image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSoC1dCs1rL9rx8MbLd-1WzVih4KhlZej-CgOLjJKZa7ntPsk2-")

20.times do 
User.create(username:  Faker::Name.name.split(" ")[0], password: "1234")
end

100.times do
    Review.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, review_content: Faker::Quote.jack_handey )
end

puts "✅ Done seeding!"

# Profile Picture: https://img.freepik.com/free-vector/fast-food-sticker-design-with-hot-dog-isolated_1308-67129.jpg?w=360