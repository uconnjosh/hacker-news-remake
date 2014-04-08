require 'spec_helper'

feature "user deletes a user name" do
  scenario "successfully deletes a user name" do
    visit root_path
    click_link "New User"
    fill_in "Name", with: "Foo"
    click_button "Create User"
    click_link "Delete User"
    page.should have_content "User Foo deleted"
  end
end

