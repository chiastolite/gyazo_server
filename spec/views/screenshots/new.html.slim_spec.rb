require 'spec_helper'

describe "screenshots/new" do
  before(:each) do
    assign(:screenshot, stub_model(Screenshot).as_new_record)
  end

  it "renders new screenshot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screenshots_path, "post" do
    end
  end
end
