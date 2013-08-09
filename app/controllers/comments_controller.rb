class CommentsController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    comment = current_user.comments.build(params[:comment])
    comment.commentable = question

    if comment.save
      redirect_to question
    else
      flash[:errors] =  comment.errors.full_messages
      redirect_to question
    end
  end
end
