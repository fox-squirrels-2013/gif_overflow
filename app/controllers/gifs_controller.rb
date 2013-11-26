class GifsController < ApplicationController

  def index
    @gifs = Gif.by_vote_count_and_create_at
    @gif = Gif.new
  end

  def create
    gif = Gif.create(params[:gif])
    @gifs = Gif.all
    render text: render_to_string(partial: "postgifs", :locals => {:gifs => @gifs})
  end

  def show
    @gif = Gif.find(params[:id])
    @gifcomment = Gifcomment.new
    @comments = @gif.gifcomments
  end
end

