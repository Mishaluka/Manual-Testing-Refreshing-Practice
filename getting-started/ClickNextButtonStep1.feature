@sep19
Feature: Click on the next button on step 1


    As a customer, I should be able to click on the next button on step 1 when I give valid information.

    ### Acceptance Criteria
    #    1. The next button should take customers to step two when given valid information.
    #    a. Test by providing all fields
    #    b. Test by providing only the required fields

    # To do the same scenerio multipale times with diffrent files we use background scenarios. So moastly precondition go there

    Background:
        Given users are on the payment plan step

    @sep19-1
    # compare your Scenario name with the Criterias(we have it on top)
    Scenario: Clicking next button after providing all the personal details will take the user to paymant plan step
        # Sceneario steps:
        # Given users are on the payment plan step   - been moved to background
        When user enters the first name
        And user enters the last name
        And user enters the email address
        And user enters the phone number
        And user selects How did you hear about us
        And user clicks on the next button on step 1 aplication page
        Then user should be taken to the payment plan step 2 page
        And the Start Application stepper circle color should be Green
        And The Payment Plan stepper circle color should be Blue
    @sep19-2
    Scenario: Clicking next button after providing only required fields will take the user to paymant plan step
        # Given users are on the payment plan step    - been moved to background
        When user enters the first name
        And user enters the last name
        And user enters the email address
        And user enters the phone number
        And user clicks on the next button
        And user clicks on the next button on step 1 aplication page
        Then user should be taken to the payment plan step 2 page
        And the Start Application stepper circle color should be Green
        And The Payment Plan stepper circle color should be Blue
