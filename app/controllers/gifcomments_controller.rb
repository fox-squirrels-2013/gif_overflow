class GifcommentsController < ApplicationController

  def create
    @gif = Gif.find params[:gif_id]
    @comment = @gif.gifcomments.build params[:gifcomment]
    if @comment.save
      render json: { gifcomment_add: render_to_string(partial: "postgifcomments", :locals => {:gifcomments => Gifcomment.all}) }
    else
      # do something
    end

  end

end
