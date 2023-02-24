class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end



  def update
    @user = User.update(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user = User.destroy
    redirect_to '/'
  end


  def edit
  end


  def create
     
    @user = User.new(user_params)

    if @user.save
      redirect_to users 
    else
      render new
    end

  end

  private

  def user_params
    params.require(:user).permit(:avatar, :first_name, :name, :email, :login)
  end


end
