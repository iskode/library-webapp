Feature: Book Rubrics
  As a librarian
  In order to make a high view of my library
  I want to have a rubric for a specific group of books


  Scenario: A rubric page with existing rubric
    Given some books belonging to a rubric
    Then Anyone should all infos about this rubric on its page
    And Anyone should see these books

  Scenario: Edit a rubric
    Given an existing rubric
    When I change its description
    Then I should see the new description

# Scenario:
#



