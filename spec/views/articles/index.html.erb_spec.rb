require 'spec_helper'

describe "articles/index" do
  before(:each) do
    assign(:articles, [
      stub_model(Article,
        :author => "Author",
        :title => "Title",
        :journal => "Journal",
        :year => "Year"
      ),
      stub_model(Article,
        :author => "Author",
        :title => "Title",
        :journal => "Journal",
        :year => "Year"
      )
    ])
  end

  it "renders a list of articles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Journal".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
