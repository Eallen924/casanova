class QuestionsController < ApplicationController
  
  def create
    question = current_user.questions.build(params[:question])
    if question.save
      redirect_to question
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
    @comment = Comment.new
    @vote = Vote.new
  end

  def upvote
    question = Question.find(params[:id])
    vote = current_user.votes.build(up: true)
    vote.votable = question

    if vote.save
      redirect_to question
    else
      flash[:errors] =  vote.errors.full_messages
      redirect_to question
    end
  end

  def downvote
    question = Question.find(params[:id])
    vote = current_user.votes.build(up: false)
    vote.votable = question

    if vote.save
      redirect_to question
    else
      flash[:errors] =  vote.errors.full_messages
      redirect_to question
    end
  end

end
