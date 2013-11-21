require 'spec_helper'

describe "Vote Creation" do
  it "responds with a json object when a vote is cast" do
    gif = Gif.create(:title => 'title', :link => 'link')
    post gif_votes_path gif.id
    expect(JSON.parse(response.body)["voteCount"]).to be(1)
  end

end
