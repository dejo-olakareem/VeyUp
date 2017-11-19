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
      old_answer_id = @vote.answer.id
      old_answer_vote_count = @vote.answer.votes.count - 1
      @vote.destroy
      @answer.votes.create(value: 1, user_id: current_user.id)
      if request.xhr?
        render json: {votes: @answer.votes.count, old_answer_id: old_answer_id, old_answer_vote_count: old_answer_vote_count}
      end
    else
      @answer.votes.create(value: 1, user_id: current_user.id)
      if request.xhr?
        render json: {votes: @answer.votes.count}
      end
    end

    # @answer = Answer.find(params[:answer_id])
    # @vote = @answer.votes.create(votes_param)
  end

end
