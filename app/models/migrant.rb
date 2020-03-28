class Migrant < ApplicationRecord
  belongs_to :state
  belongs_to :district
  belongs_to :panchayat
end
