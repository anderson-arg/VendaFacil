class ProductsController < ApplicationController
	before_action :set_category, only: [:index, :new, :create, :edit, :update]
	before_action :require_user, except: [:index]

	before_action :set_locale

	def index
		@categories = Category.all
		if params[:category] != nil && params[:category]['category_id'] != "" && params[:name] != ""
			@products = Product.search_name_category(params[:category]['category_id'], params[:name]).paginate(:page => params[:page])
			
		elsif params[:category] != nil && params[:category]['category_id'] != ""
			@products = Product.search_category(params[:category]['category_id']).paginate(:page => params[:page])

		elsif params[:name] != ""
			@products = Product.search_name(params[:name]).paginate(:page => params[:page])
		elsif 
			@products = Product.search_all.paginate(:page => params[:page])
		end
	end

	def show
		if Product.exists?(params[:product_id])
			@product = Product.friendly.find(params[:product_id])
		elsif 
			flash[:error] = t(:product)+" "+t(:message_error_not_found)
			redirect_to '/'
		end
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.user = current_user

		if @product.save
			session[:product_id] = @product.id
			flash[:success] = t(:product)+" "+t(:message_success_register)
			respond_to do |format|
				format.html{redirect_to '/'}
				format.js
			end
		elsif 
			flash[:error] = t(:message_error_empty_fields)
			respond_to do |format|
				format.html{redirect_to '/products/new'}
				format.js
			end
		end
		
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		if Product.exists?(params[:product_id])
			@product = Product.find(params[:product_id])
			@product.destroy
			respond_to do |format|
     			format.js
   			end
		elsif 
			flash[:error] = t(:product)+" "+t(:message_error_not_found)
			redirect_to '/'
		end
	end

	private
	def product_params
      params.require(:product).permit(:category_id, :avatar, :name, :description, :value)
    end

    def set_category
    	@categories = Category.all
    end
end
