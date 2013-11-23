class GifsController < ApplicationController

  def index
    @gifs = _all_gifs
    @gif = Gif.new
  end

  def create
    gif = Gif.create(params[:gif])
    gifs = _all_gifs
    render json: { gif_add: render_to_string(partial: "postgif", :locals => {:gif => gif}) }
    #render_to_string method is a way of rendering a partial inside of a json
  end

  def show
    @gif = Gif.find(params[:id])
    @gifcomment = Gifcomment.new
    @gifshow = Gifcomment.where("gif_id = #{@gif.id}")
  end

  def _all_gifs
    Gif.all.sort_by { |gif| [gif.votes, gif.created_at] }.reverse
  end


end

