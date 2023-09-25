require 'rails_helper'

RSpec.describe 'song shows page' do
  it 'displays the song title' do
    artist = Artist.create!(name: "Carly Rae")
    song = artist.songs.create!(title: "test song", length: 190, play_count: 3545)
    song2 = artist.songs.create!(title: "test song 2", length: 250, play_count: 4000)
    visit "/songs/#{song.id}"
    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song2.title)
  end

  it 'displays the name of artist of the song' do
    artist = Artist.create!(name: "Carly Rae")
    song = artist.songs.create!(title: "test song", length: 190, play_count: 3545)
    visit "/songs/#{song.id}"
    expect(page).to have_content(song.title)
    expect(page).to have_content(artist.name)

  end
end