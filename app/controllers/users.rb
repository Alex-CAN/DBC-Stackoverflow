# # index
# get '/users' do
#   erb :'/users/index'
# end

# new (has the form for new user)
get '/users/new' do
  erb :'/users/new'
end

# create: handle form submission for new user
post '/users' do
  if params[:user][:password] == params[:password_confirm]
    @user = User.new(params[:user])
    if @user.save
      login(@user)
      redirect "/users/#{@user.id}"
    else
      @error = "Email is incorrect try again"
      erb :'users/new'
    end
  else
    @error = "Passwords don't match, try again"
    erb :'users/new'
  end
end

# show a particular user
get '/users/:id' do
  # something is wrong here, the logged in user can see other profiles
  #   p "*"* 80
  #   p " params id: #{params[:id]}"
  #   p "*"* 80
  #   p "current user: #{current_user}"
  #   p "*"* 80
  #   p " current user id: #{current_user.id}"
  # if params[:id] == current_user.id
  if current_user
    @user = User.find(params[:id])
    erb :'/users/show'
  else
    p "*"* 80
    p "Not authorized to view this page, try logging in"
    erb :'/sessions/new'
  end
end

# edit a user
get '/users/:id/edit' do
  erb :'/users/edit'
end

# update: handle form submission for editing user
put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(params[:user])
  erb :'/users/show'
end

# delete a user
delete '/users/:id' do
  @user = User.find(params[:id])
  @user.destroy
  redirect '/'
end
