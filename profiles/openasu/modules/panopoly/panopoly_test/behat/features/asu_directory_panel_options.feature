Feature: Add ASU directory panel with options
  Background:
    Given I am logged in as a user with the "administrator" role

  @private_files @javascript @api @panopoly_magic @drushTest
  Scenario: Add ASU directory panel with department tree
    Given I am at "/node/add"
    And I click "Content Page"
    And I fill in "Title" with "Test page for directory panel"
    When I type "testing in body" in the "edit-body-und-0-value" WYSIWYG editor
    And I press the "Publish" button
    And I click "Change layout"
    And I click "Boxton"
    And I press the "Save as Content Page default" button
    And I click "Customize this page"
    And I click "Add new pane"
    And I click "Add ASU Directory Panel"
    And I press the "Browse" button
    And I click on the property "dept_nid" from the element "li" with value "1359"
    And I press the "Submit" button
    And I click on the property "for" from the element "label" with value "edit-field-asu-directory-items-und-0-horizontal-tabs-content-content-tabs-department-show-tree"
    And I press the "Add" button
    And I press the "Save as custom" button
    And I click on the text "View" in the "a" tag
    And I click on the property "id" from the element "div" with value "treediv1"
    Then I should not see "No results found."

  @private_files @javascript @api @panopoly_magic @drushTest
  Scenario: Add ASU directory panel without filters
    Given I am at "/node/add"
    And I click "Content Page"
    And I fill in "Title" with "Test page for directory panel"
    When I type "testing in body" in the "edit-body-und-0-value" WYSIWYG editor
    And I press the "Publish" button
    And I click "Change layout"
    And I click "Boxton"
    And I press the "Save as Content Page default" button
    And I click "Customize this page"
    And I click "Add new pane"
    And I click "Add ASU Directory Panel"
    And I press the "Browse" button
    And I click on the property "dept_nid" from the element "li" with value "1359"
    And I press the "Submit" button
    And I click on the text " Appearance" in the "strong" tag
    And I click "Exposed Filters"
    And I click on the property "for" from the element "label" with value "edit-field-asu-directory-items-und-0-horizontal-tabs-appearance-appearance-tabs-exposed-show-filters"
    And I press the "Add" button
    And I press the "Save as custom" button
    And I click on the text "View" in the "a" tag
    Then I should not see "Sort:"

  @private_files @javascript @api @panopoly_magic @drushTest
  Scenario: Add ASU directory panel without filters
    Given I am at "/node/add"
    And I click "Content Page"
    And I fill in "Title" with "Test page for directory panel"
    When I type "testing in body" in the "edit-body-und-0-value" WYSIWYG editor
    And I press the "Publish" button
    And I click "Change layout"
    And I click "Boxton"
    And I press the "Save as Content Page default" button
    And I click "Customize this page"
    And I click "Add new pane"
    And I click "Add ASU Directory Panel"
    And I press the "Browse" button
    And I click on the property "dept_nid" from the element "li" with value "1359"
    And I press the "Submit" button
    And I click on the text " Appearance" in the "strong" tag
    And I click "Columns"
    And I click on the property "for" from the element "label" with value "edit-field-asu-directory-items-und-0-horizontal-tabs-appearance-appearance-tabs-columns-display-building"
    And I press the "Add" button
    And I press the "Save as custom" button
    And I click on the text "View" in the "a" tag
    Then I should see "USB"