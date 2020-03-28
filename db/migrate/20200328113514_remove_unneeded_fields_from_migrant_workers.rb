class RemoveUnneededFieldsFromMigrantWorkers < ActiveRecord::Migration[6.0]
  def change
    remove_column :migrants, :local_address
    remove_column :migrants, :ward
    remove_column :migrants, :panchayath
    remove_column :migrants, :has_toilet
    remove_column :migrants, :no_house_mates
    remove_column :migrants, :cooking
  end
end
