require 'spec_helper'

describe "books/index" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :author => "Author",
        :editor => "Editor",
        :title => "Title",
        :publisher => "Publisher",
        :year => "Year"
      ),
      stub_model(Book,
        :author => "Author",
        :editor => "Editor",
        :title => "Title",
        :publisher => "Publisher",
        :year => "Year"
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Editor".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
