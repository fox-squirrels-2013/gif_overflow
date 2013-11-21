class GifcommentsController < ApplicationController
  def index
  end

  def create
    @gifcomment = Gifcomment.create(gif_id: params[:gif_id], link: params[:link])
    redirect_to root
  end

  def show
  end

end