class Course < ApplicationRecord

  validates :short_name, presence: true, uniqueness: true, length: { maximum: 4,minimum: 3}
  validates :name, presence: true, length: { maximum: 100, minimum: 10 }
  validates :description, presence: true, length: { maximum: 500, minimum: 10 }


end