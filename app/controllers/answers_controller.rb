class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = current_user.answers.build(body: params[:answer][:body], question_id: @question.id )
    p params
    if @answer.save
      redirect_to question_path(@question)
    else
      flash[:errors] =  @answer.errors.full_messages
      redirect_to question_path(@question)
    end
  end
end
