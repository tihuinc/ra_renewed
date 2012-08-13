require 'spec_helper'

describe "surfboards/show" do
  before(:each) do
    @surfboard = assign(:surfboard, stub_model(Surfboard,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
