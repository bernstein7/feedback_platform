class Response < ApplicationRecord
  belongs_to :feedback
  belongs_to :question
  belongs_to :answer

  after_create :recount_experience_rating
  after_destroy :recount_experience_rating

  def experience
    feedback.experience
  end

  def recount_experience_rating
    experience.recount_rating if answer.rating_answer?
  end
end
