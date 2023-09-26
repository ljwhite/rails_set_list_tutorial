require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before(:each) do 
    prince = Artist.create!(name: 'Prince')
    prince.songs.create!(title: 'Purple Rain', length: 15, play_count: 20)
    prince.songs.create!(title: 'Raspberry Beret', length: 39, play_count: 100)
  end
  it 'shows all of the titles of the songs of the artist' do

  end

  it 'links to each songs show page' do

  end
end