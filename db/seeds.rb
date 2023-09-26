# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@prince = Artist.create!(name: 'Prince')
@purple = @prince.songs.create!(title: 'Purple Rain', length: 15, play_count: 20)
@beret = @prince.songs.create!(title: 'Raspberry Beret', length: 39, play_count: 100)
@carly = Artist.create!(name: 'Carly Rae')
@callme = @carly.songs.create!(title: "Call Me Maybe", length: 200, play_count: 2000)