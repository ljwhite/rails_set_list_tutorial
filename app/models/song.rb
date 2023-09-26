class Song < ApplicationRecord
  belongs_to :artist
  validates_presence_of :title, :play_count, :length

  def self.song_count
    Song.all.length
  end
end