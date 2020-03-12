class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
   @user.email.downcase!
    if @user.save
      # If user saves in the db successfully:
      flash[:notice] = "Account created successfully!"
      redirect_to root_path
    else
      # If user fails model validation (eg:bad password or duplicate email)
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password."
      render :new
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    # strong parameters
    params.permit(:username, :email, :password, :password_confirmation)
  end
end
