require 'spec_helper'

describe Product do
  let!(:admin) { FactoryGirl.create(:admin) }
  before { sign_in_admin }
  context "When the admin is signed in" do
    it "they land on the admin root page" do
      expect(current_path).to eq admin_root_path
    end

    it "they can create a new product" do
      visit new_product_path

      fill_in 'Name', with: 'Product 1'
      fill_in 'Price', with: '1.55'
      fill_in 'Description', with: 'Product 1 is great'
      fill_in 'Availability date', with: '01/12/2013'
      choose 'Active status'
      choose 'Availability date'
      click_button 'Create product'

      expect(page).to have_content 'Your product has been created'
      expect(current_path).to eq admin_root_path
    end
  end
end 

def sign_in_admin
  visit new_admin_user_session_path

  fill_in 'admin_user_email', with: 'admin@test.com'
  fill_in 'admin_user_password', with: 'password'
  click_button 'Login'
end