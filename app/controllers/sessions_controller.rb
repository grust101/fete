get '/sessions/login' do
	erb :'/sessions/login'
end

post '/sessions' do 

	@user = User.find_by(email: params[:user][:email])

	if @user && @user.authenticate(params[:user][:password])
		session[:id] = @user.id
		redirect "/users/#{session[:id]}"
	else
		@error = "Log in info is incorrect, sorry boo."
		p @error

		redirect "/sessions/login"
	end

end


get '/sessions/logout' do
  logout(@user)
  redirect "/"
end