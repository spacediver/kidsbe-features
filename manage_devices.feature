Feature: Parent may manage devices

    As a parent
    I want to manage devices 
    So that I exert parental control over my children

    Background: 
        Given user Peter is signed up
        And Peter is logged in from his device

    Scenario: Listing devices (no devices)
        Given Partick has no devices
        When  Peter asks to see his devices
        Then  He sees empty device list
        And   He sees how to add new device

    Scenario: Adding new device (1)
        When  Peter asks to add new device
        Then  He is asked for details of new device

    Scenario: Adding new device (2)
        Given Peter is asked for details of new device
        When  Peter submits the following details
            | name | age | type |
            | Carl | 13  | ios  |
        Then  He sees that device is added successfully
        And   He sees Carl's device in the list

    Scenario: Peter may delete device
        Given Peter sees device list
        And   He sees Carl's device in the list
        When  Peter asks to delete Carl's device
        Then  He sees that Carl's device is deleted successfully
        And   Peter no longer sees Carl's device is the list

    Scenario: Peter may update the device details (1)
        Given Peter sees Carl's device and its details
        When  Peter asks to update Carl's device details
        Then  He is asked how to update device details

    Scenario: Peter may update the device details (2)
        Given Peter is asked how to update Carl's device details
        When  Peter provides updated device details and asks to save these
        Then  He sees that Carl's device details is saved successfully
        And   He sees Carl's device and details as updated

