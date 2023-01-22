class Student < ApplicationRecord
  validates :name, presence: true
  validates :gender, presence: true
  validates :date_of_birth, presence: true
end
