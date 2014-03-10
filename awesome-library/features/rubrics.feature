
Feature: Rubrics

  As a librarian
  In order to make a high view of my library
  I want to have a well-managed rubric for a specific group of books


  Scenario: awesome library homepage
    Given the existence of some rubrics
    Then I should see them on the homepage

  Scenario: Rubric edition
    Given an existing rubric
    When I change the rubric description
    Then description must be updated

  Scenario: Librarians can edit rubric
    Given existing rubric and a logged in librarian
    When he changes the rubric description
    Then he should a successful message

  Scenario: User or visitor cannot edit rubric
    Given existing rubric and a logged in user
    Then he should not see the rubric edition button
    But If he changed the rubric description
    Then he should see an error message



