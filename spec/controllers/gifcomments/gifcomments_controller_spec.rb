# move this under controllers
require "spec_helper"

describe GifcommentsController  do

  describe '#create' do
    before(:each) do
      # try factory girl
      Gif.create(title: 'Hello', link: 'Goodbye')
      post :create, gif_id: 1, gifcomment: {link: 'Goodbye'}
    end
    it { should respond_with(:redirect) }
    it { should route(:post, 'gifs/1/gifcomments').to(:action => :create, :gif_id => 1)}
  end

  describe 'Routes' do

  end

end
