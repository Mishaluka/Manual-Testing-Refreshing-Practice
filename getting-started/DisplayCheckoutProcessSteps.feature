@sep08

Feature: Display the steps of the checkout process

    As a customer, I should be able to know where I am in the checkout process using the stepper.

    ### Acceptance Criteria
    # 1. The system should display the steps of the checkout process as:
    # "1-Start Application",
    # "2-Payment Plan",
    # "3-Review".

    # 2. The system should highlight "Start Application" in blue.
    # 3. The system should display "Payment Plan" and "Review" in grey.

    Background:
        Given user is on the Start Application step 1 page

    # Sceneario steps:

    @sep08-1
    Scenario: Stepper displays all checkout steps on Step 1 page
        Then the stepper should display "1 Start Application"
        And the stepper should display "2 Payment Plan"
        And the stepper should display "3 Review"

    @sep08-2
    Scenario: Stepper highlights the current step on Step 1 page
        Then the "Start Application" stepper circle color should be Blue
        And the "Payment Plan" stepper circle color should be Gray
        And the "Review" stepper circle color should be Gray





