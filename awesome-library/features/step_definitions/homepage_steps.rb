Given /^the existence of some rubrics$/ do
  @rubrics = ["Sciences", "History", "Sociology"]
  @rubrics.each { |r| Rubric.create(:name => r)}
end

Then /^I should see them on the homepage$/ do
  visit '/'
  @rubrics.each {|r|  page.should have_text r}
end