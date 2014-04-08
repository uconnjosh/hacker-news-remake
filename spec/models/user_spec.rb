require 'spec_helper'

describe User do
  it { should have_many :articles }

  it "has a name" do
    darth = FactoryGirl.build(:user)
    darth.name.should eq "Darth Vader"
  end
end
