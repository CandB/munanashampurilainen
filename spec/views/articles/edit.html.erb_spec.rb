require 'spec_helper'

describe "articles/edit" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :author => "MyString",
      :title => "MyString",
      :journal => "MyString",
      :year => "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", article_path(@article), "post" do
      assert_select "input#article_author[name=?]", "article[author]"
      assert_select "input#article_title[name=?]", "article[title]"
      assert_select "input#article_journal[name=?]", "article[journal]"
      assert_select "input#article_year[name=?]", "article[year]"
    end
  end
end
