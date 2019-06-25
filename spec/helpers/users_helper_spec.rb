require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
# RSpec.describe UsersHelper, type: :helper do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

def signup
  visit "/"
  fill_in "Name", with: "Amoeba Boyz"
  fill_in "Email", with: "amoeba_boyz@amoeba.gov"
  fill_in "Password", with: "1234567"
  fill_in "Password confirmation", with: "1234567"
  click_button "Submit"
end
