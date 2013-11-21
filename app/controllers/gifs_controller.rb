class GifsController < ApplicationController
  def index
    @gif = Gif.new
  end

  def create
    @gif = Gif.create(params[:gif])
    redirect_to gifs_path
  end

  def show
  end

end