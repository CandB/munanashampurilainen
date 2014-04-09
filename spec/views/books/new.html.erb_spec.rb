require 'spec_helper'

describe "books/new" do
  before(:each) do
    assign(:book, stub_model(Book,
      :author => "MyString",
      :editor => "MyString",
      :title => "MyString",
      :publisher => "MyString",
      :year => "MyString"
    ).as_new_record)
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", books_path, "post" do
      assert_select "input#book_author[name=?]", "book[author]"
      assert_select "input#book_editor[name=?]", "book[editor]"
      assert_select "input#book_title[name=?]", "book[title]"
      assert_select "input#book_publisher[name=?]", "book[publisher]"
      assert_select "input#book_year[name=?]", "book[year]"
    end
  end
end
