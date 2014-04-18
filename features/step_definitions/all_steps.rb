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

Then(/^the following article reference should exist:$/) do |table|
  latest = Article.last
  table.rows_hash.each do |field, value|
    latest[field].to_s.should == value
  end
end

Then (/^the following article reference shouldn't exist:$/) do |table|
  Article.find_by_title("Fdsa").should == nil
end

Then /^I should get an error$/ do
  page.should have_content('error')
end

