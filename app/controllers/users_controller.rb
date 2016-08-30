class UsersController < ApplicationController
	before_action :logged_user, except: [:index]

	def index
		@products = current_user.products.paginate(:page => params[:page])
	end

	def show
		
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:success] = t(:user)+" "+t(:message_success_register)
			redirect_to '/'
		elsif 
			flash[:danger] = t(:message_error_empty_fields)
			redirect_to '/users/new'
		end
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	private
	def user_params
      params.require(:user).permit(:name, :email, :password)
    end

    def logged_user
    	redirect_to "/" if current_user
    end


end
