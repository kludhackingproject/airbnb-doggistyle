class Dog < ApplicationRecord
  has_many :join_table_strolls
  has_many :dogsitters, through: :join_table_strolls
end
