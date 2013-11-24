class GifsController < ApplicationController

  def index
    @gifs = _all_gifs
    @gif = Gif.new
  end

  def create
    gif = Gif.create(params[:gif])
    @gifs = Gif.all
    render json: { gif_add: render_to_string(partial: "postgifs", :locals => {:gifs => @gifs}) }
  end

  def show
    @gif = Gif.find(params[:id])
    @gifcomment = Gifcomment.new
    @gifshow = Gifcomment.where("gif_id = #{@gif.id}")
  end

  def _all_gifs
    Gif.all.sort_by { |gif| [gif.votes.count,  -gif.created_at.to_f] }.reverse
  end

end

