require 'spec_helper'

describe "user's product page" do
  let!(:product) { FactoryGirl.create(:product) }
  before { visit root_path }

  context "When the user visits the home page" do
    let!(:hidden_product) { FactoryGirl.create(:hidden_product) }

    it "link to product should be visible to the user on the home page" do
      expect(page).to have_link "Product 1"
    end

    it "the link should redirect the user to the show page" do
      click_link "Product 1"

      expect(current_path).to eq product_path(product)
    end
  end


  context "When the user visits the product page" do
    before { click_link 'Product 1' }
    it "should display the name of the product" do
      expect(page).to have_css '.name', text: 'Product 1'
    end

    it "should display the price of the product" do
      expect(page).to have_css '.price', text: '£1.55'
    end

    it "should display the description of the product" do
      expect(page).to have_css '.description', text: 'Product 1 is great'
    end
  end
end