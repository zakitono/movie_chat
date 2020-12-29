class AddMovieAMovieBMovieCToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :movie_a, :text
    add_column :users, :movie_b, :text
    add_column :users, :movie_c, :text
  end
end
