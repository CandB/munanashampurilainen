Given /^I am on the (.*) page$/ do |page|
  visit '/' + page
end

Given /^I navigate to (.*)$/ do |link|
  click_link link
end

When /^I fill in (.*) as (.*)$/ do |stuff, field|
  fill_in(field, :with => stuff)
end

When /^I press (.*)$/ do |button|
  click_on button
end

Then /^the following inproceedings reference should exist:$/ do |table|
  latest = InProceeding.last
  table.rows_hash.each do |field, value|
    latest[field].to_s.should == value
  end
end