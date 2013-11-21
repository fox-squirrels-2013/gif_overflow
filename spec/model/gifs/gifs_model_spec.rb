  require 'spec_helper'

  describe Gif do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:link) }
    it { should have_many(:gifcomments) }
  end