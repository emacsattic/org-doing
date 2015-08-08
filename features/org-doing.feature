Feature: Opening org-doing file
  Scenario: Insert the header for a non-existent file
    Given I have a non-existent org-doing-file
    When I have opened the org-doing-file
    Then the org-doing-file should start with:
    """
    #+TITLE: doing
    #+STARTUP: overview
    #+TODO: TODO LATER | DONE
    """

  Scenario: Do not insert header for existing file
    Given I have an existing org-doing-file
    When I have opened the org-doing-file
    Then the org-doing-file will not be modified

Feature: Save and bury buffer of org-doing file
  Scenario: Save and bury the buffer after logging
    Given I have an existing org-doing-file
    When I log to the file
    Then the buffer will be saved and buried
