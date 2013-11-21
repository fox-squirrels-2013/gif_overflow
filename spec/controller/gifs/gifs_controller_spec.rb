  describe "Upvoting" do
    it "increases the Vote Count by one" do
      upvote = Gifs.create()
      expect(Gifs.upvote).to change(upvote.vote_count).from(0).to(1)
    end
  end
