@sep10

Feature: Enter my personal details

    As a customer, I should be able to enter my Personal details.

    ### Acceptance Criteria
    # 1. Default field types and values should be as follows:
    # a. First Name: Text field is present.
    # b. Last Name: Text field is present.
    # c. Email Address: Text field is present and validates for email format.
    # d. Phone: The field allows numbers only.


    Background:
        Given user is on the Start Application step 1 page

    # Sceneario steps:

    @sep10-1
    Scenario: I enter valid personal details
        When I fill in the First Name field with "John"
        And I fill in the Last Name field with "Doe"
        And I fill in the Email Address field with "john.doe@example.com"
        And email address is validated
        And I fill in the Phone field with "1234567890"
        Then All input fields are not highlighted as invalid

    @sep10-2
    Scenario: I enter invalid email address
        When I fill in the Email Address field with wrong email format
        Then Email Address field is highlighted as invalid
        Then the Email Address field should be highlighted as invalid
        And an email validation error message should be displayed

    @sep10-3
    Scenario: I enter non-numeric phone number
        When I fill in the Phone field with non-numeric characters
        Then Phone field is highlighted as invalid
        And a phone number validation message should be displayed

    @sep10-4
    Scenario: Required fields are validated when left empty
        When user clicks on the Next button without entering any personal details
        Then required input fields should be highlighted as invalid
        And validation messages should be displayed for required fields
