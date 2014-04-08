require 'spec_helper'

describe "inproceedings/index" do
  before(:each) do
    assign(:inproceedings, [
      stub_model(Inproceedings,
        :author => "Author",
        :title => "Title",
        :booktitle => "Booktitle",
        :year => "Year"
      ),
      stub_model(Inproceedings,
        :author => "Author",
        :title => "Title",
        :booktitle => "Booktitle",
        :year => "Year"
      )
    ])
  end

  it "renders a list of inproceedings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Booktitle".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
