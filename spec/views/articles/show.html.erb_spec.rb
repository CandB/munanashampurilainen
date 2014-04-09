require 'spec_helper'

describe "articles/show" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :author => "Author",
      :title => "Title",
      :journal => "Journal",
      :year => "Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
    rendered.should match(/Title/)
    rendered.should match(/Journal/)
    rendered.should match(/Year/)
  end
end
