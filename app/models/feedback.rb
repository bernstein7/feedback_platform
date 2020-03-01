class Feedback < ApplicationRecord
  belongs_to :experience
  has_many :responses
  has_many :answers, through: :responses
end
