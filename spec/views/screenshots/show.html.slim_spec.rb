require 'spec_helper'

describe "screenshots/show" do
  before(:each) do
    @screenshot = assign(:screenshot, stub_model(Screenshot))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
