require 'spec_helper'

describe User do

  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:password_digest)}

  it {should_not allow_value("ab@a.c").for(:email)}
  it {should allow_value("louie@gmail.com").for(:email)}

  it {should validate_uniqueness_of(:username)}
  it {should validate_uniqueness_of(:email)}

end
