require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :author => "Author",
      :editor => "Editor",
      :title => "Title",
      :publisher => "Publisher",
      :year => "Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
    rendered.should match(/Editor/)
    rendered.should match(/Title/)
    rendered.should match(/Publisher/)
    rendered.should match(/Year/)
  end
end
