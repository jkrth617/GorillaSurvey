get '/surveys' do
  @surveys = Survey.order(:title)
  erb :'survey/index'
end

get '/surveys/new' do
  if session[:user_id]
    @survey = Survey.new
    erb :'survey/new'
  else
    flash[:message] = "Please log in!"
    redirect "/surveys"
  end
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  if session[:user_id]
    erb :'survey/show'
  else
    @errors = @survey.errors.full_messages
    flash[:message] = "Please log in!"
    redirect "/surveys"
  end
end

post '/surveys' do
  @survey = Survey.new(params[:survey])
  @survey.user_id = session[:user_id]
    if @survey.save
      flash[:message] = "Survey was saved!"
      redirect "/surveys/#{@survey.id}/questions/new"
    else
      @errors = @survey.errors.full_messages
      flash[:message] = "Survey not made!"
      erb :'survey/new'
    end
end

get '/surveys/delete/:id' do
  @survey = Survey.find(params[:id])
  erb :'survey/delete'
end

delete '/surveys/:id' do
  survey = Survey.find(params[:id])
  survey.destroy
  redirect '/surveys'
end



