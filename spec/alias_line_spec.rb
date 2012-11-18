require 'spec_helper'

describe Realiased::AliasLine do
  it "knows valid" do
    al = AliasLine.new("gs='git status'")
    al.should be_valid
  end

  it "isn't valid for nocorrect" do
    al = AliasLine.new("mysql='nocorrect mysql'")
    al.should_not be_valid
  end

  it "isn't valid for transposed 'ls'" do
    al = AliasLine.new("sl='ls'")
    al.should_not be_valid
  end
end
