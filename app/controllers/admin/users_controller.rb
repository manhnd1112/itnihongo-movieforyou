class Admin::UsersController < AdminController
	before_action :find_user, only: [:show, :edit, :update, :destroy]

	def index
		@search = User.ransack(params[:q])
		@users = @search.result.order("created_at desc").page(params[:page]).per 10
	end

	def show; end

	def new
		@user = User.new
	end

	def create
		@user = User.new user_params
		if @user.save!
			flash[:success] = t "flash.users.create_success"
			redirect_to admin_users_path
		else
			render :new
		end
	end

	def edit; end

	def update
		if @user.update_attributes user_params
			flash[:success] = t "flash.users.update_success"
			redirect_to admin_user_path @user
		else
			render :edit
		end
	end

	def destroy
		if @user.destroy
			flash[:success] = t "flash.users.destroy_success"
		else
			flash[:danger] = t "flash.users.destroy_success"
		end
		redirect_back fallback_location: admin_users_path
	end

	private
	def user_params
		params.require(:user).permit :password, :username, :is_admin, :email
	end

	def find_user
		@user = User.find_by id: params[:id]

		return if @user
		flash[:danger] = t "flash.users.not_found"
		redirect_to admin_users_path
	end
end
