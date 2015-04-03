class SessionsController < ApplicationController
	before_action :redirect_if_signed_in, except: [:destroy]

	def new
	end

	def create
		user = User.find_by(email_address: params[:session][:email_address].downcase)
		auth_result = user.authenticate(params[:session][:password])
		if user && auth_result
				sign_in user
				redirect_to user_path(id: user.id)
		else
			flash.now[:danger] = "Invalid email/password combination."
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end

end
