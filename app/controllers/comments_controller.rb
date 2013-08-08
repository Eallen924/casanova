class CommentsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @comment = current_user.comments.build(text: params[:comment][:text])
    @comment.commentable = @question

    if @comment.save
      redirect_to question_path(@question)
    else
      flash[:errors] =  @comment.errors.full_messages
      redirect_to question_path(@question)
    end
  end
end
