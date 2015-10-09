get '/signup' do
  @user = User.new
  erb :'user/signup'
end

post '/signup/' do
  @user = User.new(params[:user])
  if user.save
    session[:user_id] = @user.id
    redirect "/"
  else
    @errors = @user.errors.full_messages
    erb :'user/signup'
  end
end
