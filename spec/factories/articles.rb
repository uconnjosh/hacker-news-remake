# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article, :class => 'Article' do
    name "Today, IE6 is dead"
    link "http://www.ie6death.com"
  end
end
