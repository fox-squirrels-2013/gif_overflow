class VotesController < ApplicationController
  def create
    @vote = Vote.create
    @gif = Gif.find(params[:gif_id])
    @gif.votes << @vote
    redirect_to gifs_path

  end

  def destroy
  end
end