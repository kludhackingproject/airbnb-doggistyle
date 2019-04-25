class Dogsitter < ApplicationRecord
  has_many :join_table_strolls
  has_many :dogs, through: :join_table_strolls
end
