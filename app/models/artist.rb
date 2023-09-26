class Artist < ApplicationRecord
  has_many :songs
  validates_presence_of :name

  def average_song_length
    songs.average(:length).to_f.round(2)
  end
end