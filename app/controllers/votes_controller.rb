class VotesController < ApplicationController

  def create
    vote = Vote.create(gif_id: params[:gif_id], user_id: session[:current_user_id])
    gif = Gif.find(params[:gif_id])

    render json: { voteCount: gif.votes.count }
  end

  def destroy
  end

end
