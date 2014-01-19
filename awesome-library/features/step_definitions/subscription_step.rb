When /^a user fills the subscription form correctly$/ do
  visit new_subscriber_registration_path
  fill_in 'Name', :with => 'ismael'
  fill_in 'Profession', :with => 'software engineer'
  fill_in 'Email', :with => 'ismael@soft-engineer.net'
  fill_in 'Password', :with => 'valid_pass'
  fill_in 'Password confirmation', :with => 'valid_pass'
  click_button 'Subscribe'
end
