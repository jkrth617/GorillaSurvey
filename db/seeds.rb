
LD = User.new(user_name: "LD", email: Faker::Internet.email)
Jake = User.new(user_name: "Jake", email: Faker::Internet.email)
Sarah = User.new(user_name: "Sarah", email: Faker::Internet.email)
Jason = User.new(user_name: "Jason", email: Faker::Internet.email)

users = [LD, Jake, Sarah, Jason]

users.each do |user|
  user.password_hash = "yolo"
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
