get '/questions/:id/choices/new' do |q_id|
  @choice = Choice.new
  @question = Question.find(q_id)
  if request.xhr?
    erb :'choice/_new-form', layout: false, locals: {question: @question, choice: @choice}
  else
    erb :'choice/new'
  end
end

post '/questions/:id/choices' do |q_id|
  @question = Question.find(q_id)
  @choice = @question.choices.new(params[:choice])#make sure this alligns with the erb's form
  if @choice.save
    flash[:message] = "choice saved!!"
    redirect "/questions/#{@question.id}/choices/new"
  else
    @errors = @choice.errors.full_messages
    erb :'choice/new'
  end
end
