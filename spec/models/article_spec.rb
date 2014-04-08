require 'spec_helper'

describe Article do
  it { should belong_to :user }

  it "has a name" do
    article = FactoryGirl.create(:article)
    article.name.should eq "Today, IE6 is dead"
  end

  it "has a link" do
    article = FactoryGirl.create(:article)
    article.link.should eq "http://www.ie6death.com"
  end
end
