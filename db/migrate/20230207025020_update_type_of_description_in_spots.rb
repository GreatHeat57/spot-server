class UpdateTypeOfDescriptionInSpots < ActiveRecord::Migration[7.0]
  def change
    change_column :spots, :description, :text
  end
end
