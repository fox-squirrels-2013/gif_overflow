require "spec_helper"

describe Gifcomment do
  
  it { should belong_to(:gif) }
  it { should validate_presence_of(:link) }

end