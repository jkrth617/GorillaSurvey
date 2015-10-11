get '/surveys/:id/questions/new' do |survey_id|
  @question = Question.new
  @survey_id = survey_id
  erb :'question/new'
end

post '/surveys/:id/questions' do |survey_id|
  survey = Survey.find(survey_id)
  @question = survey.questions.new(params[:question])
  if @question.save
    flash[:message] = "adding a choice for #{@question.name}"
    redirect "/questions/#{@question.id}/choices/new"
  else
    @errors = @question.errors.full_messages
    erb :'question/new'
  end
end
