require 'spec_helper'

describe "articles/new" do
  before(:each) do
    assign(:article, stub_model(Article,
      :author => "MyString",
      :title => "MyString",
      :journal => "MyString",
      :year => "MyString"
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", articles_path, "post" do
      assert_select "input#article_author[name=?]", "article[author]"
      assert_select "input#article_title[name=?]", "article[title]"
      assert_select "input#article_journal[name=?]", "article[journal]"
      assert_select "input#article_year[name=?]", "article[year]"
    end
  end
end
