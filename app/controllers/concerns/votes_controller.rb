class VotersController < ApplicationController
  def index
    @vote = Vote.all
  end

  def new
    @vote = Vote.new
  end

  def create
    @answer = Answer.find(params[:answer_id])
    @vote = @answer.votes.create(votes_param)
  end

  private
  def question_params
    params.require(:vote).permit(:value)
  end
end
