class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find_by_id(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new
    @answer.question_id=params[:question_id]
    @answer.number = params[:number]
    @answer.text = params[:text]
    @user = User.find_by_id(params[:user_id])
    if @answer.save
        redirect_to questions_url, notice: "Answer recorded"
         # redirect_to "/", :notice => "Sorry, you cant see this"
        #need to add a notification that it posted correctly
        # redirect_to "users/#{:user_id}/questions/#{:question_id}/answers"
      # if this doesnt work try going back to redirect_to answers_url
    else
      render 'new'
    end
  end

  def edit
    @answer = Answer.find_by_id(params[:id])
  end

  def update
    @answer = Answer.find_by_id(params[:id])
    @answer.number = params[:number]
    @answer.text = params[:text]
    @answer.question_id=params[:question_id]

    if @answer.save
      redirect_to answers_url
    else
      render 'new'
    end
  end

  def destroy
    @answer = Answer.find_by_id(params[:id])
    @answer.destroy
    redirect_to answers_url
  end
end
