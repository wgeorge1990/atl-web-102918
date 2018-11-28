class Cohort < ApplicationRecord
  has_many :students
  # goal: validate the name
  # has actually be there
  validates :name, presence: true
  # not a number
  # min and max length
  validates :name, length: { in: 2..20 }
  # not duplicated
  validates :name, uniqueness: true
end
