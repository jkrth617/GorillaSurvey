User.create [{ user_name: "LD", password_digest: "yolo", email: "ld@gmail.com"}, {user_name: "Wangstation", password_digest: "yolo", email: "wangstation@gmail.com"}]

Survey.create [{ title: 'Why Jake is Awesome', user_id: 1}, { title: 'Seriously, Jake is great!', user_id: 2}]

Question.create [{ name: 'Awesome?', survey_id: 1}, { name: 'He is rad, right?', survey_id: 1}, { name: 'Right? Right?', survey_id: 2}, { name: 'Follow Jake to the End?', survey_id: 2}]

Choice.create [{ body: 'Yes', question_id: 1}, { body: 'No', question_id: 1},{ body: 'Yes', question_id: 2}, { body: 'No', question_id: 2}, { body: 'Yes', question_id: 3}, { body: "No", question_id: 3}, { body: "Yes", question_id: 4}, { body: "No", question_id: 4}]