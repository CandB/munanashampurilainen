require 'spec_helper'

describe "incollections/show" do
  before(:each) do
    @incollection = assign(:incollection, stub_model(Incollection,
      :author => "Author",
      :title => "Title",
      :year => 1,
      :booktitle => "Booktitle",
      :publisher => "Publisher"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/Booktitle/)
    rendered.should match(/Publisher/)
  end
end
