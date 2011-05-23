require 'spec_helper'

describe "sources/new.html.haml" do
  before(:each) do
    assign(:source, stub_model(Source,
      :title => "MyString",
      :description => "MyText",
      :language => "MyString",
      :code => "MyText"
    ).as_new_record)
  end

  it "renders new source form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sources_path, :method => "post" do
      assert_select "input#source_title", :name => "source[title]"
      assert_select "textarea#source_description", :name => "source[description]"
      assert_select "input#source_language", :name => "source[language]"
      assert_select "textarea#source_code", :name => "source[code]"
    end
  end
end
