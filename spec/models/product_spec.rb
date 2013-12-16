require 'spec_helper'

describe Product do

  it { should respond_to(:name) }
  it { should respond_to(:price) }
  it { should respond_to(:description) }
  it { should respond_to(:availability_date) }
  it { should respond_to(:active_status) }

end
