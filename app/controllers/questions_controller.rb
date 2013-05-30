class QuestionsController < ApplicationController

  def index
    @user = User.find_by_id(params[:id])
    @user.questions = Question.all
  end

  def show
    @question = Question.find_by_id(params[:id])
  end

  def new
    @user = User.find_by_id(params[:id])
    @user.question = Question.new
  end

  def create
    @user.question = Question.new
    @user.question.summary = params[:summary]
    if @user.question.save
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
