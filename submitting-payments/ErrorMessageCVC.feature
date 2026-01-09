@sep29

Feature: Error message for the invalid CVC number

    As a customer, I want to be informed when the CVC number I enter is incorrect or too short.


    ### Acceptance Criteria

    # 1. The Immediate error message should be thrown if the CVC number is too short. "Your card's security code is incomplete."

    Background:
        Given user is on the Review step 3 page

    @sep29-01
    Scenario: Error message is displayed for an incomplete CVC number
        When user enters an incomplete CVC number
        Then an error message "Your card's security code is incomplete." should be displayed