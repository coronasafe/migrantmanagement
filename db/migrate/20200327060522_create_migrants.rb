class CreateMigrants < ActiveRecord::Migration[6.0]
  def change
    create_table :migrants do |t|
      t.string :name
      t.string :employer_name
      t.text :local_residence

      t.timestamps
    end
  end
end
