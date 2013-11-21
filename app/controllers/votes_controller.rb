class VotesController < ApplicationController
  def create
    vote = Vote.create
    gif = Gif.find(params[:gif_id])
    gif.votes << vote

    render json: { voteCount: gif.votes.count }
  end

  def destroy
  end
end