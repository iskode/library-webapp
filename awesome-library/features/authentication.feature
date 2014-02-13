Feature: Sign up
  As a person who likes reading
  In order to get Awesome library services
  I want to create a user account.
  #a subscriber has a name, profession, email, password

  Scenario: Successful sign up
    When a user fills the sign up form correctly
    Then he should see a confirmation message

  Scenario: Sign up with missing required or malformed data
    When a visitor tries to sign up without its name
    Then he should fail
    When he tries to sign up with a malformed email
    Then he should fail

  Scenario: Sign up with an existing name
    Given a registered user
    When a visitor tries to sign up with the same name
    Then he should fail

  Scenario: Successful login
    Given a registered user
    When he logs in
    Then he should logged in

  Scenario: Unsuccessful login
    Given a registered user
    When he tries to log with bad credentials
    Then he should not be logged in

 
