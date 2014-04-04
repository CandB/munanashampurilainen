require 'spec_helper'

describe InProceeding do
  it "when created the right data will be saved" do
	ip = InProceeding.new title:"Otsikko", booktitle:"Kirjaotsikko", year:2014
	ip.title.should == "Otsikko"
	ip.booktitle.should == "Kirjaotsikko"
	ip.year.should == 2014
  end

  it "gets correct author" do
  	ip = InProceeding.new title:"Otsikko", booktitle:"Kirjaotsikko", year:2014
  	a = Author.new first_name:"Pekka", last_name:"Akkep"

    ip.authors << a
    expect(ip.authors.first).to eq(a)
  end
end
