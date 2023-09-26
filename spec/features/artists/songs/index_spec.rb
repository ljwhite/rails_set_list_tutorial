require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before(:each) do
    @prince = Artist.create!(name: 'Prince')
    @purple = @prince.songs.create!(title: 'Purple Rain', length: 15, play_count: 20)
    @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 39, play_count: 100)
  end

  it 'shows all of the titles of the songs of the artist' do
    visit "/artists/#{@prince.id}/songs"
    expect(page).to have_content(@purple.title)
    expect(page).to have_content(@beret.title)
  end

  it 'links to each songs show page' do
    visit "/artists/#{@prince.id}/songs"
    expect(page).to have_content(@purple.title)
    click_on @purple.title
    expect(current_path).to eq "/songs/#{@purple.id}"
  end


  it 'shows average play time of all artist songs' do
    @song_3 = @prince.songs.create!(title: "Song 3", length: 2, play_count: 1)
    visit "/artists/#{@prince.id}/songs"
    expect(page).to have_content("Average Length of #{@prince.name} Songs: 18.67")
  end
end