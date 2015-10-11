get '/surveys' do
  @surveys = Survey.order(:title)
  erb :'survey/index'
end

get '/surveys/new' do
  @survey = Survey.new
  erb :'survey/new'
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :'survey/show'
end

post '/surveys' do
  @survey = Survey.new(params[:survey])
  @survey.user_id = session[:user_id]
    if @survey.save
      flash[:message] = "Survey was saved!"
      redirect '/surveys'
    else
      @errors = @survey.errors.full_messages
      flash[:message] = "Survey not made!"
      erb :'survey/new'
    end
end
