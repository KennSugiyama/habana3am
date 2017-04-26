get '/sessions/new' do
  erb :index
end

post '/sessions' do
  @user = User.find_by email: params[:email]
  if @user && @user.authenticate(params[:password])
    session[:id] = @user.id
    redirect '/users/:id'
  else
    @errors = "Please try again"
    erb :'index'
  end
end

get '/sessions/logout' do
  session.clear
  redirect '/'
end



