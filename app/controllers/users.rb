get '/users/new' do
  erb :'/users/new'
end


post '/users' do
  @user = User.find_by email: params[:email]
  if !@user
    @new_user = User.new(params[:user])
    # @new_user.email = params[:email]
    @new_user.password = params[:password]
    @new_user.save
    @errors = @new_user.errors.full_messages
    if @errors.any?
      erb :'users/new'
    else
      redirect "/users/#{@new_user.id}"
    end
  else
    @errors = "User already exist!"
    redirect :'/'
  end
end


get '/users/:id' do
  @user = User.find(session[:id])
  erb :'users/show'
end


# @user = User.find_by(id: session[:id])
#   @channels = @user.channels
#   erb :'/users/show'