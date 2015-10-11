get '/questions/:id/choice/new' do |q_id|
  @choice = Choice.new
  @question_id = q_id
  erb :'choice/new'
end


