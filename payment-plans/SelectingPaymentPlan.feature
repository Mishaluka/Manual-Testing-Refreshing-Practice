@sep14

Feature: Selecting a payment plan



    As a customer, I want to be able to Choose a payment plan from the available options
    so that I can choose the one that best suits my needs.




    ### Acceptance Criteria
    # 1. When usr is navigated to payment plan page for the first, by default no payment is selcted and the next button is disabled
    # 2. When the user selects any payment plan (Accordion) that option should be highlighted to indicate selection.
    # 3. Upon selecting any pricing option, the 'Next' button should become active (indicating the user can proceed).
    # 4. Users should be able to change their plan selections at any time before finalizing their choice.


    Background:
        Given user is on the Payment plan step 2 page
    @sep14-01
    Scenario: Default state of the payment plan page
        Then no payment plan should be selected
        And the Next button should be disabled

    @sep14-02
    Scenario: User selects a payment plan
        When user selects a payment plan
        Then the selected payment plan should be highlighted
        And the Next button should be enabled

    @sep14-03
    Scenario: User changes the selected payment plan
        Given user has selected a payment plan
        When user selects a different payment plan
        Then the newly selected payment plan should be highlighted
        And the previously selected payment plan should no longer be highlighted
        And the Next button should be enabled