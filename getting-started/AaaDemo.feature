@testID
Feature: Feature name

    Feature Description

    # Sceneario is a test cases, that mesure by the Acceptance Criteria
    # Use a # key to give as a command line argument to the test, comments

    Background: For the setup steps of Feature
        Given for the pre-required steps
        And for the adiitional pre-required steps of Background




    Scenario: Scenario name
        # Test Steps:
        Given Given context, prerequisites condition, step of Scenario
        # Also can be other Given for the aditional contesxt, but we use And in most cases
        And And additional context
        # Also will need to add When for the aditional contesxt, but we use And in most cases
        When When for action step of Scenario
        # Also will need to add When for the aditional contesxt, but we use And in most cases
        And And additional context
        Then Then expected outcome, for validation step to verify outcome of Scenario
        # Also will need to add Then for the aditional contesxt, but we use And in most cases
        And And additional context


    Scenario Outline: Scenario name with parameters

        Given Given context
        When When action with parameters