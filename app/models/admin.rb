class Admin < ApplicationRecord
  has_secure_password

  has_many :events
  has_many :tutors

  validates :email, uniqueness: { case_sensitive: false }
end