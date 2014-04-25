Given /^I am on the (.*) page$/ do |page|
  visit '/' + page
end

Given /^I navigate to (.*)$/ do |link|
  click_link(link, :match => :first)
end

When /^I fill in (.*) as (.*)$/ do |stuff, field|
  fill_in(field, :with => stuff)
end

When /^I press (.*)$/ do |button|
  click_on button
end

When /^I confirm$/ do
  page.evaluate_script('window.confirm = function() { return true; }')
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

Then /^the following inncollection reference should exist:$/ do |table|
  latest = Incollection.last
  table.rows_hash.each do |field, value|
    latest[field].to_s.should == value
  end
end

Then(/^the given article reference shouldn't exist$/) do
  Article.find_by_title("Fdsa").should == nil
end

Then(/^the given book reference shouldn't exist$/) do
  Book.find_by_title("Fdsa").should == nil
end

Then(/^the given inproceedings reference shouldn't exist$/) do
  Inproceedings.find_by_title("Fdsa").should == nil
end

Then(/^the given incollection reference shouldn't exist$/) do
  Incollection.find_by_title("Fdsa").should == nil
end

Then /^I should get an error$/ do
  page.should have_content('error')
end
