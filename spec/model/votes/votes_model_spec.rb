require 'spec_helper'

describe Vote do
  it {should belong_to(:gif)}
  it {should validate_presence_of(:gif_id)}
end