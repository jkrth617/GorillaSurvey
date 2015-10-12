get '/signup' do
  @user = User.new
  erb :'user/signup'
end

post '/signup' do
  @user = User.new(params[:user])
  # binding.pry
  if @user.save
    session[:user_id] = @user.id
    redirect "/"
  else
    @errors = @user.errors.full_messages
    erb :'user/signup'
  end
end

get '/login' do
  @user = User.new
  erb :'user/login'
end

post '/login' do
  @user = User.find_by(user_name: params[:user_name])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/"
  else
    @errors = @user.errors.full_messages
    erb :'user/login'
  end
end

get '/logout' do
  session.clear
  redirect "/"
end

get '/users/:id' do |user_id|
  @user = User.find(user_id)
  erb :'user/show'
end