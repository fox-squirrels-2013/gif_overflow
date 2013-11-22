class GifcommentsController < ApplicationController
  def index
  end

  def create
    @gifcomment = Gifcomment.create(gif_id: params[:gif_id], link: params[:gifcomment][:link])
    render json: @gifcomment

  end

  def show
  end

end
