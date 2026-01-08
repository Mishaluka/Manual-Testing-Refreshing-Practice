@sep17

Feature: View payment plan options in Step 2


    As a customer, I should be able to see payment plan options in Step 2.


    ### Acceptance Criteria
    # 1. Upfront payment:
    # 1.1 There should be only one upfront price
    # 1.2 Text should be Upfront  (first row) and $ <upfont_price> pay once (second row)"

    # 2. Installment plans:
    # 2.1 There must be total <num> Payment Plans
    # 2.2 There can be <number_of_installments> installments
    # 2.3  If there are installments, then the text should be <number_of_installments> Installments (first row) and $ <monthly_price> per month (second row)
    # 2.4 Installment plans should be unique"


    Background:
        Given user is on the Payment Plan step 2 page

    @sep17-01
    Scenario: Upfront payment option is displayed correctly
        Then exactly one upfront payment option should be displayed
        And the upfront payment option should display "Upfront" as the title
        And the upfront payment option should display a price with "pay once" text


    @sep17-02
    Scenario: Installment payment options are displayed correctly
        Then installment payment options should be displayed
        And each installment option should display the number of installments
        And each installment option should display a monthly price with "per month" text


    @sep17-03
    Scenario: Correct total number of payment plans is displayed
        Then the total number of payment plan options should match the expected count


    @sep17-04
    Scenario: Installment payment plans are unique
        Then each installment payment plan should have a unique number of installments
        And each installment payment plan should have a unique monthly price
