class VotesController < ApplicationController
  
  def create
    
    vote = current_user.votes.build(params[:vote])
    vote.votable = 

    if vote.save
      #redirect_to 
    else
      flash[:errors] =  vote.errors.full_messages
      #redirect_to
    end
  end
end
