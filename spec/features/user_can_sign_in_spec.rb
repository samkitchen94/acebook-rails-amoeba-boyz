require 'rails_helper'

RSpec.feature "Sign in", type: :feature do
  scenario "User can sign in" do
    signup
    visit "/"
    click_button "Sign in"
    fill_in "Email", with: "amoeba_boyz@amoeba.gov"
    fill_in "Password", with: "123456"
    click_button "Login"
    expect(page).to have_content("Hello, Amoeba Boyz!")
  end
end