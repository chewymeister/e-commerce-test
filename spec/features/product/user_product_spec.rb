require 'spec_helper'

describe "users product page" do
  let!(:product) { FactoryGirl.create(:product) }

  context "User visits the home page" do
    it "name should be visible to the user on the home page" do
      visit root_path

      expect(page).to have_content "Product 1"
      expect(page).to have_link "Product 1"
    end
  end

end