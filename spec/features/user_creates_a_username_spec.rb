require 'spec_helper'

feature "user creates a username" do
  scenario "successfully creates project" do
    visit root_path
    click_link "New User"
    fill_in "Name", with: "Foo"
    click_button "Create User"
    page.should have_content "User Foo created."
  end
end
