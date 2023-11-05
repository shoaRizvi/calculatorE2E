Feature: Different functions of the calculator

    As a user I should be able to perform basic functions of the calculator
    Scenario: As a user, I should be able to see the title on the page
        Given I successfully browse to the application
        Then I should see the title of the page 'Simple Calculator'

    Scenario: Addition
        Given User is on the Simple Calculator page
        When User enters '5'
        And User enters operator '+'
        And User adds '3'
        And User clicks calculate
        Then Result should be '8.0'

    Scenario: Subtraction
        Given User is on the Simple Calculator page
        When User enters '5'
        And User enters operator '-'
        And User adds '3'
        And User clicks calculate
        Then Result should be '2.0'

    Scenario: Multiplication
        Given User is on the Simple Calculator page
        When User enters '5'
        And User enters operator '*'
        And User adds '3'
        And User clicks calculate
        Then Result should be '15.0'

    Scenario: Division (invalid operator)
        Given User is on the Simple Calculator page
        When User enters '15'
        And User enters operator '/'
        And User adds '5'
        And User clicks calculate
        Then Result should be 'error; allowed operators are +, -, or *'

    Scenario: Decimal number
        Given User is on the Simple Calculator page
        When User enters '2.3'
        And User enters operator '+'
        And User adds '2.4'
        And User clicks calculate
        Then Result should be '4.699999999999999'

    Scenario: Negative numbers
        Given User is on the Simple Calculator page
        When User enters '-80'
        And User enters operator '+'
        And User adds '-20'
        And User clicks calculate
        Then Result should be '-100.0'

    Scenario: Invalid input
        Given User is on the Simple Calculator page
        When User enters 'num1'
        And User enters operator 'operator'
        And User adds 'num2'
        And User clicks calculate
        Then Result should be 'Invalid input. Please enter valid numbers.'

    Scenario: num1 validation message
        Given User is on the Simple Calculator page

        And User clicks calculate
        Then num1 should show validation error 'Please fill in this field.' when it is empty and calculate button has been clicked

    Scenario: Keyboard Input
        Given User is on the Simple Calculator page
        When User enters '5'
        And User enters operator '*'
        And User adds '5'
        And User presses 'enter' key
        Then Result should be '25.0'

    Scenario: Scientific Notation
        Given User is on the Simple Calculator page
        When User enters '1e6'
        And User enters operator '*'
        And User adds '2e3'
        And User clicks calculate
        Then Result should be '2000000000.0'

    Scenario: Large numbers
        Given User is on the Simple Calculator page
        When User enters '999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999'
        And User enters operator '*'
        And User adds '999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999'
        And User clicks calculate
        Then Result should be 'inf'