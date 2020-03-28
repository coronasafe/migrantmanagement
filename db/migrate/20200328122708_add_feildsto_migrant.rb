class AddFeildstoMigrant < ActiveRecord::Migration[6.0]
  def change
    change_table(:migrants) do |t| 
      t.boolean :has_beds
      t.boolean :has_mattresses
      t.boolean :has_toilet
      t.boolean :has_general_cleanliness 
      t.integer :number_people_sharing_room
      t.boolean :has_cooking_facilities
      t.boolean :need_food
      t.boolean :need_water
      t.boolean :need_medicines
      t.boolean :need_doctor
      t.string :feedback_comment
    end
  end
end
