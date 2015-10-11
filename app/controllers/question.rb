get '/surveys/:id/questions/new' |survey_id|
  @question = Question.new
  @survey_id = survey_id
  erb :'question/new'
end


