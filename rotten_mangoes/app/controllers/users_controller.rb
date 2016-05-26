class UsersController < ApplicationController

  def new
    if current_user && !current_user.admin
      redirect_to :root
    end
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save && current_user.nil?
      session[:user_id] = @user.id
      redirect_to movies_path, notice: "Welcome aboard, #{@user.firstname}!"
    elsif @user.save && current_user.admin
      session[:user_id] = current_user.id
      redirect_to movies_path, notice: "User, #{@user.firstname} was successfully created"  
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :password, :password_confirmation)
  end

end
