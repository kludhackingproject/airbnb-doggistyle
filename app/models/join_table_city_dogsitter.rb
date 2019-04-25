class JoinTableCityDogsitter < ApplicationRecord
  belongs_to :city
  belongs_to :dogsitter
end
