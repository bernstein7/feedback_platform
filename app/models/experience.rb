class Experience < ApplicationRecord
  has_many :feedbacks
  has_many :responses, through: :feedbacks

  def eager_rating
    responses
      .joins(:answer)
      .merge(Answer.with_rating)
      .average('answers.rate')
  end

  def recount_rating
    update(rating: eager_rating)
  end
end
