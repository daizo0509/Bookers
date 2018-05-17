class UsersController < ApplicationController
	# before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]
	


	def show
	  	@user = User.find(params[:id])
	  	@books = @user.books
	end

	def new
  	  
	end

	def edit
	  	  
	end

	

	def update
	  	  
	end
	  
	def destroy
	  	  
	end

end
