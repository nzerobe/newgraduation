class UsersController < ApplicationController
  #before_action :authenticate_user!, :except => [:show, :index]
 def index
    @user = User.all
     @search = User.search(params[:q])
     @user = @search.result
    @category = Category.all
 end
 def new
    @user = User.new
      @category ||= Category.all
     
 end
 
 def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
 end
 def show
    @user = User.find(params[:id])
    
    @robs = @user.favorite_robs 
 end
 def edit
     @user = User.find(params[:id])
 end
 def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to user_path, Notice: "You have edited Your Account！"
      else
        render 'edit'
      end
 end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :image)
  end
end

