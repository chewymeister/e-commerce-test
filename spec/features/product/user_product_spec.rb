require 'spec_helper'

describe "users product page" do
  let!(:product) { FactoryGirl.create(:product) }
  before { visit root_path }

  context "When the user visits the home page" do
    it "link to product should be visible to the user on the home page" do
      expect(page).to have_link "Product 1"
    end

    it "the link should redirect the user to the show page" do
      click_link "Product 1"

      expect(current_path).to eq product_path(product)
    end

    it "a product that has been marked as not appearing on the homepage should not be visible" do
      hidden_product = FactoryGirl.create(:hidden_product)
      visit root_path
      # raise page.html

      expect(Product.find(hidden_product)).to be_valid
      expect(page).to_not have_link "Hidden product"
    end
  end

  context "When the user visits the show page" do
    it "the details of the product should be displayed" do
      expect(page).to have_css '.product-name', 'Product 1'
      within(".price") { expect(page).to have_content '£1.55' }
      within(".description") { expect(page).to have_content 'Product 1 is great'}
    end
  end

  after do
    FactoryGirl.reload
  end

end