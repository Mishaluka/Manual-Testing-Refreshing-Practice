@sep26

Feature: Enabling The Pay button

    As a customer, I should be able to click pay button after I agreed to the terms and conditions


    ### Acceptance Criteria
    # 1. The pay button is disabled and terms & conditions checkbox is unchecked by default
    # 2. The pay button will be activated once the user agrees to the terms and conditions

    Background:
        Given user is on the Review step 3 page

    @sep26-01
    Scenario: Pay button is disabled by default
        Then the Terms and Conditions checkbox should be unchecked
        And the Pay button should be disabled

    @sep26-02
    Scenario: Pay button becomes enabled after agreeing to Terms and Conditions
        When user checks the Terms and Conditions checkbox
        Then the Pay button should be enabled

    @sep26-03
    Scenario: Pay button becomes disabled again if Terms and Conditions is unchecked
        Given the Terms and Conditions checkbox is checked
        And the Pay button is enabled
        When user unchecks the Terms and Conditions checkbox
        Then the Pay button should be disabled