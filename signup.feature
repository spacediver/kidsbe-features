Feature: Parent signup 

    As a parent
    I want to signup to app
    So that I may use the app

    Scenario: A parent Peter may signup

        Given Peter never used app before
        When  Peter signs up on his device
        Then  He sees that he may use app on his device

    Scenario: Duplicate signup

        Given Peter is alredy signed up
        When  Peter tries to signup on his device
        Then  He sees that he is already registered 
        And   He sees how to restore his access

