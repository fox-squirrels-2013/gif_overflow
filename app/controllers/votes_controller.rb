class VotesController < ApplicationController

  def create
    # you know what I'm about to say, right? you're always happy
    vote = Vote.create(gif_id: params[:gif_id])
    vote.user = current_user
    # you're repeating yourself.
    @gifs = Gif.by_vote_count_and_create_at
    render json: { vote_add: render_to_string(partial: "postgifs", :locals => {:gifs => @gifs}) }
  end

  def destroy
  end
end
