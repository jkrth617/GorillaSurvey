get '/surveys' do
  @surveys = Survey.order(:title)
end

get '/surveys/new' do

end
