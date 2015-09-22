Feature: Parent login

    As a parent
    I want to be able to login to app
    So that I can use app securely with my identity

    Background:
        Given Parent Peter is signed up 
        And   Peter is not logged in on his device

    Scenario: Peter may login
        When  Peter submits his credentials 
        Then  He sees that his is logged in

    Scenario: Invalid login
        When  Peter submits invalid credentials
        Then  He sees that his has mistaken
        And   He sees how to restore his access

