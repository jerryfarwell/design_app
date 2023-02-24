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


  def create
     
    @user = User.create(first_name: params[:first_name], name: params[:name])

    if @user.save
      redirect_to users 
    else
      render new
    end

  end

  private

  def login
   
  end

  def edit
  end
end
