@sep16

Feature: Click Next button on payment plans page


    As a customer, I should be able to click on the next button on step 2 when I select a plan.


    ### Acceptance Criteria
    # 1. Clicking on any plan should activate the next button
    # 2. When the customer clicks on the next button, the Step 3 page should be displayed.
    # 3. In the stepper, steps one and two should be green, and step 3 should be blue.
    # 4. The payment component should be displayed.
    # 5. A price summary should be displayed.
    # 6. The back button should be displayed.


    Background:
        Given user is on the Payment plan step 2 page

    @sep16-01
    Scenario: Stepper highlights Payment Plan as the current step on Step 2
        Then the "Start Application" stepper circle color should be Green
        And the "Payment Plan" stepper circle color should be Blue
        And the "Review" stepper circle color should be Gray

    @sep16-02
    Scenario: Selecting a payment plan enables the Next button on Step 2
        When user selects a payment plan
        Then the Next button should be enabled

    @sep16-03
    Scenario: User navigates from Step 2 (Payment Plan) to Step 3 (Review)
        When user selects a payment plan
        And user clicks on the Next button
        Then the Review step 3 page should be displayed
        And the "Start Application" stepper circle color should be Green
        And the "Payment Plan" stepper circle color should be Green
        And the "Review" stepper circle color should be Blue
        And the payment component should be displayed
        And the price summary should be displayed
        And the back button should be displayed

    @sep16-04
    Scenario: User navigates back from Step 3 (Review) to Step 2 (Payment Plan)
        When user clicks on the Back button
        Then the Payment Plan step 2 page should be displayed
        And the "Start Application" stepper circle color should be Green
        And the "Payment Plan" stepper circle color should be Blue
        And the "Review" stepper circle color should be Gray