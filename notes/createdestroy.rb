<!-- Create and Destroy Sessions - Text directions and code
Fill in the create and destroy actions in the sessions_controller.rb file with the following: -->

def create
  user = User.find_by(email: params[:session][:email].downcase)
  if user && user.authenticate(params[:session][:password])
    session[:user_id] = user.id
    flash[:success] = "You have successfully logged in"
    redirect_to user_path(user)
  else
    flash.now[:danger] = "There was something wrong with your login information"
    render 'new'
  end
end

def destroy
  session[:user_id] = nil
  flash[:success] = "You have logged out"
  redirect_to root_path
end

Add a logout link to your navigation partial (_navigation.html.erb)
in the app/views/layouts folder by changing one of the default links
which are listed as <li> item:

<li><%= link_to 'Log out', logout_path, method: :delete %></li>
