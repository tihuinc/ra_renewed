require 'spec_helper'

describe "surfboards/index" do
  before(:each) do
    assign(:surfboards, [
      stub_model(Surfboard,
        :name => "Name"
      ),
      stub_model(Surfboard,
        :name => "Name"
      )
    ])
  end

  it "renders a list of surfboards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
