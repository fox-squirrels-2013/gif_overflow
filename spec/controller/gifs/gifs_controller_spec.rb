  describe "Upvoting" do
    it "increases the Vote Count by one" do
      gif_to_upvote = Gif.create()
      expect(gif_to_upvote.upvote).to change(gif_to_upvote.vote_count).from(0).to(1)
    end
  end
