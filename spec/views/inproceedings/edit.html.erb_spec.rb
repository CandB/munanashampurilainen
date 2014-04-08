require 'spec_helper'

describe "inproceedings/edit" do
  before(:each) do
    @inproceedings = assign(:inproceedings, stub_model(Inproceedings,
      :author => "MyString",
      :title => "MyString",
      :booktitle => "MyString",
      :year => "MyString"
    ))
  end

  it "renders the edit inproceedings form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inproceedings_path(@inproceedings), "post" do
      assert_select "input#inproceedings_author[name=?]", "inproceedings[author]"
      assert_select "input#inproceedings_title[name=?]", "inproceedings[title]"
      assert_select "input#inproceedings_booktitle[name=?]", "inproceedings[booktitle]"
      assert_select "input#inproceedings_year[name=?]", "inproceedings[year]"
    end
  end
end
