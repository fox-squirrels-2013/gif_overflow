require "spec_helper"

describe "Gifcomment" do
  
  it "should not create without a link" do
    p "-"*50
    p Gif.create()
    expect(Gif.count).to eq(0)
    p "-"*50
  end

end