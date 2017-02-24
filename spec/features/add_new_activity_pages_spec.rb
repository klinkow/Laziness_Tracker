require 'rails_helper'

describe 'adding a new activity' do
  it "allows a user to add a new activity", js: true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit new_user_session_path
    fill_in "Email", :with => "person@person.com"
    fill_in "Password", :with => "password"
    click_on "Log in"
    click_on 'View all activities'
    save_and_open_screenshot
    click_on 'New Activity'
    fill_in 'Name', :with => 'eat hot dog'
    fill_in 'Calories', :with => 500
    click_on 'Create Activity'
    expect(page).to have_content "eat hot dog"
  end
end
