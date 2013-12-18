require 'spec_helper'

describe Basket do
  context "when user is not signed in" do
    it "the number of items in a basket goes up by one when add basket is clicked" do
      product = FactoryGirl.create(:product)
      visit root_path

      within('.product') { click_button 'Add product to basket' }
      expect(page).to have_css '.item_count', text: '1 item'
    end
  end
end