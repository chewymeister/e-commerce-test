require 'spec_helper'

describe Category do
  let!(:parent_category) { 3.times { FactoryGirl.create(:parent_category) } }
  let!(:child_category) { 3.times { FactoryGirl.create(:child_category) } }
  before { visit root_path }

  context "in the top menu bar" do
    it "the user should see all the parent categories displayed" do
      list_of_parent_categories = ['Parent 1', 'Parent 2', 'Parent 3']

      list_of_parent_categories.each { |name| expect(page).to have_content name }
    end
  end

  context "in the sidebar" do
    it "the user should see a lit of the child categories" do
      list_of_child_categories = ['Child 1', 'Child 2', 'Child 3']

      list_of_child_categories.each { |name_2| expect(page).to have_content name_2 }
    end
  end
end