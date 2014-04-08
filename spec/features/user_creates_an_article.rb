require 'spec_helper'

feature 'user creates a new article' do
  scenario 'successfuly creates a new article' do
    visit root path
    click_link "New Article"
    fill_in "Name", with: "New Flesh Font!"
    fill_in "Link", with: "http://www.wired.com/2014/04/a-surreal-font-made-from-cgi-skin-and-candle-wax/#slide-id-656721"
    fill_in "user_id", with: 1
    end
end
