class AddLengthToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :length, :integer
  end
end
