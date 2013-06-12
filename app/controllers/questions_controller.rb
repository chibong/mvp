class QuestionsController < ApplicationController

  def index
      @question = Question.new
      @questions = Question.all
      @user = User.find_by_id(params[:user_id])
      @session_id=session["user_id"]

      # @userqs = @user.questions

      # if @user.id != session["user_id"]
      #   redirect_to "/", :notice => "Sorry, you cant see this"
      #  end
  end

  def show
    @user = User.find_by_id(params[:user_id])
    @question = Question.find_by_id(params[:id])
  end

  def new
    @user = User.find_by_id(params[:user_id])
    @question = Question.new
  end

  def create
    @question = Question.new
    @user = User.find_by_id(params[:user_id])
    @question.user_id = @user.id
    @question.summary = params[:summary]
    if @question.save
      redirect_to questions_url
    else
      redirect_to "/users/#{@user.id}/questions/new", notice: "Please enter a question or make sure it is unique"
     end
  end

  def edit
    @question = Question.find_by_id(params[:id])
  end

  def update
    @question = Question.find_by_id(params[:id])
    @question.summary = params[:summary]
    @user = User.find_by_id(session["user_id"])
    if @question.save
      redirect_to questions_url(@user)
    else
      render 'new'
    end
  end

  def destroy
    @question = Question.find_by_id(params[:id])
    @question.destroy
    redirect_to questions_url
  end
end
