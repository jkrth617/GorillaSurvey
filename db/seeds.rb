
ld = User.create(user_name: "LD", email: Faker::Internet.email)
jake = User.create(user_name: "Jake", email: Faker::Internet.email)
sarah = User.create(user_name: "Sarah", email: Faker::Internet.email)
jason = User.create(user_name: "Jason", email: Faker::Internet.email)

users = [ld, jake, sarah, jason]

users.each do |user|
  user.password_digest = "yolo"
  user.save

  2.times do
    survey = Survey.create(title: Faker::Lorem.word, user_id: rand(1..4))
    user.surveys << survey

    3.times do
      question = Question.create(name: Faker::Lorem.sentence + "?", survey_id: rand(1..2))
      survey.questions << question

      3.times do
        choice = Choice.create(body: Faker::Lorem.word, question_id: rand(1..6))
        question.choices << choice
      end
    end
  end
end

# Survey.create [{ title: Faker::Lorem.word, user_id: 1}, { title: Faker::Lorem.word, user_id: 2},
#   { title: Faker::Lorem.word, user_id: 3}, { title: Faker::Lorem.word, user_id: 4}]
