class Admin::UsersController < ApplicationController

  def index
    redirect_to :root if !current_user.admin
    @users = User.page(params[:page]).per(5)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    UserDeleteMailer.admin_delete_user_email(@user).deliver
    respond_to do |format|
      if @user
        format.html { redirect_to admin_users_path }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      else
      # Sends email to user when user is created.
      format.html { redirect_to @user, notice: 'User was deleted by admin.' }
      format.json { render :show, status: :deleted, location: @user }
      redirect_to admin_users_path
      end
    end
  
  end

end
