class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :title
      t.string :description
      t.float :price
      t.timestamps
    end
  end
end
