class AnswersController < ApplicationController
  def create
    p params
    @question = Question.find(params[:question_id])
    @answer = current_user.answers.build(body: params[:answer][:body], question_id: params[:question_id] )
    respond_to do |format|
      if @answer.save
        format.json { render :json => @answer }
        format.html { redirect_to question_path(@question) }
      else
        flash[:errors] =  @answer.errors.full_messages
        redirect_to question_path(@question)
      end
    end
  end
end
