
get '/choices/:id/responses' do |choice_id|
  response = Response.new(user_id: session[:user_id], choice_id: choice_id)
  response.save
end