class GifsController < ApplicationController

  def index
    @gifs = Gif.all
    @gif = Gif.new
  end

  def create
    @gif = Gif.create(params[:gif])
    redirect_to gifs_path
  end

  def show
    p @gif = Gif.find(params[:id])
    @gifcomment = Gifcomment.new
    @gifshow = Gifcomment.where("gif_id = #{@gif.id}")
  end

  def update
  end

end
