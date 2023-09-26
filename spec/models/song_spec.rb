require 'rails_helper'

RSpec.describe Song do 
  describe 'relationships' do
    it {should belong_to :artist}
  end

  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :length}
    it {should validate_presence_of :play_count}
  end

  describe '#class methods' do
    it '.song_count' do
      expect(Song.song_count).to eq 0
      @prince = Artist.create!(name: 'Prince')
      @purple = @prince.songs.create!(title: 'Purple Rain', length: 15, play_count: 20)
      @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 39, play_count: 100)
      @song_3 = @prince.songs.create!(title: 'Song 3', length: 2, play_count: 1)
      @carly = Artist.create!(name: "Carly Rae")
      @call_me = @carly.songs.create!(title: 'Call Me Maybe', length: 100, play_count: 1000)      
      expect(Song.song_count).to eq 4
    end
  end
end