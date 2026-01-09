@sep23

Feature: Make a payment



    As a customer, I should be able to make payments so I can enroll in the program.



    ### Acceptance Criteria

    # 1. When the user enters valid card information, checks the terms and conditions checkbox, and clicks on the Pay button, then they should be redirected to the confirmation page.
    # 2. In the stepper, steps 1, 2, 3 should be green.
    # 3. The correct program name should be displayed.
    # 4. The correct user email should be displayed.
    # 5. The correct company contact information should be displayed.

    Background:
        Given user is on the Review step 3 page
        And user has selected a payment plan

    @sep23-01
    Scenario: User completes payment successfully
        When user enters valid card information
        And user checks the Terms and Conditions checkbox
        And user clicks on the Pay button
        Then the confirmation page should be displayed
        And the "Start Application" stepper circle color should be Green
        And the "Payment Plan" stepper circle color should be Green
        And the "Review" stepper circle color should be Green
        And the correct program name should be displayed
        And the correct user email should be displayed
        And the company contact information should be displayed
