# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[Response, Feedback, Answer, Experience, Question].map(&:delete_all)

question_1 = Question.create(body: 'Let us know what you liked visited this experience')
question_2 = Question.create(body: 'Let us know what can be improved')
question_3 = Question.create(body: 'Rate the experience')

experience = Experience.create(name: 'First impression')

experience.feedbacks.create.tap do |feedback|
  feedback.responses.create(question: question_1, answer: Answer.create(body: 'SPA center was luxurious'))
  feedback.responses.create(question: question_3, answer: Answer.create(rate: 5, body: 'Great!'))
end

experience.feedbacks.create.tap do |feedback|
  feedback.responses.create(question: question_1, answer: Answer.create(body: 'Accomodation was fine'))
  feedback.responses.create(question: question_2, answer: Answer.create(body: 'Consider adding more food'))
  feedback.responses.create(question: question_3, answer: Answer.create(rate: 4, body: 'fine'))
end

experience.feedbacks.create.tap do |feedback|
  feedback.responses.create(question: question_1, answer: Answer.create(body: 'I liked the cats'))
  feedback.responses.create(question: question_2, answer: Answer.create(body: 'IMHO It took too long'))
  feedback.responses.create(question: question_3, answer: Answer.create(rate: 4))
end

experience.feedbacks.create.tap do |feedback|
  feedback.responses.create(question: question_2, answer: Answer.create(body: 'The manager was rude'))
  feedback.responses.create(question: question_3, answer: Answer.create(rate: 3, body: 'Not bad'))
end
