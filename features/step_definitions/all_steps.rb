Given /^I am on the (.*) page$/ do |page|
  visit '/' + page
end

Given /^I navigate to (.*)$/ do |link|
  click_link link
end

Given /^the following inproceedings reference exists:$/ do |table|
  new_inproceedings = Inproceedings.new
  table.rows_hash.each do |field, value|
    new_inproceedings[field] = value
  end
  new_inproceedings.save
end

When(/^I generate the bibtex\-file for said reference$/) do
  pending # express the regexp above with the code you wish you had
end

When /^I fill in (.*) as (.*)$/ do |stuff, field|
  fill_in(field, :with => stuff)
end

When /^I press (.*)$/ do |button|
  click_on button
end

Then /^the following inproceedings reference should exist:$/ do |table|
  latest = Inproceedings.last
  table.rows_hash.each do |field, value|
    latest[field].to_s.should == value
  end
end

Then /^the following book reference should exist:$/ do |table|
  latest = Book.last
  table.rows_hash.each do |field, value|
    latest[field].to_s.should == value
  end
end

Then /^I should get an error$/ do
  page.should have_content('error')
end