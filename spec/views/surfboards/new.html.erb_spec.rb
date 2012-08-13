require 'spec_helper'

describe "surfboards/new" do
  before(:each) do
    assign(:surfboard, stub_model(Surfboard,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new surfboard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => surfboards_path, :method => "post" do
      assert_select "input#surfboard_name", :name => "surfboard[name]"
    end
  end
end
