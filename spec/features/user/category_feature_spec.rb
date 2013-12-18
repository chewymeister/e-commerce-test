require 'spec_helper'

describe Category do
  let!(:category) { 3.times { FactoryGirl.create(:parent_category) } }
  before { visit root_path }

  context "in the top menu bar" do
    it "the user should see all the parent categories displayed" do
      list_of_parent_categories = ['Parent 1', 'Parent 2', 'Parent 3']

      list_of_parent_categories.each { |name| expect(page).to have_content name }
    end
  end
end