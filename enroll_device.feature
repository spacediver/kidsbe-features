Feature: Parent may enroll device

    Background: 
        Given that user Patrick is registered as 
            | email             | password |
            | patrick@gmail.com | password |
        And Patrick has the following devices
            | name | age | uuid | type | enrolled |
            | Carl | 13  | 1    | ios  | false    |
        And Patrick is logged in on his device

    Scenario: A parent Patrick may enroll single device
        Given Carl's device has
            | enrolled | enroll_pending |
            | false    | false          |

        When Patrick chooses to enroll Carl's device
        Then He sees that Carl's device has
            | enrolled | enroll_pending |
            | false    | true           |

        When (on Carl's device) Patrick logs in
        Then He sees a device being enrolled
            | name | age |
            | Carl | 13  |

        When (on Carl's device) Patrick chooses to complete enroll
        Then He sees that enroll is completed
        And He is no longer logged in on this device
        And Carl's device is connected

        When Patrick looks up device list
        Then He sees device list as
            | name | age | uuid | type | enrolled | enroll_pending |
            | Carl | 13  | 1    | ios  | true     | false          |
