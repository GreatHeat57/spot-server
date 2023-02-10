class AddSpotIdInReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :spot_id, :integer
  end
end
