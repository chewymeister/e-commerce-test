require 'spec_helper'

describe Basket do
  let!(:product_1) { FactoryGirl.create(:product) }
  before { visit root_path }

  context "when user is not signed in" do
    context 'and when visiting the site for the first time' do 
      it 'there should be no items in the basket' do
        expect(page).to have_css '.item_count', text: '0 items'
      end
    end

    context "when the basket is clicked" do
      before do
        within('.product') { click_button 'Add to basket' }
        click_link 'View basket'
      end

      it "should display the details of the product added to basket" do
        expect(page).to have_css '.product', text: 'Product 1'
      end

      it "should decrease the number of items in current basket when item is removed" do
        within('.product') { click_link  'Remove from basket' }

        expect(page).to have_css '.item_count', text: '0 items'
      end
    end

    it "the number of items in a basket goes up by one when add to basket is clicked" do
      within('.product') { click_button 'Add to basket' }

      expect(page).to have_css '.item_count', text: '1 item'
    end

  end
end