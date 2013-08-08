class QuestionsController < ApplicationController
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
    @question = Question.new
  end

  def show
    @errors = flash[:errors]
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = @question.answers
  end
end
