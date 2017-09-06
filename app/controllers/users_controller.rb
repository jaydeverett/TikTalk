class UsersController < ApplicationController

  def index
    @users = User.order(:total_wins).limit(20)
    


  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = 'Account successfully created!'
      redirect_to user_path(@user.id)
    else
      flash.now[:error] = 'Sorry try again!'
      render :new
    end




  end

  def show
    @user = User.find(params[:id])

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Profile successfully updated"
      redirect_to @user
   else
    redirect_back_or_to @user
  end

  end
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :political_spectrum, :personal_hero, :personality)
  end

 end
