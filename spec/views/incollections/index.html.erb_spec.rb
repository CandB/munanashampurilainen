require 'spec_helper'

describe "incollections/index" do
  before(:each) do
    assign(:incollections, [
      stub_model(Incollection,
        :author => "Author",
        :title => "Title",
        :year => 1,
        :booktitle => "Booktitle",
        :publisher => "Publisher"
      ),
      stub_model(Incollection,
        :author => "Author",
        :title => "Title",
        :year => 1,
        :booktitle => "Booktitle",
        :publisher => "Publisher"
      )
    ])
  end

  it "renders a list of incollections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Booktitle".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
  end
end
