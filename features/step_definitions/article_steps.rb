Then(/^I should see the articles table$/) do |expected_table|
  expected_table.diff!(tableish("#articles tr", "td"))
end