class AddFieldsToMigrants < ActiveRecord::Migration[6.0]
  def change
    add_column :migrants, :employer_phone, :string
    add_column :migrants, :local_address, :text
    add_column :migrants, :ward, :integer
    add_column :migrants, :panchayath, :string
    add_column :migrants, :has_toilet, :boolean
    add_column :migrants, :no_house_mates, :integer
    add_column :migrants, :cooking, :string
    add_column :migrants, :has_labour_department_reached, :boolean
    add_column :migrants, :can_speak_local_language, :boolean
    add_column :migrants, :aadhar_id, :string
  end
end
