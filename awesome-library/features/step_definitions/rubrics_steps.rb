Given /^the existence of some rubrics$/ do
  @rubrics = ["Sciences", "History", "Sociology"]
  @rubrics.each { |r| Rubric.create(name:  r, description: "This rubric gathers books about #{r}") }
end

Then /^I should see them on the homepage$/ do
  visit '/'
  @rubrics.each {|r|  page.should have_text r}
end

Given /^an existing rubric$/ do
  @rubric = Rubric.create(name: 'Literacy', description: 'This rubric gathers books about literacy')
end


Given /^some books belonging to a rubric$/ do
  step "an existing rubric"
  @books_hash = {'la maison hantée'=>'Alberto Savinio', 'Faidherbe'=> 'Alain Coursier'}
  @books_hash.each {|title, author| @rubric.books.create(title: title, author: author)}
end

Then /^Anyone should all infos about this rubric on its page$/ do
  visit rubric_path(@rubric)
  page.should have_text @rubric.name
  page.should have_text @rubric.description
end

Then /^Anyone should see these books$/ do
  @books_hash.each do |title, author|
    [title, author].each { |info| page.should have_text info }
  end
end

When /^I change the rubric description$/ do
  visit edit_rubric_path @rubric
  @old_description =  @rubric.description
  @new_description =  'Wow!! Awesome book of literacy'
  fill_in 'rubric_description', with: @new_description
  click_button 'Save'
end

Then /^description must be updated$/ do
  visit rubric_path @rubric
  page.should have_text @new_description
  page.should_not have_text @old_description
end

