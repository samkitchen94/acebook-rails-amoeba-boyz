require 'rails_helper'

RSpec.feature "Layout", type: :feature do
  scenario "Order posts by descending" do
    signup
    click_link "New post"
    fill_in "Message", with: "Hello, world"
    click_button "Submit"

    click_link "New post"
    fill_in "Message", with: "second line"
    click_button "Submit"

    click_link "New post"
    fill_in "Message", with: "third line"
    click_button "Submit"

    date = Time.now.utc
    
    expect(page).to have_content("third line #{date}

      second line #{date}
      
      Hello, world #{date}")
  end

  # scenario "Can like a post" do
  #   signup
  #   click_link "New post"
  #   fill_in "Message", with: "Hello, world"
  #   click_button "Submit"
    
  #   expect(page).to have_button("That's sick")

  # end
end