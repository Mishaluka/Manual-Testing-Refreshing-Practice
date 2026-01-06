@sep07

Feature: View Product Landing Page

    As a customer, I should be able to see the product landing page.

    ### Acceptance Criteria
    # 1. The system displays the text "Cydeo Secure Checkout".
    # 2. The system should display the program name.
    # 3. Users should see a footer on the left side of the page that includes by order:
    #    logo, Terms and Conditions, Privacy Policy, Disclaimer, Cookie Policy"

    # Sceneario steps
    Scenario: Product landing page is displayed with correct content
        Given user is on the product landing page
        Then the text "Cydeo Secure Checkout" should be displayed
        And the program name should be displayed
        And the footer should be displayed on the left side of the page
        And the footer should display the logo
        And the footer should display "Terms and Conditions" after the logo
        And the footer should display "Privacy Policy" after "Terms and Conditions"
        And the footer should display "Disclaimer" after "Privacy Policy"
        And the footer should display "Cookie Policy" after "Disclaimer"
