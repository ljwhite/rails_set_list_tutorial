require 'rails_helper'

RSpec.describe 'songs index page', type: :feature do
  before(:each) do
    @prince = Artist.create!(name: 'Prince')
    @purple = @prince.songs.create!(title: 'Purple Rain', length: 15, play_count: 20)
    @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 39, play_count: 100)
    @carly = Artist.create!(name: 'Carly Rae')
    @callme = @carly.songs.create!(title: "Call Me Maybe", length: 200, play_count: 2000)
  end

  it 'lists all songs' do
    visit "/songs/"
    expect(page).to have_content(@purple.title)
    expect(page).to have_content("Play Count: #{@purple.play_count}")
    expect(page).to have_content(@beret.title)
    expect(page).to have_content(@callme.title)
  end

end