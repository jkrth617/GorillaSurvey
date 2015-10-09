get '/surveys' do
  @surveys = Survey.order(:title)
  erb  :'/surveys/index'
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :'/surveys/show'
end


get '/surveys/new' do
  erb :'/surveys/new'
end


post '/surveys/new' do

end

