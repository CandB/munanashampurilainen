require 'spec_helper'

describe "inproceedings/show" do
  before(:each) do
    @inproceedings = assign(:inproceedings, stub_model(Inproceedings,
      :author => "Author",
      :title => "Title",
      :booktitle => "Booktitle",
      :year => "Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
    rendered.should match(/Title/)
    rendered.should match(/Booktitle/)
    rendered.should match(/Year/)
  end
end
