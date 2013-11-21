require "spec_helper"

describe UsersController, :type => :controller do

  describe '#index' do
    before(:each) do
      get :index
    end
    it {should respond_with(:success)}
  end

  describe '#create' do
    before(:each) do
      post :create, username: "Tester", email: "Tester@test.com", password_digest: "password"
    end
    it { should respond_with(:redirect) }
  end

  describe '#show' do
    before(:each) do
      @user = User.create(username: "Tester", email: "Tester@test.com", password_digest: "password")
      get :show, :id => @user.id
    end
      it { should respond_with(:success) }
    end


end
