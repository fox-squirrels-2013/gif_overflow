  require 'spec_helper'

  describe Gif do

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:link) }
    it { should have_many(:gifcomments) }

    describe "Votes" do

      def new_vote(gifId)
        new_vote = Vote.new
        new_vote.gif_id = gifId
        new_vote.save
      end

      it "should have zero votes on creation" do
        new_gif = Gif.create(title: "Hello", link: "Goodbye")
        expect(new_gif.votes.count).to eq(0)
      end


      it "should increment vote count by one" do
        new_gif = Gif.create(title: "Hello", link: "Goodbye")
        new_vote new_gif.id
        expect(new_gif.votes.count).to eq(1)
      end

      it "3 votes should increment vote count by three" do
        new_gif = Gif.create(title: "Hello", link: "Goodbye")
        3.times { new_vote new_gif.id }
        expect(new_gif.votes.count).to eq(3)
      end

    end
  end