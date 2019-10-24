class Speciality < ApplicationRecord
  has_many :studies
  has_many :doctors, through: :specialities
end
