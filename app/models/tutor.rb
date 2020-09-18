class Tutor < ApplicationRecord
  has_many :events
  belongs_to :admin
end
