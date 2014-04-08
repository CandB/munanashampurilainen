require 'spec_helper'

describe "inproceedings/new" do
  before(:each) do
    assign(:inproceedings, stub_model(Inproceedings,
      :author => "MyString",
      :title => "MyString",
      :booktitle => "MyString",
      :year => "MyString"
    ).as_new_record)
  end

  it "renders new inproceedings form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inproceedings_index_path, "post" do
      assert_select "input#inproceedings_author[name=?]", "inproceedings[author]"
      assert_select "input#inproceedings_title[name=?]", "inproceedings[title]"
      assert_select "input#inproceedings_booktitle[name=?]", "inproceedings[booktitle]"
      assert_select "input#inproceedings_year[name=?]", "inproceedings[year]"
    end
  end
end
