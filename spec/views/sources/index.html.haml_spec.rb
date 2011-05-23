require 'spec_helper'

describe "sources/index.html.haml" do
  before(:each) do
    assign(:sources, [
      stub_model(Source,
        :title => "Title",
        :description => "MyText",
        :language => "Language",
        :code => "MyText"
      ),
      stub_model(Source,
        :title => "Title",
        :description => "MyText",
        :language => "Language",
        :code => "MyText"
      )
    ])
  end

  it "renders a list of sources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
