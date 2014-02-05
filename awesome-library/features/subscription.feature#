Feature: Subscription
  As a person who likes reading
  In order to borrow books
  I want to be among Awesome library subscribers.
  #a subscriber has a name, profession, email, password

  Scenario: Successful subscription
    When a user fills the subscription form correctly
    Then he should see a confirmation message

  Scenario: Subscription uncompleted
    When a user tries to subscribe without its name
    Then he should see a name error message

  Scenario: Incorrect subscription infos
    When a user tries to subscribe with malformed email, short password
    Then he should see email and password error messages

  Scenario: Successful login
    Given the user "ismael" has subscribed
    When he logs in
    Then he should see "Welcome ismael"

 
