require "spec_helper"

describe GifsController, :type => :controller do
 
  describe '#index' do
    before(:each) do
      Gif.create(title: 'Hello', link: 'Goodbye')
      get :index
    end
    it { should respond_with(:success) }
    it { should render_template(:index) }
  end

  describe '#show' do
    before(:each) do
      @test = Gif.create(title: 'Hello', link: 'Goodbye')
      get :show, :id => @test.id
    end
    it { should respond_with(:success) }
    it { should render_template(:show) }
  end

  describe '#create' do
    before(:each) do
      post :create, title: "Hello", link: "Test"
    end
    it { should respond_with(302) }
  end

  describe 'Routes' do
    it { should route(:get, '/gifs/1').to(:action => :show, :id => 1)}
    it { should route(:get, '/gifs').to('/') }
  end

end