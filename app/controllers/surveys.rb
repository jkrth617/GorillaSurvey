get '/surveys' do
  @surveys = Survey.order(:title)
  erb :'survey/index'
end

get '/surveys/new' do
  erb :'survey/new'
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :'survey/show'
end

post '/surveys/new' do

end

