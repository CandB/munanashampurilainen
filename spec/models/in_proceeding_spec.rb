require 'spec_helper'

describe InProceeding do
  it "when created the right data will be saved" do
	ip = InProceeding.new title:"Otsikko", booktitle:"Kirjaotsikko", year:2014
	ip.title.should == "Otsikko"
	ip.booktitle.should == "Kirjaotsikko"
	ip.year.should == 2014
  end
end
