class GifcommentsController < ApplicationController
  def index
  end

  def create
    @gifcomment = Gifcomment.create(gif_id: params[:gif_id], link: params[:gifcomment][:link])
    redirect_to gif_path(params[:gif_id])
  end

  def show
  end

end
