Feature: Import iSearch Profiles
  Background:
    Given I am logged in as a user with the "administrator" role

    @private_files @javascript @api @panopoly_magic @drushTest
      Scenario: Import iSearch Profiles
      Given I am at "/admin/content/isearch/configure"
      When I check the box "edit-isearch-display-affiliations"
      And I press the "Browse" button
      And I should see "ASU Polytechnic"
      And I check the box "Include sub-departments?"
      And I press the "Submit" button
      And I press the "Save configuration" button
      And I click "Import iSearch Pofiles"
      And I fill in "edit-isearch-import-limit-value" with "50"
      And I press the "Begin Import" button
      Then I should see the success message "The configuration options have been saved."