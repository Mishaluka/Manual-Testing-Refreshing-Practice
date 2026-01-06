@sep09

Feature: Display the product information

    As a customer, I should be able to see the product information.


    ### Acceptance Criteria

    # 1.The product name should be displayed on the information card.
    # 2. The product name on the information card matches the product name on the left side of the screen.
    # 3. The price of the product should be displayed.
    # 4. The text indicating a flexible payment plan should be available and displayed.
    # 5. The program start date should be displayed.
    # 6. The return policy and the final date for returns should be displayed.

    Background:
        Given user is on the Start Application step 1 page

    # Sceneario steps:

    @sep09-1
    Scenario: Display the product information
        Then the product name is displayed on the information card
        And the product name on the information card matches the product name on the left side of the screen
        And the price of the product is displayed
        And the text indicating a flexible payment plan is available and displayed
        And the program start date is displayed
        And the return policy and the final date for returns are displayed
