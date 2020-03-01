class AddRatingToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :rating, :float
  end
end
