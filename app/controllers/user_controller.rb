class UserController < ApplicationController
before_filter :get_user, :only => [:show, :edit, :update, :destroy] 
before_filter :authorize, :only => [:show, :edit, :update, :destroy, :dashboard] 
  
  def index
    if current_user.admin?
		@users = User.all
	else
		flash[:notice] = "I think ya headed in the wrong direction bruh.."
		redirect_to(root_path)
	end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(user_path, :notice => "User #{@user.first_name} was successfully updated.") }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
	@user.destroy
	flash[:notice] = "User #{@user.first_name} deleted"
	redirect_to(all_users_path)
  end
 
  def get_user
	@user = User.find(params[:id])
  end
  
  def authorize
		if current_user.id != @user.id
		unless current_user.admin?
			flash[:notice] = "I think ya headed in the wrong direction bruh.."
			redirect_to(root_path)
		end
	end
  end
  
end
