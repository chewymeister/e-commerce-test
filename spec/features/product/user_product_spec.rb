require 'spec_helper'

describe Product do
  let(:product) { FactoryGirl.create(:product) }

  subject { item }

  it { should respond_to(:name) }
  it { should respond_to(:price) }
  it { should respond_to(:description) }
  it { should respond_to(:availability_date) }
  it { should respond_to(:active_status) }
  # it { should respond_to(:image) }
  # it { should respond_to(:category) }

end