Feature: Add ASU directory panel
  Background:
    Given I am logged in as a user with the "administrator" role

  @private_files @javascript @api @panopoly_magic @drushTest
  Scenario: Add ASU directory panel
    Given I am at "/node/add"
    And I click "Content Page"
    And I fill in "Title" with "Test page for directory panel"
    And I fill in "path[alias]" with "test-directory"
    When I type "testing in body" in the "edit-body-und-0-value" WYSIWYG editor
    And I press the "Publish" button
    And I click "Customize this page"
    And I click "Add new pane"
    And I click "Add ASU Directory Panel"
    And I press the "Browse" button
    And I click on the property "dept_nid" from the element "li" with value "1359"
    And I press the "Submit" button
    And I press the "Add" button
    And I press the "Save as custom" button
    And I click on the text "View" in the "a" tag
    And I click on the text "ALL" in the "li" tag
    Then I should not see "No results found."