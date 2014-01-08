require 'spec_helper'

describe "screenshots/edit" do
  before(:each) do
    @screenshot = assign(:screenshot, stub_model(Screenshot))
  end

  it "renders the edit screenshot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screenshot_path(@screenshot), "post" do
    end
  end
end
