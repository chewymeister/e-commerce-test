require 'spec_helper'

describe "users product page" do
  let!(:product) { FactoryGirl.create(:product) }

  context "When the User visits the home page" do
    it "link to product should be visible to the user on the home page" do
      visit root_path

      expect(page).to have_link "Product 1"
    end

    it "the link should redirect the user to the show page" do
      visit root_path
      click_link "Product 1"

      expect(current_path).to eq product_path(product)
    end
  end

  after do
    FactoryGirl.reload
  end

end