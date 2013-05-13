class UsersController < ApplicationController

   def destroy
    u = User.find_by_id(params["id"])
    u.destroy
    redirect_to "/users"
  end


  def edit
    @user = User.find_by_id(params["id"])
  end

  def update
    @user = User.find_by_id(params["id"])
    @user.title = params[:title]
    @user.year = params[:year]
    @user.save
    redirect_to "/users"
  end

  def index
  end

  def create
    @user = User.new
    @user.firstname = params[:firstname]
    @user.lastname = paramas[:lastname]
    @user.save
    redirect_to "/users"
  end

  def show
    @user=User.find_by_id(params["id"])
  end

  def new
  end



end

