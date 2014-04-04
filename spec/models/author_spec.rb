require 'spec_helper'

describe Author do
  it "has the names set right" do
  	auth = Author.new first_name:"Matti", last_name:"Meikalainen"
	auth.first_name.should == "Matti"
	auth.last_name.should == "Meikalainen"
  end

  it "has id set righr" do
  	auth = Author.new first_name:"Matti", last_name:"Meikalainen"
  	auth.id.should == 1
  end
  
end

