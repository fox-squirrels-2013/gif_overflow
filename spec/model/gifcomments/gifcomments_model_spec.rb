require "spec_helper"

describe "Gifcomment" do
  
  it "should not create without a link" do
    p Gifcomment.create()
    expect(Gif.count).to eq(0)
  end

end