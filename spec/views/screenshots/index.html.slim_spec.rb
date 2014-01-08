require 'spec_helper'

describe "screenshots/index" do
  before(:each) do
    assign(:screenshots, [
      stub_model(Screenshot),
      stub_model(Screenshot)
    ])
  end

  it "renders a list of screenshots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
