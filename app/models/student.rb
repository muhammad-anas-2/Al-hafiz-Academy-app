class Student < ApplicationRecord

  before_save { self.email = email.downcase }
  validates :name, presence: true, uniqueness: true, length: { maximum: 30, minimum: 4 }

  validates :name, presence: true, uniqueness: true, length: { maximum: 20 , minimum: 3}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            uniqueness: { case_sensitive: false }, length: { maximum: 100 },
            format: { with: VALID_EMAIL_REGEX }



end