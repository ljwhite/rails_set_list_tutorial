require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe 'relationships' do
    it {should have_many :songs}
  end


  describe 'instance methods' do 
    before :each do 
      @prince = Artist.create!(name: 'Prince')
      @purple = @prince.songs.create!(title: 'Purple Rain', length: 15, play_count: 20)
      @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 39, play_count: 100)
      @song_3 = @prince.songs.create!(title: 'Song 3', length: 2, play_count: 1)
    end

    it 'has a method to find the average length of all artist songs' do
      expect(@prince.average_song_length).to eq 18.67
    end
  end
end