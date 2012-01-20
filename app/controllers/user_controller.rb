class UserController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(user_path, :notice => "User #{@user.first_name} was successfully updated.") }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
  end

end
