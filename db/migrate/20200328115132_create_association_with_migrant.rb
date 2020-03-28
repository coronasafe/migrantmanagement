class CreateAssociationWithMigrant < ActiveRecord::Migration[6.0]
  def change
    add_reference :migrants, :state, foreign_key: true
    add_reference :migrants, :district, foreign_key: true
    add_reference :migrants, :panchayat, foreign_key: true
  end
end
