  require 'spec_helper'

  describe "Upvoting" do
    it "increases the Vote Count by one" do
      gif_to_upvote = Gif.create(title: "Hello", link: "kitty")
      gif_to_upvote.upvote
      expect(gif_to_upvote.vote_count).to eq(1)
    end
  end
