require 'spec_helper'

describe "incollections/edit" do
  before(:each) do
    @incollection = assign(:incollection, stub_model(Incollection,
      :author => "MyString",
      :title => "MyString",
      :year => 1,
      :booktitle => "MyString",
      :publisher => "MyString"
    ))
  end

  it "renders the edit incollection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", incollection_path(@incollection), "post" do
      assert_select "input#incollection_author[name=?]", "incollection[author]"
      assert_select "input#incollection_title[name=?]", "incollection[title]"
      assert_select "input#incollection_year[name=?]", "incollection[year]"
      assert_select "input#incollection_booktitle[name=?]", "incollection[booktitle]"
      assert_select "input#incollection_publisher[name=?]", "incollection[publisher]"
    end
  end
end
