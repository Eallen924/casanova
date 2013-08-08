class QuestionsController < ApplicationController

  def index
    @user = User.new
    @questions = Question.all
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to question_path(@question)
    else
      flash[:notice] = "There was an error processing your question"
      redirect_to new_question_path
    end
  end

  def new
    @user = User.new
    @question = Question.new
  end

  def show
    @user = User.new
    @question = Question.find(params[:id])
  end
end
