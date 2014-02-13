
When /^a user fills the sign up form correctly$/ do
  fill_correctly_signup_form
  click_button 'Save'
end

Then /^he should see a confirmation message$/ do
  page.should have_css '.alert.alert-notice', :text=>'Welcome! You have signed up successfully.'
end

When /^a visitor tries to sign up without its (.+)$/ do |field|
  fill_correctly_signup_form
  fill_in 'user_'+ field, :with => ''
  click_button 'Save'
end
Then /^he should fail$/ do
  page.should have_selector '#error_explanation'
end

When /^he tries to sign up with a malformed email$/ do
  fill_correctly_signup_form
  fill_in 'user_email', :with => 'bad_email'
  click_button 'Save'
end

Given /^a registered user$/ do
  user_hash = {'name'=> 'ismael', 'email'=> 'ismael@soft-engineer.net', 'password'=> 'valid_pass'}
  User.create(user_hash)
end

When /^a visitor tries to sign up with the same name$/ do
  step('a user fills the sign up form correctly')
end

def fill_correctly_signup_form
  visit new_user_registration_path
  user_hash = {'name'=> 'ismael', 'email'=> 'ismael@soft-engineer.net', 'password'=> 'valid_pass'}
  user_hash.each { |field, value| fill_in 'user_'+ field, with: value }
  fill_in 'user_password_confirmation', :with => user_hash['password']
end

When /^he logs in$/ do
  log_in 'ismael@soft-engineer.net', 'valid_pass'
end

Then /^he should logged in$/ do
  page.should have_css '.alert.alert-notice'
end

When /^he tries to log with bad credentials$/ do
  log_in 'email@mistaken.net', 'valid_pass'
end

Then /^he should not be logged in$/ do
  page.should have_css '.alert.alert-alert'
end

def log_in(email, password)
  visit new_user_session_path
  fill_in 'user_email', with: email
  fill_in 'user_password', with: password
  click_button 'Sign in'
end
