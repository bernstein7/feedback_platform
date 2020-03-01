class Answer < ApplicationRecord
  scope :with_rating, -> { where.not(rate: nil) }

  def rating_answer?
    rate.present?
  end
end
