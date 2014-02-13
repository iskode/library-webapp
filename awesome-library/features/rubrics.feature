Feature: Book Rubrics
  As a librarian
  In order to make a high view of library
  I want to have a rubric for a specific group of books


  Scenario: A rubric page with existing rubric
    Given some books belonging to a rubric
    Then I should all infos about this rubric on its page
    And I should see these books

  Scenario: Create a rubric
    Given I filled correctly the rubric creation form
    When I press save
    Then I should see a confirmation message

# Scenario:
#



