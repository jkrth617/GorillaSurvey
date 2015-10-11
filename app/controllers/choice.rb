get '/questions/:id/choices/new' do |q_id|
  @choice = Choice.new
  @question_id = q_id
  erb :'choice/new'
end

post '/questions/:id/choices' do |q_id|
  question = Question.find(q_id)
  @choice = question.choices.new(params[:choice])#make sure this alligns with the erb's form
  if @choice.save
    redirect "/questions/:id/choices/new"
  else
    @errors = @choice.errors.full_messages
    erb :'choice/new'
  end
end
