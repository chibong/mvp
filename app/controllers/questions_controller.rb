class QuestionsController < ApplicationController

  def index
      @questions = Question.all
      @user = User.find_by_id(params[:id])
      # @userqs = @user.questions

      # if @user.id != sesssion["user_id"]
      #   redirect_to "/", :notice => "Sorry, you cant see this"
      # end
  end

  def show
    @question = Question.find_by_id(params[:id])
  end

  def new
    @user = User.find_by_id(params[:id])
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.user_id = params[:user_id]
    @question.summary = params[:summary]
    if @question.save
      redirect_to questions_url
    else
      render 'new'
     end
  end



  def edit
    @question = Question.find_by_id(params[:id])
  end

  def update
    @question = Question.find_by_id(params[:id])
    @question.summary = params[:summary]
    @question.rating = params[:rating]

    if @question.save
      redirect_to questions_url
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
