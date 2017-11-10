class VotesController < ApplicationController
  def index
    @vote = Vote.all
  end

  def new
    @vote = Vote.new
  end

  def create
    @answer = Answer.find(params[:answer_id])
    @vote = @answer.question.votes.find_by(user_id: current_user.id)
    if @vote
      @vote.destroy
      @newvote = @answer.votes.find_by(answer_id: params[:answer_id], user_id:current_user.id)
      res = @answer.votes.create(value: 1, user_id: current_user.id)
    else
      res = @answer.votes.create(value: 1, user_id: current_user.id)
    end
    if request.xhr?
      render json: {votes: @answer.votes.count}
    end
    # @answer = Answer.find(params[:answer_id])
    # @vote = @answer.votes.create(votes_param)
  end

end
