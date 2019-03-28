class AddGenreIdToSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :submissions, :genre_id, :integer
  end
end
