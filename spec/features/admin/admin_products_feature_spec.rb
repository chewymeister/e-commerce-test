require 'spec_helper'

describe Product do
  let!(:admin) { FactoryGirl.create(:admin) }
  before { sign_in_admin }
  context "When the admin is signed in" do
    it "they land on the admin page" do
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