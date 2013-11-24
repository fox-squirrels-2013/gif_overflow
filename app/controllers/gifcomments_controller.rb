class GifcommentsController < ApplicationController

  def create
    @gifcomment = Gifcomment.create(gif_id: params[:gif_id], link: params[:gifcomment][:link])
    @gifcomments = Gifcomment.all

    render json: { gifcomment_add: render_to_string(partial: "postgifcomments", :locals => {:gifcomments => @gifcomments}) }
  end

end
