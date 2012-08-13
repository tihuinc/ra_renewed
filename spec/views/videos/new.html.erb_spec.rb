require 'spec_helper'

describe "videos/new" do
  before(:each) do
    assign(:video, stub_model(Video,
      :name => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => videos_path, :method => "post" do
      assert_select "input#video_name", :name => "video[name]"
      assert_select "input#video_url", :name => "video[url]"
    end
  end
end
