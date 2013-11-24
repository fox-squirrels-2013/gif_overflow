class VotesController < ApplicationController

  def create
    vote = Vote.create(gif_id: params[:gif_id], user_id: session[:current_user_id])
    @gifs = _all_gifs
    render json: { vote_add: render_to_string(partial: "postgifs", :locals => {:gifs => @gifs}) }
  end

  def destroy
  end

  def _all_gifs
    Gif.all.sort_by { |gif| [gif.votes.count,  -gif.created_at.to_f] }.reverse
  end

end
