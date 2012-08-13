require 'spec_helper'

describe "surfboards/edit" do
  before(:each) do
    @surfboard = assign(:surfboard, stub_model(Surfboard,
      :name => "MyString"
    ))
  end

  it "renders the edit surfboard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => surfboards_path(@surfboard), :method => "post" do
      assert_select "input#surfboard_name", :name => "surfboard[name]"
    end
  end
end
