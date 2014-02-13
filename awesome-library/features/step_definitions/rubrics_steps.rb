Given /^some books belonging to a rubric$/ do
  @rubric = Rubric.create(name: 'Literacy', description: 'This rubric gathers books about literacy')
  @books_hash = {'la maison hantée'=>'Alberto Savinio', 'Faidherbe'=> 'Alain Coursier'}
  @books_hash.each {|title, author| @rubric.books.create(title: title, author: author)}
end

Then /^I should all infos about this rubric on its page$/ do
  visit rubric_path(@rubric)
  page.should have_text @rubric.name
  page.should have_text @rubric.description
end

Then /^I should see these books$/ do
  @books_hash.each do |title, author|
    [title, author].each { |info| page.should have_text info }
  end
end

Given /^the rubric creation form correctly filled$/ do
  visit new_rubric_path
  fill_in 'name', with: 'Technology'
  fill_in 'description', with: ''
  fill_in '', with: ''
  fill_in '', with: ''
end